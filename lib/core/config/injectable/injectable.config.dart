// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../feature/auth/data/repository/auth_repository.dart' as _i6;
import '../../../feature/auth/domain/auth_interactor.dart' as _i8;
import '../../../feature/auth/presentation/bloc/auth_bloc.dart' as _i10;
import '../../../feature/home/data/repository/home_repository.dart' as _i5;
import '../../../feature/home/domain/home_interactor.dart' as _i7;
import '../../../feature/home/presentation/bloc/home_bloc.dart' as _i9;
import '../app_router/guards.dart' as _i3;
import '../dio/dio_generator.dart' as _i4;
import 'app_module.dart' as _i11;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.singleton<_i3.AuthGuard>(_i3.AuthGuard());
  gh.singleton<_i4.DioGenerator>(_i4.DioGenerator());
  gh.singleton<_i5.HomeRepository>(
      _i5.HomeRepositoryImpl(get<_i4.DioGenerator>()));
  gh.singleton<String>(
    appModule.baseUrlDpProd,
    instanceName: 'dpBaseUrl',
    registerFor: {_prod},
  );
  gh.singleton<_i6.AuthRepository>(
      _i6.AuthRepositoryImpl(get<_i4.DioGenerator>()));
  gh.singleton<_i7.HomeInteractor>(
      _i7.HomeInteractor(get<_i5.HomeRepository>()));
  gh.singleton<_i8.AuthInteractor>(
      _i8.AuthInteractor(get<_i6.AuthRepository>()));
  gh.factory<_i9.HomeBloc>(() => _i9.HomeBloc(get<_i7.HomeInteractor>()));
  gh.factory<_i10.AuthBloc>(() => _i10.AuthBloc(get<_i8.AuthInteractor>()));
  return get;
}

class _$AppModule extends _i11.AppModule {}
