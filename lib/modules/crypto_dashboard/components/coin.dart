import 'package:flutter/material.dart';

class Coin extends StatelessWidget {
  final String name;
  final String abreviation;
  final String symbol;
  final String price;
  final String profit;
  final String percent;
  final bool isPositive;

  const Coin({
    super.key,
    this.name = "Bitcoin",
    this.abreviation = "BTC",
    this.symbol = "./lib/modules/dashboard_01/assets/BTC.png",
    this.price = "12,325,000",
    this.profit = "13,002",
    this.percent = "+ 1.52%",
    this.isPositive = true,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      contentPadding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      leading: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: const BorderRadius.all(Radius.circular(100)),
          border: Border.fromBorderSide(
            BorderSide(
              color: Colors.yellow.withOpacity(0.5),
              width: 1,
            ),
          ),
        ),
        //image icon
        child: Image.asset(
          symbol,
          width: 45,
          height: 45,
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(
          color: Colors.yellow,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
      subtitle: Text(
        abreviation,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      ),
      trailing: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 10,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                price,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                profit,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Container(
            width: 80,
            height: 25,
            decoration: BoxDecoration(
              color: isPositive ? Colors.green : Colors.red,
              borderRadius: const BorderRadius.all(Radius.circular(100)),
            ),
            child: Center(
              child: Text(
                percent,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
