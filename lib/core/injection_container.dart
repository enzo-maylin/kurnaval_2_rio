import 'package:get_it/get_it.dart';
import 'package:kurnaval_2_rio/core/services/app_messenger.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// On crée une instance globale de GetIt
final getIt = GetIt.instance;

void setupDependencies() {
  // --- SERVICES ---
  getIt.registerLazySingleton<FlutterSecureStorage>(
    () => FlutterSecureStorage(),
  );
  getIt.registerLazySingleton<AppMessenger>(() => AppMessenger());
}
