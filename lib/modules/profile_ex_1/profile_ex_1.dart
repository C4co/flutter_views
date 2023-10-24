import 'package:flutter/material.dart';
import '/imports/app.dart';

class ProfileEx1 extends StatefulWidget {
  const ProfileEx1({super.key});

  @override
  State<ProfileEx1> createState() => _ProfileEx1State();
}

class _ProfileEx1State extends State<ProfileEx1> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      themeGlobal.setTheme('profileEx1Theme');
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'.toUpperCase()),
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    //network image
                    child: Image.network(
                      'https://userstock.io/data/wp-content/uploads/2020/06/women-s-white-and-black-button-up-collared-shirt-774909-2-1024x1024.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),

                  //name
                  const SizedBox(width: 15),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jane Doe',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'UI/UX Designer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.description_outlined,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        height: 40,
                        width: 40,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //board with wallet and order
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  //border gray
                  border: Border.all(
                    color: Colors.black.withOpacity(0.2),
                    width: 1,
                  ),
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                child: Column(
                  //start
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'WALLET:',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          '\$ 500,000,000',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),

                    // horizontal line
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey[300],
                      margin: const EdgeInsets.symmetric(vertical: 10),
                    ),

                    //order
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'ORDERS:',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '12',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            //list menu
            ListTile(
              onTap: () {},
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 0,
              ),
              leading: const Icon(Icons.favorite_border_outlined),
              title: const Text('Your Favorites'),
              trailing: const Icon(Icons.chevron_right),
            ),

            ListTile(
              onTap: () {},
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 0,
              ),
              leading: const Icon(Icons.grid_view_outlined),
              title: const Text('My Products'),
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
              leading: const Icon(Icons.people_outline_outlined),
              title: const Text('Tell your friends'),
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

            //promotion
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                //border gray
                border: Border.all(
                  color: Colors.black.withOpacity(0.2),
                  width: 1,
                ),
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Column(
                //start
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PROMOTION:',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Free shipping for orders over \$ 100',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 0,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.4),
            width: 1,
          ),
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.upload_outlined),
              label: const Text('Orders'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.assessment_outlined),
              label: const Text('Statistics'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.insert_drive_file_outlined),
              label: const Text('Reports'),
            ),
          ],
        ),
      ),
    );
  }
}
