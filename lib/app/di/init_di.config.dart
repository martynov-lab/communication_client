// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/dio_container.dart' as _i4;
import '../data/main_app_config.dart' as _i3;

const String _dev = 'dev';
const String _prod = 'prod';
const String _test = 'test';
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
  gh.singleton<_i3.DevAppConfig>(
    _i3.DevAppConfig(),
    registerFor: {_dev},
  );
  gh.singleton<_i4.DioContainer>(_i4.DioContainer(get<dynamic>()));
  gh.singleton<_i3.ProdAppConfig>(
    _i3.ProdAppConfig(),
    registerFor: {_prod},
  );
  gh.singleton<_i3.TestAppConfig>(
    _i3.TestAppConfig(),
    registerFor: {_test},
  );
  return get;
}
