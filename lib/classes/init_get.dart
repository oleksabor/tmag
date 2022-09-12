import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tmag/classes/init_get.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
  //generateForDir: ['classes'],
)
void configureDependencies() => $initGetIt(getIt);

// flutter packages pub run build_runner build   --delete-conflicting-outputs