import 'package:flutter/material.dart';
import './modal_title.dart';

class TrackingButton extends StatelessWidget {
  const TrackingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
        child: const Text(
          'TRACKING',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
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
                          const ListTile(
                            leading: Icon(Icons.shopping_bag_outlined),
                            title: Text('Order Placed'),
                            subtitle: Text('Your order has been placed'),
                          ),
                          const VerticalDivider(),
                          const ListTile(
                            leading: Icon(Icons.send),
                            title: Text('Dispatch in progress'),
                            subtitle: Text(
                              'Your order is being prepared for dispatch',
                            ),
                          ),
                          const VerticalDivider(),
                          const ListTile(
                            leading: Icon(Icons.archive),
                            title: Text('Ready to dispatch'),
                            subtitle: Text(
                              ' Your order is ready to be dispatched',
                            ),
                          ),
                          const VerticalDivider(),
                          const ListTile(
                            leading: Icon(Icons.delivery_dining),
                            title: Text('In transit'),
                            subtitle: Text('Your order is on the way'),
                          ),
                          const VerticalDivider(),
                          Container(
                            color: Colors.green.shade100,
                            child: const ListTile(
                              leading: Icon(Icons.check),
                              title: Text('Delivered'),
                              subtitle: Text('Your order has been delivered'),
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

class VerticalDivider extends StatelessWidget {
  const VerticalDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 28,
      ),
      width: 1,
      height: 20,
      color: Theme.of(context).colorScheme.primary,
    );
  }
}
