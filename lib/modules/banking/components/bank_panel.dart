import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/modules/banking/components/bank_action.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vw/vw.dart';

class BankPanel extends StatelessWidget {
  const BankPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return VWBox(
      padding: const EdgeInsets.only(
        top: 50,
        left: 20,
        right: 20,
        bottom: 40,
      ),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.green.shade200,
          Colors.green.shade200,
          Colors.green.shade600,
        ],
      ),
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      width: double.infinity,
      child: VWColumn(
        gap: 5,
        children: [
          VWRow(
            horizontalAlignment: MainAxisAlignment.spaceBetween,
            verticalAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Greene',
                style: GoogleFonts.oldStandardTt(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              VWRow(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FluentIcons.alert_12_regular),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FluentIcons.eye_12_regular),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FluentIcons.person_12_regular),
                  ),
                ],
              )
            ],
          ),
          Divider(
            color: Colors.white.withOpacity(0.4),
            thickness: 1,
          ),
          VWRow(
            horizontalAlignment: MainAxisAlignment.spaceBetween,
            children: [
              VWBox(
                child: VWColumn(
                  children: [
                    const VWRow(
                      verticalAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'You Wallet Balance',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    Text(
                      '\$ 43,345.000',
                      style: GoogleFonts.oldStandardTt(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              VWBox(
                padding: const EdgeInsets.all(10),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                child: IconButton.outlined(
                  iconSize: 30,
                  onPressed: () {},
                  icon: const Icon(
                    FluentIcons.qr_code_20_filled,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.white.withOpacity(0.4),
            thickness: 1,
          ),
          const VWRow(
            horizontalAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BankAction(
                label: "Send",
                icon: FluentIcons.arrow_up_12_regular,
              ),
              BankAction(
                label: "Receive",
                icon: FluentIcons.arrow_down_12_regular,
              ),
              BankAction(
                label: "Transfer",
                icon: FluentIcons.arrow_swap_16_regular,
              ),
              BankAction(
                label: "History",
                icon: FluentIcons.history_16_regular,
              ),
            ],
          )
        ],
      ),
    );
  }
}
