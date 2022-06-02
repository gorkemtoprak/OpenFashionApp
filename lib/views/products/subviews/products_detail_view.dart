import 'package:flutter/material.dart';
import 'package:open_fashion_app/core/utils/datas.dart';
import 'package:open_fashion_app/models/product_model.dart';
import 'package:open_fashion_app/views/checkout/checkout_view.dart';

import '../../../core/utils/constants.dart';
import '../../../shared/custom_app_bar.dart';
import '../../../shared/custom_elevated_button.dart';
import '../../../shared/title_with_description.dart';
import '../widgets/product_information_widget.dart';
import '../widgets/product_size_widget.dart';

class ProductsDetailView extends StatelessWidget {
  final ProductModel? product;
  const ProductsDetailView({
    Key? key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarWithBack(context),
      backgroundColor: Constants.offWhiteColor,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: customPadding(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      product!.productImage ?? '',
                      height: screenHeight(context) / 2.2,
                      width: screenWidth(context),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, right: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border_rounded,
                            color: Constants.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              ProductInformationWidget(
                brand: product!.productName,
                description: product!.description,
                price: product!.price,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  children: [
                    SizedBox(
                      height: 30,
                      child: ListView.builder(
                        itemCount: colors.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return CircleAvatar(
                            radius: 15,
                            backgroundColor: colors[index],
                          );
                        },
                      ),
                    ),
                    const Spacer(),
                    product!.type! == 'Accessory'
                        ? const SizedBox()
                        : ProductSizesWidget(products: product),
                  ],
                ),
              ),
              const TitleWithDescription(
                title: 'MATERIAL',
                description:
                    'We work with monitoring programmes to ensure compliance with safety, health and quality standards for our products.',
              ),
              const SizedBox(height: 10),
              const TitleWithDescription(
                title: 'CARE',
                description:
                    'To keep your jackets and coats clean, you only need to freshen them up and go over them with a cloth or a clothes brush. If you need to dry clean a garment, look for a dry cleaner that uses technologies that are respectful of the environment.',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Center(
                  child: CustomElevatedButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CheckoutView(),
                          ));
                    },
                    title: 'ADD TO BASKET',
                    color: Constants.titleBlack,
                    width: 200,
                    height: 40,
                    titleColor: Colors.white,
                    iconData: Icons.shopping_basket_outlined,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
