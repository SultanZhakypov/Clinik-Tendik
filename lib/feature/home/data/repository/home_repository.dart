import 'package:injectable/injectable.dart';

abstract class HomeRepository {
  Future<String> exampleFuncRepo();
}

@Singleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl();

  final String _getList = ' API ';

  @override
  Future<String> exampleFuncRepo() async {
    // final response = await _dioGenerator.dio.get(_getList);
    // return HomeModel.fromJson(response.data).data;
    return '';
  }
}
