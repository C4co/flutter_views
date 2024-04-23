import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/bank_activities.dart';
import 'components/bank_promotion.dart';
import 'components/bank_panel.dart';
import 'components/bank_card.dart';
import 'components/bank_service.dart';
import 'components/bank_crypto.dart';
import 'package:vw/vw.dart';
import '/imports/app.dart';

class BankingPage extends StatefulWidget {
  const BankingPage({super.key});

  @override
  State<BankingPage> createState() => _BankingPageState();
}

class _BankingPageState extends State<BankingPage> {
  bool isLoading = true;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      themeGlobal.setTheme('bankingTheme');
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
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.green[200],
      ),
    );

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

    return const Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: VWColumn(
          gap: 5,
          children: [
            BankPanel(),
            VWColumn(
              padding: EdgeInsets.symmetric(horizontal: 5),
              gap: 5,
              children: [
                BankServices(),
                BankCard(),
                BankCrypto(),
                BankPromotion(),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BankActivities(),
    );
  }
}
