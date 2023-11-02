import 'package:flutter/material.dart';
import './modal_title.dart';

class TrackingButton extends StatelessWidget {
  const TrackingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FilledButton(
        child: const Text(
          'Tracking',
        ),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return SizedBox(
                height: MediaQuery.of(context).size.height - 100,
                child: Column(
                  children: [
                    const ModalTitle(title: "Tracking"),
                    SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const TrackItem(
                            icon: Icons.shopping_bag_outlined,
                            title: 'Order placed',
                            subtitle: 'Your order has been placed',
                          ),
                          const TrackItem(
                            icon: Icons.send_outlined,
                            title: 'Dispatch in progress',
                            subtitle:
                                'Your order is being prepared for dispatch',
                          ),
                          const TrackItem(
                            icon: Icons.archive,
                            title: 'Ready to dispatch',
                            subtitle: 'Your order is ready to be dispatched',
                          ),
                          const TrackItem(
                            icon: Icons.delivery_dining,
                            title: 'In transit',
                            subtitle: 'Your order is on the way',
                          ),
                          Container(
                            color: Colors.green.shade100,
                            child: const TrackItem(
                              icon: Icons.check,
                              title: 'Devilered',
                              subtitle: 'Your order has been delivered',
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class TrackItem extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String subtitle;

  const TrackItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
      subtitle: Text(subtitle),
    );
  }
}
