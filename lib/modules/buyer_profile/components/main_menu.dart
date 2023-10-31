import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: Column(
        children: [
          ListTile(
            onTap: () {},
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 0,
            ),
            leading: const Icon(Icons.favorite_border_outlined),
            title: const Text('Favorites'),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () {},
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 0,
            ),
            leading: const Icon(Icons.list),
            title: const Text('Wishlist'),
            subtitle: Text(
              '12 items',
              style: TextStyle(
                color: Colors.blue.shade800,
              ),
            ),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () {},
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 0,
            ),
            leading: const Icon(Icons.wallet_outlined),
            title: const Text('Payment'),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () {},
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 0,
            ),
            leading: const Icon(Icons.pin_drop_outlined),
            title: const Text('Addresses'),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () {},
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 0,
            ),
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Settings'),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () {},
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 0,
            ),
            leading: const Icon(Icons.help_outline_outlined),
            title: const Text('Help'),
            trailing: const Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}
