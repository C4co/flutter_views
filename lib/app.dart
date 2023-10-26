import 'package:flutter/material.dart';
import 'imports/app.dart';

class ObserverUtils {
  static final RouteObserver<ModalRoute> routeObserver =
      RouteObserver<ModalRoute>();
}

class App extends StatelessWidget {
  const App({super.key});

  ThemeData showTheme(String theme) {
    switch (theme) {
      case 'defaultTheme':
        return defaultTheme();
      case 'authTheme':
        return authTheme();
      case 'buyerProfileTheme':
        return buyerProfileTheme();
      case 'cryptoDashboardTheme':
        return cryptoDashboardTheme();
      default:
        return defaultTheme();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
      valueListenable: themeGlobal.theme,
      builder: (BuildContext context, String value, child) {
        return MaterialApp(
          theme: showTheme(value),
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
          routes: {
            '/auth': (context) => const AuthPage(),
            '/buyer_profile': (context) => const BuyerProfilePage(),
            '/crypto_dashboard': (context) => const CryptoDashboardPage(),
          },
          navigatorObservers: [ObserverUtils.routeObserver],
        );
      },
    );
  }
}
