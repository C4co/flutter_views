import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
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
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      hintText: 'Enter your name',
                      suffixIcon: Icon(Icons.person_outline),
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
      },
      child: const Text('Create an account'),
    );
  }
}
