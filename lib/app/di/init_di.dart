import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'init_di.config.dart';

final locator = GetIt.instance;

@InjectableInit(
  initializerName: r'$initDi',
  preferRelativeImports: true,
  asExtension: false,
)
void initDi(String env) => $initDi(locator, environment: env);
