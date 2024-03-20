import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:vw/vw.dart';

class BankPromotion extends StatelessWidget {
  const BankPromotion({
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
      child: VWRow(
        verticalAlignment: CrossAxisAlignment.center,
        gap: 20,
        children: [
          Icon(
            size: 40,
            FluentIcons.star_20_regular,
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
    );
  }
}
