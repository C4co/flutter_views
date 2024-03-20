import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:vw/vw.dart';

class BankActivities extends StatelessWidget {
  const BankActivities({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return VWBox(
      gradient: LinearGradient(
        colors: [
          Colors.green.shade900,
          Colors.green.shade600,
        ],
      ),
      height: 50,
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          barrierColor: Colors.black.withOpacity(0),
          context: context,
          builder: (context) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.green.shade900,
                elevation: 0,
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    FluentIcons.dismiss_12_regular,
                    color: Colors.white,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FluentIcons.filter_20_regular,
                      color: Colors.white,
                    ),
                  ),
                ],
                title: const Text(
                  'Recent activities',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              extendBody: true,
              extendBodyBehindAppBar: true,
              backgroundColor: Colors.transparent,
              body: VWBox(
                blurEffect: 20,
                color: Colors.green.shade900.withOpacity(0.8),
                child: Center(
                  child: ListView(
                    children: const [
                      ActivityItem(
                        title: 'Received',
                        price: '\$200',
                        isPositive: true,
                        icon: FluentIcons.arrow_down_20_regular,
                        date: '13/06/2024 - 15:34:34',
                      ),
                      ActivityItem(
                        title: 'Amazon',
                        price: '-\$100',
                        icon: FluentIcons.money_20_regular,
                        date: '18/07/2024 - 19:39:49',
                      ),
                      ActivityItem(
                        title: 'Received',
                        price: '\$340',
                        isPositive: true,
                        icon: FluentIcons.arrow_down_20_regular,
                        date: '17/04/2024 - 17:32:05',
                      ),
                      ActivityItem(
                        title: 'Steam',
                        price: '-\$60',
                        icon: FluentIcons.games_16_regular,
                        date: '17/10/2024 - 01:07:02',
                      ),
                      ActivityItem(
                        title: 'Wallmart',
                        price: '-\$98',
                        icon: FluentIcons.money_20_regular,
                        date: '06/11/2024 - 20:40:26',
                      ),
                      ActivityItem(
                        title: 'Send',
                        price: '-\$320',
                        icon: FluentIcons.arrow_up_20_regular,
                        date: '22/07/2024 - 13:14:07',
                      ),
                      ActivityItem(
                        title: 'Received',
                        price: '\$200',
                        isPositive: true,
                        icon: FluentIcons.arrow_down_20_regular,
                        date: '26/11/2024 - 22:59:32',
                      ),
                      ActivityItem(
                        title: 'Paypal',
                        price: '-\$93.4',
                        icon: FluentIcons.money_20_regular,
                        date: '13/06/2024 - 01:38:36',
                      ),
                      ActivityItem(
                        title: 'Ebay',
                        price: '-\$112',
                        icon: FluentIcons.money_20_regular,
                        date: '24/02/2024 - 00:54:26',
                      ),
                      ActivityItem(
                        title: 'Amazon',
                        price: '-\$14',
                        icon: FluentIcons.money_20_regular,
                        date: '29/09/2024 - 23:03:31',
                      ),
                      ActivityItem(
                        title: 'Steam',
                        price: '-\$25',
                        icon: FluentIcons.games_16_regular,
                        date: '29/04/2024 - 19:54:05',
                      ),
                      ActivityItem(
                        title: 'Wallmart',
                        price: '-\$100',
                        icon: FluentIcons.money_20_regular,
                        date: '23/02/2024 - 21:09:47',
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: VWRow(
        horizontalAlignment: MainAxisAlignment.center,
        verticalAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            color: Colors.white,
            icon: const Icon(FluentIcons.money_16_regular),
          ),
          const Text(
            'Recent activities (16)',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class ActivityItem extends StatelessWidget {
  final String title;
  final String price;
  final IconData icon;
  final String date;
  final bool isPositive;

  const ActivityItem({
    super.key,
    required this.title,
    required this.price,
    required this.icon,
    required this.date,
    this.isPositive = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      trailing: VWBox(
        borderRadius: BorderRadius.circular(300),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        color: isPositive ? const Color.fromARGB(255, 255, 255, 255) : const Color.fromARGB(157, 0, 0, 0),
        child: Text(
          price,
          style: TextStyle(
            color: isPositive ? Colors.green.shade800 : Colors.red.shade400,
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      subtitle: Text(
        date,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }
}
