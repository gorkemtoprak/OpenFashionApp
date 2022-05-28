import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';
import '../../../core/utils/datas.dart';

class AllProductsGridWidget extends StatelessWidget {
  const AllProductsGridWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 230,
      ),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            ClipRRect(
              clipBehavior: Clip.hardEdge,
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: Image.asset(
                products[0].productImage!,
                height: screenHeight(context) / 5.5,
                width: screenWidth(context) / 3,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              products[0].productName ?? '',
              style: const TextStyle(
                fontFamily: 'Handlee',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              products[0].price!,
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
      },
    );
  }
}
