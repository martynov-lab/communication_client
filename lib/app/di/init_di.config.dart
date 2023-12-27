// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../feature/auth/data/firebase_auth_repository.dart' as _i6;
import '../../feature/auth/data/mock_auth_repository.dart' as _i8;
import '../../feature/auth/data/network_auth_repository.dart' as _i17;
import '../../feature/auth/domain/auth_repository.dart' as _i5;
import '../../feature/auth/domain/auth_state/auth_bloc.dart' as _i16;
import '../../feature/main/data/firebase_signaling_service.dart' as _i12;
import '../../feature/main/data/mock_signaling_service.dart' as _i11;
import '../../feature/main/data/signaling_service.dart' as _i13;
import '../../feature/main/domain/repository/video_room_repository.dart'
    as _i10;
import '../../feature/main/domain/state/bloc_deep_link.dart' as _i9;
import '../../feature/post/data/network_post_service.dart' as _i19;
import '../../feature/post/domain/repository/post_repository.dart' as _i18;
import '../data/dio_app_api.dart' as _i15;
import '../data/main_app_config.dart' as _i4;
import '../domain/app_api.dart' as _i14;
import '../domain/app_config.dart' as _i3;

const String _prod = 'prod';
const String _dev = 'dev';
const String _test = 'test';

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initDi(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.AppConfig>(
    _i4.ProdAppConfig(),
    registerFor: {_prod},
  );
  gh.singleton<_i3.AppConfig>(
    _i4.DevAppConfig(),
    registerFor: {_dev},
  );
  gh.singleton<_i3.AppConfig>(
    _i4.TestAppConfig(),
    registerFor: {_test},
  );
  gh.factory<_i5.AuthRepository>(
    () => _i6.FirebaseAuthRepository(gh<_i7.FirebaseAuth>()),
    registerFor: {_dev},
  );
  gh.factory<_i5.AuthRepository>(
    () => _i8.MockAuthRepository(),
    registerFor: {_test},
  );
  gh.factory<_i9.DeepLinkBloc>(() => _i9.DeepLinkBloc());
  gh.factory<_i10.VideoRoomRepository>(
    () => _i11.MockSignalingServise(),
    registerFor: {_test},
  );
  gh.factory<_i10.VideoRoomRepository>(
    () => _i12.FirebaseSignalingService(),
    registerFor: {_dev},
  );
  gh.factory<_i10.VideoRoomRepository>(
    () => _i13.SignalingServise(),
    registerFor: {_prod},
  );
  gh.singleton<_i14.AppApi>(_i15.DioAppApi(gh<_i3.AppConfig>()));
  gh.lazySingleton<_i16.AuthBloc>(
      () => _i16.AuthBloc(gh<_i5.AuthRepository>()));
  gh.factory<_i5.AuthRepository>(
    () => _i17.NetWorkAuthRepository(gh<_i14.AppApi>()),
    registerFor: {_prod},
  );
  gh.factory<_i18.PostRepository>(
    () => _i19.NetworkPostService(gh<_i14.AppApi>()),
    registerFor: {
      _prod,
      _dev,
    },
  );
  return getIt;
}
