// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../feature/auth/data/repository/auth_repository.dart' as _i3;
import '../../feature/auth/domain/auth_Interactor.dart' as _i9;
import '../../feature/auth/presentation/bloc/auth_bloc.dart' as _i11;
import '../../feature/home/data/repository/home_repository.dart' as _i7;
import '../../feature/home/domain/home_Interactor.dart' as _i6;
import '../../feature/home/presentation/bloc/home_bloc.dart' as _i5;
import '../../feature/settings/data/repository/settings_repository.dart' as _i8;
import '../../feature/settings/domain/settings_Interactor.dart' as _i10;
import '../dio/dio_dettings.dart' as _i4;
import 'app_module.dart' as _i12;

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
  gh.singleton<_i3.AuthRepository>(_i3.AuthRepositoryImpl());
  gh.singleton<_i4.DioSettings>(_i4.DioSettings());
  gh.factory<_i5.HomeBloc>(() => _i5.HomeBloc(get<_i6.HomeInteractor>()));
  gh.singleton<_i7.HomeRepository>(_i7.HomeRepositoryImpl());
  gh.singleton<_i8.SettingsRepository>(_i8.SettingsRepositoryImpl());
  gh.singleton<String>(
    appModule.baseUrlDpProd,
    instanceName: 'dpBaseUrl',
    registerFor: {_prod},
  );
  gh.singleton<_i9.AuthInteractor>(
      _i9.AuthInteractorImpl(get<_i3.AuthRepository>()));
  gh.singleton<_i10.SettingsInteractor>(
      _i10.SettingsInteractorImpl(get<_i8.SettingsRepository>()));
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(get<_i9.AuthInteractor>()));
  return get;
}

class _$AppModule extends _i12.AppModule {}
