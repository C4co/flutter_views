import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 0,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.4),
          width: 1,
        ),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.upload_outlined),
            label: const Text('Orders'),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.assessment_outlined),
            label: const Text('Statistics'),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.insert_drive_file_outlined),
            label: const Text('Reports'),
          ),
        ],
      ),
    );
  }
}
