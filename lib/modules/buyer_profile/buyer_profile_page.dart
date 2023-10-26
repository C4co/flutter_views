import 'package:flutter/material.dart';
import '/imports/app.dart';

class BuyerProfilePage extends StatefulWidget {
  const BuyerProfilePage({super.key});

  @override
  State<BuyerProfilePage> createState() => _BuyerProfilePageState();
}

class _BuyerProfilePageState extends State<BuyerProfilePage> {
  bool isLoading = true;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      themeGlobal.setTheme('buyerProfileTheme');
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
                    child: Image.asset(
                      './lib/modules/buyer_profile/assets/profile.jpg',
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
                          'janne@gmail.com',
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
                            size: 20,
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
                            size: 20,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'WALLET:',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '\$ 12.360',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.grey[300],
                      margin: const EdgeInsets.symmetric(vertical: 10),
                    ),
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
                            fontSize: 22,
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

            //promotion
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 205, 0, 0),
                    Color.fromARGB(255, 240, 189, 23),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '🟡 PROMOTION:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            letterSpacing: 3,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Free shipping for orders over \$ 100',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  FilledButton(
                    onPressed: () {},
                    child: const Text(
                      "Shop Now",
                      style: TextStyle(fontSize: 12),
                    ),
                  )
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
