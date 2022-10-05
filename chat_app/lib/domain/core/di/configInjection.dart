import 'package:chat_app/domain/core/di/configInjection.config.dart';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@injectableInit
GetIt getIt = GetIt.instance;

Future<void> configInjection() async {
  await $initGetIt(getIt, environment: Environment.prod);
}
