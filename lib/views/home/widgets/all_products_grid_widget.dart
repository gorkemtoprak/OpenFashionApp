import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../core/utils/constants.dart';
import '../../../viewmodels/home_view_model.dart';

class AllProductsGridWidget extends StatelessWidget {
  final String? type;
  const AllProductsGridWidget({
    Key? key,
    this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (model) => model.init(type ?? ''),
      builder: (context, model, widget) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 230,
          ),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: model.allProduct.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: Image.asset(
                    model.allProduct[index].productImage!,
                    height: screenHeight(context) / 6,
                    width: screenWidth(context) / 3,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  model.allProduct[index].productName ?? '',
                  style: const TextStyle(
                    fontFamily: 'Handlee',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  model.allProduct[index].price!,
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
      },
    );
  }
}
