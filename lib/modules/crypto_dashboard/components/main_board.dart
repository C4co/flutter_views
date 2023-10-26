import 'package:flutter/material.dart';
import './action_buttons.dart';

class MainBoard extends StatelessWidget {
  const MainBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 136, 48, 0),
            Color.fromARGB(255, 238, 164, 54),
          ],
        ),
      ),
      margin: const EdgeInsets.fromLTRB(15, 15, 15, 25),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'PORTFÓLIO BALANCE',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 10,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 2.3,
                ),
              ),

              //+ 1.52%
              Container(
                width: 60,
                height: 23,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                child: const Center(
                  child: Text(
                    "+ 1.52%",
                    style: TextStyle(
                      color: Color.fromARGB(255, 134, 255, 104),
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            '\$ 12,325,000',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                child: const Icon(
                  Icons.arrow_upward,
                  color: Color.fromARGB(255, 134, 255, 104),
                  size: 15,
                ),
              ),
              const SizedBox(width: 5),
              const Text(
                "+ 2,000",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 5),
              const Text(
                "Today Profit",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const ActionButtons()
        ],
      ),
    );
  }
}
