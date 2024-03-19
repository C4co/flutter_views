import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vw/vw.dart';

class BankCard extends StatelessWidget {
  const BankCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return VWBox(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.black,
          Colors.green.shade900,
        ],
      ),
      width: double.infinity,
      height: 220,
      padding: const EdgeInsets.all(10),
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 50,
            left: 20,
            child: Text(
              'Greene',
              style: GoogleFonts.oldStandardTt(
                fontSize: 34,
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
            bottom: 20,
            left: 20,
            child: Text(
              'CARLOS N COSTA',
              style: TextStyle(
                fontSize: 12,
                letterSpacing: 1.2,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const Positioned(
            bottom: 16,
            right: 20,
            child: Text(
              '**** **** **** 4323',
              style: TextStyle(
                fontSize: 13,
                letterSpacing: 1.2,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Align(
              child: Image.asset(
                './lib/modules/banking/assets/master.png',
                width: 55,
              ),
            ),
          ),
          Positioned(
            bottom: (220 / 2) - 20,
            right: 20,
            child: Align(
              child: Image.asset(
                './lib/modules/banking/assets/chip.png',
                width: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
