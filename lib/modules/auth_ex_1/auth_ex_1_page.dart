import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '/imports/app.dart';

class AuthEx1 extends StatefulWidget {
  const AuthEx1({super.key});

  @override
  State<AuthEx1> createState() => _AuthEx1State();
}

class _AuthEx1State extends State<AuthEx1> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      themeGlobal.setTheme('authEx1theme');
    });

    super.initState();
  }

  registerForm() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height - 50,
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Create a new account")
                    ],
                  ),
                  //clone button
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
              const SizedBox(height: 10),
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
              TextFormField(
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: const InputDecoration(
                  labelText: 'Confirm Password',
                  hintText: 'Enter your password',
                  suffixIcon: Icon(Icons.lock_outline),
                ),
              ),
              const SizedBox(height: 20),
              FilledButton(
                onPressed: () {},
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Register')),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  recoverPassword() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height - 50,
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Recover Password",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Enter your email to recover your password")
                    ],
                  ),
                  //clone button
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  suffixIcon: Icon(Icons.mail_outlined),
                ),
              ),
              const SizedBox(height: 20),
              FilledButton(
                onPressed: () {},
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Recover')),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
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
                        image: AssetImage(
                            './lib/modules/auth_ex_1/assets/logo.png'),
                        width: 100,
                        height: 100,
                      ),

                      const SizedBox(height: 20),

                      const Text(
                        "Welcome to Flutter Views",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
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
                      Row(
                        children: [
                          const Text('Forgot your password?'),
                          TextButton(
                            onPressed: () {
                              recoverPassword();
                            },
                            child: const Text('Recover'),
                          ),
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
                      Center(
                        child: TextButton(
                          onPressed: () {
                            registerForm();
                          },
                          child: const Text('Create an account'),
                        ),
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
