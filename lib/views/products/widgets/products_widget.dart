import 'package:flutter/material.dart';
import 'package:open_fashion_app/models/product_model.dart';

import '../../../core/utils/constants.dart';
import '../../../shared/rate_icon.dart';

class ProductsWidget extends StatelessWidget {
  final ProductModel? products;
  const ProductsWidget({
    Key? key,
    this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          child: Image.asset(
            products!.productImage!,
            height: screenHeight(context) / 5,
            width: screenWidth(context) / 3.4,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              products!.productName!,
              style: const TextStyle(
                fontFamily: 'Handlee',
                color: Constants.titleBlack,
                wordSpacing: 3,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              products!.description!,
              style: const TextStyle(
                fontFamily: 'Handlee',
                color: Constants.labelColor,
                wordSpacing: 3,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              products!.price!,
              style: const TextStyle(
                fontFamily: 'Handlee',
                color: Constants.secondaryColor,
                wordSpacing: 3,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            RateIconWithNumber(
              rate: products!.ratings!,
            ),
            const SizedBox(height: 10),
            SizedBox(
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
            ),
          ],
        ),
      ],
    );
  }
}
