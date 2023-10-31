import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/imports/app.dart';
import 'components/recover.dart';
import 'components/register.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLoading = true;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      themeGlobal.setTheme('authTheme');
    });

    Future.delayed(const Duration(milliseconds: 600), () {
      setState(() {
        isLoading = false;
      });
    });

    super.initState();
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
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              //center
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //logo image
                      const Image(
                        image: AssetImage('./lib/modules/auth/assets/logo.png'),
                        width: 100,
                        height: 100,
                      ),

                      const SizedBox(height: 20),

                      const Text(
                        "Welcome!",
                        style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Text("Do login to continue"),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter your email',
                          suffixIcon: Icon(Icons.mail_outlined),
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter your password',
                          suffixIcon: Icon(Icons.lock_outline),
                        ),
                      ),
                      const Row(
                        children: [
                          Text('Forgot your password?'),
                          Recover(),
                        ],
                      ),
                      const SizedBox(height: 20),
                      FilledButton(
                        onPressed: () {},
                        child: const SizedBox(
                          width: double.infinity,
                          child: Center(child: Text('Enter')),
                        ),
                      ),
                      const Center(
                        child: Register(),
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          Expanded(child: Divider()),
                          SizedBox(width: 20),
                          Text("Or login with"),
                          SizedBox(width: 20),
                          Expanded(child: Divider()),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            color: Theme.of(context).colorScheme.primary,
                            iconSize: 30,
                            icon: const SizedBox(
                              width: 40,
                              height: 40,
                              child: Center(
                                child: FaIcon(FontAwesomeIcons.facebook),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          IconButton(
                            onPressed: () {},
                            color: Theme.of(context).colorScheme.primary,
                            iconSize: 30,
                            icon: const SizedBox(
                              width: 40,
                              height: 40,
                              child: Center(
                                child: FaIcon(FontAwesomeIcons.google),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          IconButton(
                            onPressed: () {},
                            color: Theme.of(context).colorScheme.primary,
                            iconSize: 30,
                            icon: const SizedBox(
                              width: 40,
                              height: 40,
                              child: Center(
                                child: FaIcon(FontAwesomeIcons.apple),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
