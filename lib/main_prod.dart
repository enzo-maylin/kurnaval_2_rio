import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'app.dart';
import 'package:kurnaval_2_rio/core/injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // On charge le fichier de PROD
  await dotenv.load(fileName: "env/.env.prod");

  setupDependencies();
  runApp(const MyApp());
}
