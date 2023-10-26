import 'package:flutter/material.dart';
import './coin.dart';

class DownCoins extends StatelessWidget {
  const DownCoins({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Coin(
          name: "Alqo",
          abreviation: "XLQ",
          symbol: "./lib/modules/crypto_dashboard/assets/XLQ.png",
          price: "\$ 929.910",
          profit: "64.932",
          percent: "+ 5.50%",
          isPositive: false,
        ),
        Coin(
          name: "Counterparty",
          abreviation: "ZIL",
          symbol: "./lib/modules/crypto_dashboard/assets/XCP.png",
          price: "\$ 271.044",
          profit: "83.263",
          percent: "+ 3.12%",
          isPositive: false,
        ),
        Coin(
          name: "Power",
          abreviation: "PWR",
          symbol: "./lib/modules/crypto_dashboard/assets/POWR.png",
          price: "\$ 526.779",
          profit: "95.082",
          percent: "+ 9.87%",
          isPositive: false,
        ),
        Coin(
          name: "Monero",
          abreviation: "XRM",
          symbol: "./lib/modules/crypto_dashboard/assets/XRM.png",
          price: "\$ 296.835",
          profit: "75.878",
          percent: "+ 2.52%",
          isPositive: false,
        ),
        Coin(
          name: "Electra",
          abreviation: "FLASH",
          symbol: "./lib/modules/crypto_dashboard/assets/FLASH.png",
          price: "\$ 638.852",
          profit: "96.347",
          percent: "+ 4.20%",
          isPositive: false,
        ),
        Coin(
          name: "Stellar",
          abreviation: "XLM",
          symbol: "./lib/modules/crypto_dashboard/assets/XLM.png",
          price: "\$ 567.029",
          profit: "82.246",
          percent: "+ 5.51%",
          isPositive: false,
        ),
      ],
    );
  }
}

class UpCoins extends StatelessWidget {
  const UpCoins({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Coin(
          name: "Electra",
          abreviation: "ECA",
          symbol: "./lib/modules/crypto_dashboard/assets/ECA.png",
          price: "\$ 686.813",
          profit: "53.978",
          percent: "+ 1.77%",
          isPositive: true,
        ),
        Coin(
          name: "Electra",
          abreviation: "FLASH",
          symbol: "./lib/modules/crypto_dashboard/assets/FLASH.png",
          price: "\$ 502.892",
          profit: "66.293",
          percent: "+ 4.43%",
          isPositive: true,
        ),
        Coin(
          name: "Happycoin",
          abreviation: "HPC",
          symbol: "./lib/modules/crypto_dashboard/assets/HPC.png",
          price: "\$ 345.213",
          profit: "88.016",
          percent: "+ 5.05%",
          isPositive: true,
        ),
        Coin(
          name: "Power",
          abreviation: "PWR",
          symbol: "./lib/modules/crypto_dashboard/assets/POWR.png",
          price: "\$ 330.176",
          profit: "66.696",
          percent: "+ 2.04%",
          isPositive: true,
        ),
        Coin(
          name: "Safeinsure",
          abreviation: "SINS",
          symbol: "./lib/modules/crypto_dashboard/assets/SINS.png",
          price: "\$ 475.860",
          profit: "69.180",
          percent: "+ 8.22%",
          isPositive: true,
        ),
        Coin(
          name: "Tom",
          abreviation: "TMC",
          symbol: "./lib/modules/crypto_dashboard/assets/TMC.png",
          price: "\$ 118.081",
          profit: "89.624",
          percent: "+ 0.50%",
          isPositive: true,
        )
      ],
    );
  }
}

class PopularCoins extends StatelessWidget {
  const PopularCoins({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Coin(
          name: "Radicle",
          abreviation: "RADS",
          symbol: "./lib/modules/crypto_dashboard/assets/RADS.png",
          price: "\$ 221.868",
          profit: "37.920",
          percent: "+ 6.60%",
          isPositive: true,
        ),
        Coin(
          name: "Stellar",
          abreviation: "XLM",
          symbol: "./lib/modules/crypto_dashboard/assets/XLM.png",
          price: "\$ 080.688",
          profit: "75.383",
          percent: "+ 3.44%",
          isPositive: false,
        ),
        Coin(
          name: "Alqo",
          abreviation: "XLQ",
          symbol: "./lib/modules/crypto_dashboard/assets/XLQ.png",
          price: "\$ 042.499",
          profit: "43.597",
          percent: "+ 6.13%",
          isPositive: false,
        ),
        Coin(
          name: "Monero",
          abreviation: "XRM",
          symbol: "./lib/modules/crypto_dashboard/assets/XRM.png",
          price: "\$ 142.890",
          profit: "92.019",
          percent: "+ 2.53%",
          isPositive: true,
        ),
        Coin(
          name: "Ziliqa",
          abreviation: "ZIL",
          symbol: "./lib/modules/crypto_dashboard/assets/ZIL.png",
          price: "\$ 912.301",
          profit: "05.784",
          percent: "+ 2.51%",
          isPositive: true,
        ),
        Coin(
          name: "Counterparty",
          abreviation: "ZIL",
          symbol: "./lib/modules/crypto_dashboard/assets/XCP.png",
          price: "\$ 193.905",
          profit: "13.166",
          percent: "+ 4.76%",
          isPositive: true,
        )
      ],
    );
  }
}

class FavoriteCoins extends StatelessWidget {
  const FavoriteCoins({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Coin(
          name: "Bitcoin",
          abreviation: "BTC",
          symbol: "./lib/modules/crypto_dashboard/assets/BTC.png",
          price: "\$ 233.904",
          profit: "93.443",
          percent: "+ 2.08%",
          isPositive: false,
        ),
        Coin(
          name: "Binance",
          abreviation: "BNB",
          symbol: "./lib/modules/crypto_dashboard/assets/BNB.png",
          price: "\$ 001.183",
          profit: "33.600",
          percent: "+ 6.37%",
          isPositive: false,
        ),
        Coin(
          name: "Dash",
          abreviation: "DASH",
          symbol: "./lib/modules/crypto_dashboard/assets/DASH.png",
          price: "\$ 251.257",
          profit: "45.569",
          percent: "+ 7.97%",
          isPositive: false,
        ),
        Coin(
          name: "Doge",
          abreviation: "DOGE",
          symbol: "./lib/modules/crypto_dashboard/assets/DOGE.png",
          price: "\$ 209.486",
          profit: "97.481",
          percent: "+ 1.61%",
          isPositive: true,
        ),
        Coin(
          name: "Chainlink",
          abreviation: "LINK",
          symbol: "./lib/modules/crypto_dashboard/assets/LINK.png",
          price: "\$ 793.829",
          profit: "01.975",
          percent: "+ 5.12%",
          isPositive: false,
        ),
        Coin(
          name: "Navcoin",
          abreviation: "NAV",
          symbol: "./lib/modules/crypto_dashboard/assets/NAV.png",
          price: "\$ 104.170",
          profit: "50.346",
          percent: "+ 9.39%",
          isPositive: true,
        )
      ],
    );
  }
}
