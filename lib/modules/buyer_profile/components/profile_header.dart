import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(100),
            ),
            //network image
            child: Image.asset(
              './lib/modules/buyer_profile/assets/profile.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 15),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jane Doe',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '1234 Main St - New York, NY',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              IconButton.filledTonal(
                onPressed: () {},
                icon: const Icon(
                  Icons.description_outlined,
                  size: 20,
                ),
              ),
              const SizedBox(width: 5),
              IconButton.filledTonal(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
