import 'package:flutter/material.dart';
import '/imports/app.dart';
import '../../app.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with RouteAware {
  bool isLoading = false;

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
    setState(() {
      isLoading = true;
    });

    Future.delayed(const Duration(milliseconds: 600), () {
      setState(() {
        isLoading = false;
      });
    });

    themeGlobal.setTheme('defaultTheme');
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: CircularProgressIndicator(
            strokeWidth: 2,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'FLUTTER VIEWS',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
          ),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text(
              'Authentication',
              style: TextStyle(fontSize: 18),
            ),
            leading: const Icon(Icons.login),
            subtitle: const Text('Full Material Design: login, register, recover'),
            onTap: () {
              Navigator.pushNamed(context, '/auth');
            },
          ),
          ListTile(
            title: const Text(
              'Buyer profile',
              style: TextStyle(fontSize: 18),
            ),
            leading: const Icon(Icons.person_2_outlined),
            subtitle: const Text('Private profile'),
            onTap: () {
              Navigator.pushNamed(context, '/buyer_profile');
            },
          ),
          ListTile(
            title: const Text(
              'Crypto dashboard',
              style: TextStyle(fontSize: 18),
            ),
            leading: const Icon(Icons.dashboard_outlined),
            subtitle: const Text('List coins and details'),
            onTap: () {
              Navigator.pushNamed(context, '/crypto_dashboard');
            },
          ),
          ListTile(
            title: const Text(
              'Banking',
              style: TextStyle(fontSize: 18),
            ),
            leading: const Icon(Icons.account_balance_outlined),
            subtitle: const Text('Banking theme'),
            onTap: () {
              Navigator.pushNamed(context, '/banking');
            },
          ),
        ],
      ),
    );
  }
}
