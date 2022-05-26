import 'package:flutter/material.dart';

import '../core/utils/constants.dart';

class RateIconWithNumber extends StatelessWidget {
  final String? rate;
  const RateIconWithNumber({
    Key? key,
    this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Constants.secondaryColor,
          size: 22,
        ),
        const SizedBox(width: 5),
        Text(
          rate ?? '',
          style: const TextStyle(
            fontFamily: 'Handlee',
            color: Constants.secondaryColor,
            wordSpacing: 3,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
