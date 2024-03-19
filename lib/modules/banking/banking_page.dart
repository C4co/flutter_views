import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_starter/modules/banking/components/bank_activities.dart';
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

    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: VWColumn(
          gap: 10,
          children: [
            const BankPanel(),
            VWColumn(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              gap: 10,
              children: [
                const BankServices(),
                const BankCard(),
                VWBox(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.green[200],
                  child: VWRow(
                    verticalAlignment: CrossAxisAlignment.center,
                    gap: 20,
                    children: [
                      Icon(
                        size: 40,
                        FluentIcons.star_20_filled,
                        color: Colors.green[900],
                      ),
                      const VWColumn(
                        gap: 5,
                        children: [
                          Text(
                            'Promotion',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Get 10% cashback on your first transaction',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const BankCrypto(),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BankActivities(),
    );
  }
}
