import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';

class ProductInformationWidget extends StatelessWidget {
  final String? brand;
  final String? description;
  final String? price;
  const ProductInformationWidget({
    Key? key,
    this.brand,
    this.description,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          brand ?? '',
          style: const TextStyle(
            fontFamily: 'Handlee',
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Constants.titleBlack,
            letterSpacing: 6,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          description ?? '',
          style: const TextStyle(
            fontFamily: 'Handlee',
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
            color: Constants.placeholderColor,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          '\$$price',
          style: const TextStyle(
            fontFamily: 'Handlee',
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
            color: Constants.secondaryColor,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
