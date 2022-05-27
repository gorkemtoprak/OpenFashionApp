import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';
import '../../../models/product_model.dart';

class ProductSizesWidget extends StatelessWidget {
  const ProductSizesWidget({
    Key? key,
    required this.products,
  }) : super(key: key);

  final ProductModel? products;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: screenWidth(context) / 3,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: products!.sizes!.length,
        itemBuilder: (BuildContext context, int index) {
          return CircleAvatar(
            radius: 20,
            backgroundColor: Constants.lineColor,
            child: Text(
              products!.sizes![index],
              style: const TextStyle(
                color: Constants.titleBlack,
                fontFamily: 'Handlee',
                fontWeight: FontWeight.w500,
              ),
            ),
          );
        },
      ),
    );
  }
}
