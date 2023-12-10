// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../feature/auth/data/repository/auth_repository.dart' as _i3;
import '../../../feature/auth/domain/auth_Interactor.dart' as _i6;
import '../../../feature/auth/presentation/bloc/auth_bloc.dart' as _i9;
import '../../../feature/home/data/repository/online_doctor_repository.dart'
    as _i4;
import '../../../feature/home/domain/online_doctor_Interactor.dart' as _i7;
import '../../../feature/home/presentation/bloc/online_doctor_bloc.dart'
    as _i10;
import '../../../feature/settings/data/repository/settings_repository.dart'
    as _i5;
import '../../../feature/settings/domain/settings_Interactor.dart' as _i8;
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
  gh.singleton<_i3.AuthRepository>(_i3.AuthRepositoryImpl());
  gh.singleton<_i4.OnlineDoctorRepository>(_i4.OnlineDoctorRepositoryImpl());
  gh.singleton<_i5.SettingsRepository>(_i5.SettingsRepositoryImpl());
  gh.singleton<String>(
    appModule.baseUrlDpProd,
    instanceName: 'dpBaseUrl',
    registerFor: {_prod},
  );
  gh.singleton<_i6.AuthInteractor>(
      _i6.AuthInteractorImpl(get<_i3.AuthRepository>()));
  gh.singleton<_i7.OnlineDoctorInteractor>(
      _i7.OnlineDoctorInteractorImpl(get<_i4.OnlineDoctorRepository>()));
  gh.singleton<_i8.SettingsInteractor>(
      _i8.SettingsInteractorImpl(get<_i5.SettingsRepository>()));
  gh.factory<_i9.AuthBloc>(() => _i9.AuthBloc(get<_i6.AuthInteractor>()));
  gh.factory<_i10.OnlineDoctorBloc>(
      () => _i10.OnlineDoctorBloc(get<_i7.OnlineDoctorInteractor>()));
  return get;
}

class _$AppModule extends _i11.AppModule {}
