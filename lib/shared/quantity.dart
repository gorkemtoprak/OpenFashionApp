import 'package:flutter/material.dart';

import '../core/utils/constants.dart';

class QuantityWidget extends StatelessWidget {
  final String? quantity;
  final String? price;
  final bool? showPrice;
  const QuantityWidget({
    Key? key,
    this.quantity,
    this.price,
    this.showPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        showPrice!
            ? Text(
                price ?? '',
                style: const TextStyle(
                  fontFamily: 'Handlee',
                  color: Constants.primaryColor,
                  wordSpacing: 3,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              )
            : const SizedBox(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.remove_circle_outline_rounded,
            color: Constants.primaryColor,
          ),
        ),
        Text(
          '$quantity',
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add_circle_outline_rounded,
            color: Constants.primaryColor,
          ),
        ),
      ],
    );
  }
}
