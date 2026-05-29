# kurnaval_2_rio

Ce projet utilise des points d'entrée séparés pour gérer les environnements de développement et de production via des fichiers `.env`.

## ⚙️ Prérequis

Avant de lancer le projet, assurez-vous d'avoir les fichiers d'environnement dans le dossier `env/` à la racine :
- `env/.env.dev` (pour le développement)
- `env/.env.prod` (pour la production)

*(Note : Ces fichiers ne sont pas versionnés sur Git pour des raisons de sécurité).*

--

Export de la spécification OpenAPI depuis Symfony
La première phase consiste à générer le contrat d'API côté backend. Depuis le dossier racine du projet Symfony, exécutez la commande d'exportation.

Bash
php bin/console api:openapi:export -o var/openapi.yaml --yaml
Ajout des dépendances dans le projet Flutter
Le code généré requiert plusieurs bibliothèques pour fonctionner correctement. Depuis le dossier racine de l'application Flutter, ajoutez d'abord les paquets standards pour les requêtes HTTP et le traitement JSON.

Bash
flutter pub add dio retrofit json_annotation
Ajoutez ensuite les paquets de développement nécessaires à la génération du code de l'API.

Bash
flutter pub add --dev swagger_parser build_runner retrofit_generator json_serializable
Configuration du parseur Swagger
Créez un fichier swagger_parser.yaml à la racine du projet Flutter. Insérez le bloc de configuration suivant. Le chemin vers le fichier OpenAPI devra être ajusté selon l'environnement local du développeur reprenant le projet.

YAML
swagger_parser:
  schema_path: C:\xampp\htdocs\kurnaval_2_rio_web\var\openapi.yaml
  output_directory: lib/api_client
  language: dart
  json_serializer: json_serializable
  client_postfix: Client
Génération du client et des modèles Dart
Une fois la configuration prête, lancez la commande principale de l'outil pour lire le fichier et construire l'arborescence des fichiers Dart.

Bash
dart run swagger_parser
Pour finaliser le processus, compilez les sérialiseurs JSON afin de rendre les données exploitables par l'application.

Bash
dart run build_runner build --delete-conflicting-outputs