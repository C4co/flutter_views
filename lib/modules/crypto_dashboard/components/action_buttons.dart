import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Material(
              borderRadius: BorderRadius.circular(100),
              clipBehavior: Clip.hardEdge,
              color: Colors.black.withOpacity(0.3),
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.sell,
                        color: Colors.white,
                        size: 15,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Sell",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Material(
              borderRadius: BorderRadius.circular(100),
              clipBehavior: Clip.hardEdge,
              color: Colors.black.withOpacity(0.3),
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_upward,
                        color: Colors.white,
                        size: 15,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Buy",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Material(
              borderRadius: BorderRadius.circular(100),
              clipBehavior: Clip.hardEdge,
              color: Colors.black.withOpacity(0.3),
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_downward,
                        color: Colors.white,
                        size: 15,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Deposity",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
