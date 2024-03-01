import 'package:flutter/material.dart';

class LoadingOverlay {
  static OverlayEntry? _instanceOfEntry;

  static void showLoadingOverlay(BuildContext context) {
    WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
    removeLoadingOverlay();

    _instanceOfEntry = OverlayEntry(
      builder: (context) => Positioned(
        left: 0,
        top: 0,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: Color(0x0f000000)),
          child: const Center(
            child: SizedBox(
              width: 75,
              height: 75,
              child: Card(
                child: Center(child: CircularProgressIndicator.adaptive()),
              ),
            ),
          ),
        ),
      ),
    );

    Overlay.of(context).insert(_instanceOfEntry!);
  }

  static void removeLoadingOverlay() {
    if (_instanceOfEntry != null) {
      _instanceOfEntry?.remove();
      _instanceOfEntry = null;
    }
  }
}
