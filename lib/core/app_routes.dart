// app_routes.dart
enum AppRoute {
  splashScreen(path: '/splash', name: 'splash_screen'),
  calendar(path: '/calendar', name: 'calendar'),
  news(path: '/news', name: 'news'),
  contact(path: '/contact', name: 'contact'),
  info(path: '/info', name: 'info'),
  lexicon(path: '/lexicon', name: 'lexicon');

  final String path;
  final String name;

  const AppRoute({required this.path, required this.name});

  bool matches(String currentUrl) {
    if (!path.contains(':')) {
      return path ==
          currentUrl; // Correspondance exacte pour les routes simples
    }
    // Gère dynamiquement les routes avec paramètres (comme :email)
    final basePath = path.split(':').first;
    return currentUrl.startsWith(basePath);
  }
}
