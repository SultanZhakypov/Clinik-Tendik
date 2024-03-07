import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';

class PdfViewPage extends StatefulWidget {
  const PdfViewPage({super.key, required this.pdfPath});

  final String pdfPath;

  @override
  State<PdfViewPage> createState() => PdfViewPageState();
}

class PdfViewPageState extends State<PdfViewPage> {
  String? _localFilePath;

  @override
  void initState() {
    super.initState();
    _initPDF();
  }

  _initPDF() async {
    final filename =
        widget.pdfPath.substring(widget.pdfPath.lastIndexOf("/") + 1);
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$filename');
    if (!await file.exists()) {
      await file.writeAsBytes((await HttpClient()
          .getUrl(Uri.parse(widget.pdfPath))
          .then((HttpClientRequest request) {
        return request.close();
      }).then((HttpClientResponse response) {
        return response.expand((List<int> bytes) => bytes).toList();
      })));
    }
    setState(() {
      _localFilePath = file.path;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PDF Viewer"),
      ),
      body: _localFilePath != null
          ? PDFView(
              filePath: _localFilePath!,
              // or networkPath: pdfUrl, if you want to load PDF from the network
              // if you have both filePath and networkPath, filePath will be used.
              // fitEachPage: true, // this will allow each page to fit in the viewport
              // fitPolicy: FitPolicy.WIDTH, // this will allow the width to fit the viewport
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
