import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import './bank_action.dart';
import 'package:vw/vw.dart';

class BankCrypto extends StatelessWidget {
  const BankCrypto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return VWBox(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
      color: Colors.green[200],
      child: const VWColumn(
        gap: 10,
        children: [
          VWRow(
            horizontalAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BankAction(
                icon: FluentIcons.cart_16_regular,
                label: "Buy Crypto",
              ),
              BankAction(
                icon: FluentIcons.book_coins_20_regular,
                label: "Sell Crypto",
              ),
              BankAction(
                icon: FluentIcons.person_money_20_regular,
                label: "Payment",
              ),
              BankAction(
                icon: FluentIcons.receipt_money_16_regular,
                label: "Smart Contracts",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
