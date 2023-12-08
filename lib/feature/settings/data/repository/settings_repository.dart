import 'package:injectable/injectable.dart';

abstract class SettingsRepository {
  Future<String> exampleFuncRepo();
}

@Singleton(as: SettingsRepository)
class SettingsRepositoryImpl implements SettingsRepository {
  SettingsRepositoryImpl();

  final String _getList = ' API ';

  @override
  Future<String> exampleFuncRepo() async {
    // final response = await _dioGenerator.dio.get(_getList);
    // return SettingsModel.fromJson(response.data).data;
    return '';
  }
}
