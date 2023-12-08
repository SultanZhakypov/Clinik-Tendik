import 'package:clinic_tendik/feature/home/data/repository/home_repository.dart';

class HomeInteractor {
  HomeInteractor(this._repository);
  final HomeRepository _repository;

  Future<void> exampleFunc() async {
    try {
      await _repository.exampleFuncRepo();
    } catch (e) {
      rethrow;
    }
  }
}
