import 'package:flutter/material.dart';
import 'imports/app.dart';

class ObserverUtils {
  static final RouteObserver<ModalRoute> routeObserver =
      RouteObserver<ModalRoute>();
}

class App extends StatelessWidget {
  const App({super.key});

  ThemeData showTheme(String t) {
    if (t == 'defaultTheme') {
      return defaultTheme();
    } else if (t == 'authEx1theme') {
      return authEx1theme();
    } else if (t == 'profileEx1Theme') {
      return profileEx1theme();
    } else {
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
            '/auth_ex_1': (context) => const AuthEx1(),
            '/profile_ex_1': (context) => const ProfileEx1(),
          },
          navigatorObservers: [ObserverUtils.routeObserver],
        );
      },
    );
  }
}
