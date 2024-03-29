// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../feature/auth/data/firebase_auth_repository.dart' as _i6;
import '../../feature/auth/data/mock_auth_repository.dart' as _i7;
import '../../feature/auth/data/network_auth_repository.dart' as _i15;
import '../../feature/auth/domain/auth_repository.dart' as _i5;
import '../../feature/chat/data/network_chat_service.dart' as _i17;
import '../../feature/chat/domain/repository/chat_repository.dart' as _i16;
import '../../feature/main/data/firebase_signaling_service.dart' as _i11;
import '../../feature/main/data/mock_signaling_service.dart' as _i10;
import '../../feature/main/data/signaling_service.dart' as _i12;
import '../../feature/main/domain/repository/video_room_repository.dart' as _i9;
import '../../feature/main/domain/state/bloc_deep_link.dart' as _i8;
import '../data/dio_app_api.dart' as _i14;
import '../data/main_app_config.dart' as _i4;
import '../domain/app_api.dart' as _i13;
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
    () => _i6.FirebaseAuthRepository(),
    registerFor: {_dev},
  );
  gh.factory<_i5.AuthRepository>(
    () => _i7.MockAuthRepository(),
    registerFor: {_test},
  );
  gh.factory<_i8.DeepLinkBloc>(() => _i8.DeepLinkBloc());
  gh.factory<_i9.VideoRoomRepository>(
    () => _i10.MockSignalingServise(),
    registerFor: {_test},
  );
  gh.factory<_i9.VideoRoomRepository>(
    () => _i11.FirebaseSignalingService(),
    registerFor: {_dev},
  );
  gh.factory<_i9.VideoRoomRepository>(
    () => _i12.SignalingServise(),
    registerFor: {_prod},
  );
  gh.singleton<_i13.AppApi>(_i14.DioAppApi(gh<_i3.AppConfig>()));
  gh.factory<_i5.AuthRepository>(
    () => _i15.NetWorkAuthRepository(gh<_i13.AppApi>()),
    registerFor: {_prod},
  );
  gh.factory<_i16.ChatRepository>(
    () => _i17.NetworkChatService(gh<_i13.AppApi>()),
    registerFor: {
      _prod,
      _dev,
    },
  );
  return getIt;
}
