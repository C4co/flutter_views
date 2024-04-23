import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import './bank_action.dart';
import 'package:vw/vw.dart';

class BankServices extends StatelessWidget {
  const BankServices({
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
        horizontalAlignment: CrossAxisAlignment.center,
        gap: 15,
        children: [
          Text(
            "SERVICES",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              letterSpacing: 5,
            ),
            textAlign: TextAlign.center,
          ),
          VWRow(
            horizontalAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BankAction(
                icon: FluentIcons.payment_16_regular,
                label: "Credit",
              ),
              BankAction(
                icon: FluentIcons.money_16_regular,
                label: "E-Payment",
              ),
              BankAction(
                icon: FluentIcons.building_retail_money_20_regular,
                label: "ATM",
              ),
              BankAction(
                icon: FluentIcons.reading_mode_mobile_20_regular,
                label: "Planing",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
