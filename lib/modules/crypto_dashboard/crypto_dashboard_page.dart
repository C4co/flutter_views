import 'package:flutter/material.dart';
import '/imports/app.dart';
import './components/main_board.dart';
import 'components/all_coins.dart';
import 'components/coin_lists.dart';
import 'components/promotion_banner.dart';

class CryptoDashboardPage extends StatefulWidget {
  const CryptoDashboardPage({super.key});

  @override
  State<CryptoDashboardPage> createState() => _CryptoDashboardPageState();
}

class _CryptoDashboardPageState extends State<CryptoDashboardPage> {
  final PageController _pageController = PageController();
  int currentPage = 0;
  int currentChip = 0;
  bool isLoading = true;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      themeGlobal.setTheme('cryptoDashboardTheme');
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
        title: const Text('Crypto Dash'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_outlined,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.qr_code,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 20,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MainBoard(),
            SizedBox(
              height: 35,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                children: [
                  ChoiceChip(
                    label: const Text("Favorites"),
                    selected: currentChip == 0,
                    onSelected: (value) {
                      setState(() {
                        currentPage = 0;
                        _pageController.animateToPage(
                          currentPage,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      });
                    },
                  ),
                  const SizedBox(width: 10),
                  ChoiceChip(
                    label: const Text("Popular"),
                    selected: currentChip == 1,
                    onSelected: (value) {
                      setState(() {
                        currentPage = 1;
                        _pageController.animateToPage(
                          currentPage,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      });
                    },
                  ),
                  const SizedBox(width: 10),
                  ChoiceChip(
                    label: const Text("Rising"),
                    selected: currentChip == 2,
                    onSelected: (value) {
                      setState(() {
                        currentPage = 2;
                        _pageController.animateToPage(
                          currentPage,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      });
                    },
                  ),
                  const SizedBox(width: 10),
                  ChoiceChip(
                    label: const Text("Down"),
                    selected: currentChip == 3,
                    onSelected: (value) {
                      setState(() {
                        currentPage = 3;
                        _pageController.animateToPage(
                          currentPage,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              height: 450,
              child: PageView(
                physics: const BouncingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                    currentChip = value;
                  });
                },
                children: const [
                  FavoriteCoins(),
                  PopularCoins(),
                  UpCoins(),
                  DownCoins(),
                ],
              ),
            ),
            const AllCoins(),
            const PromotionBanner(),
            const SizedBox(height: 20)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        selectedItemColor: Theme.of(context).colorScheme.primary,
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: "Wallet",
            icon: Icon(Icons.account_balance_wallet_outlined),
          ),
          BottomNavigationBarItem(
            label: "Activity",
            icon: Icon(Icons.bar_chart_outlined),
          ),
        ],
      ),
    );
  }
}
