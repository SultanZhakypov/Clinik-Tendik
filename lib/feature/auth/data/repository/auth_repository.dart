import 'package:injectable/injectable.dart';

abstract class AuthRepository {
  Future<String> exampleFuncRepo();
}

@Singleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl();

  final String _getList = ' API ';

  @override
  Future<String> exampleFuncRepo() async {
    // final response = await _dioGenerator.dio.get(_getList);
    // return AuthModel.fromJson(response.data).data;
    return '';
  }
}
