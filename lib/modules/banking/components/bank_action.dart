import 'package:flutter/material.dart';
import 'package:vw/vw.dart';

class BankAction extends StatelessWidget {
  final IconData icon;
  final String label;

  const BankAction({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return VWBox(
      width: 80,
      child: VWColumn(
        horizontalAlignment: CrossAxisAlignment.center,
        gap: 5,
        children: [
          IconButton.filledTonal(
            padding: const EdgeInsets.all(15),
            iconSize: 25,
            onPressed: () {},
            icon: Icon(
              icon,
              color: Colors.green[900],
            ),
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              height: 1.1,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 16, 57, 19),
            ),
          )
        ],
      ),
    );
  }
}
