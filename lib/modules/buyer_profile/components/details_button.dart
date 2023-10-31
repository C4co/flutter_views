import 'package:flutter/material.dart';
import 'package:flutter_starter/modules/buyer_profile/components/modal_title.dart';
import 'package:flutter_starter/modules/buyer_profile/components/product.dart';

class DetailsButton extends StatelessWidget {
  const DetailsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FilledButton.tonal(
        child: const Text(
          'ORDER DETAIL',
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
                width: double.infinity,
                child: Column(
                  children: [
                    const ModalTitle(title: "Order details"),
                    Expanded(
                      child: ListView(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20, bottom: 15),
                            padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                            child: const Text(
                              "Total: \$ 625",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Product(
                            image:
                                'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/5fd2fdf6-a3ce-4c61-bbe0-1b6162dbd681/dunk-low-womens-shoes-hLKTKG.png',
                            name: 'Nike Dunk Low',
                            detail: 'Size: 3.2',
                            price: '\$ 125',
                          ),
                          const Product(
                            image:
                                'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/09bad9ff-b86e-443a-a6ab-e443ff5dd658/life-mens-cable-knit-turtleneck-sweater-d9ntgk.png',
                            name: 'Men\'s Cable Knit Turtleneck Sweater',
                            detail: 'Size: M',
                            price: '\$ 180',
                          ),
                          const Product(
                            image:
                                'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/a6febd5d-3ae1-4832-a47a-26968d5c6deb/life-mens-carpenter-pants-f2dCjp.png',
                            name: 'Men\'s Carpenter Pants',
                            detail: 'Size: 32',
                            price: '\$ 120',
                          ),
                          const Product(
                            image:
                                'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/0dad1b88-00bd-47dc-8914-7b48397c4871/universa-womens-medium-support-high-waisted-7-8-leggings-with-pockets-bM5FGC.png',
                            name:
                                'Women\'s Medium-Support High-Waisted 7/8 Leggings with Pockets',
                            detail: 'Fit: High-Waisted',
                            price: '\$ 110',
                          ),
                          const Product(
                            image:
                                'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/76a5b261-1176-46c3-a233-cb1063534696/air-max-90-se-womens-shoes-PQ4FcN.png',
                            name: 'Nike Air Max 90 SE',
                            detail: 'Size: 3.5',
                            price: '\$ 100',
                          ),
                        ],
                      ),
                    ),
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
