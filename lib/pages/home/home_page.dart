import 'package:flutter/material.dart';
import '/imports/app.dart';
import '../../app.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with RouteAware {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ObserverUtils.routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    super.dispose();

    ObserverUtils.routeObserver.unsubscribe(this);
  }

  @override
  void didPopNext() {
    themeGlobal.setTheme('defaultTheme');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Views'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text(
              'Autentication - EX 1',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: const Icon(Icons.login),
            subtitle:
                const Text('Full Material Design: login, register, recover'),
            onTap: () {
              Navigator.pushNamed(context, '/auth_ex_1');
            },
          ),
          ListTile(
            title: const Text(
              'Profile page - EX 1',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: const Icon(Icons.person_2_outlined),
            subtitle: const Text('Private profile'),
            onTap: () {
              Navigator.pushNamed(context, '/profile_ex_1');
            },
          )
        ],
      ),
    );
  }
}
