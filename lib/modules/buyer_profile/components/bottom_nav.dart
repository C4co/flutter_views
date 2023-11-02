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
        border: Border(
          top: BorderSide(
            color: Theme.of(context).colorScheme.outlineVariant,
            width: 1,
          ),
        ),
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
