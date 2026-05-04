import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvConfig {
  // On crée un getter statique pour y accéder facilement de n'importe où
  static String get apiUrl {
    // Si la clé n'existe pas, on lève une erreur explicite pour le voir direct en dev
    return dotenv.env['API_URL'] ??
        (throw Exception('API_URL non trouvée dans le fichier .env'));
  }
}
