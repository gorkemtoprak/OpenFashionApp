import 'package:flutter/material.dart';
import 'package:open_fashion_app/core/utils/datas.dart';
import 'package:open_fashion_app/shared/quantity.dart';

import '../../core/utils/constants.dart';
import '../../shared/custom_app_bar.dart';
import '../../shared/custom_elevated_button.dart';
import '../../shared/page_title.dart';
import 'widgets/checkout_extras_widget.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: customAppBar(scaffoldKey),
      backgroundColor: Constants.offWhiteColor,
      body: Padding(
        padding: customPadding(),
        child: Column(
          children: [
            const PageTitleWidget(title: 'CHECKOUT'),
            const SizedBox(height: 20),
            Row(
              children: [
                ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: Image.asset(
                    products[0].productImage ?? '',
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
                      products[0].productName!,
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
                      products[0].description!,
                      style: const TextStyle(
                        fontFamily: 'Handlee',
                        color: Constants.labelColor,
                        wordSpacing: 3,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    QuantityWidget(
                      price: products[0].price!,
                      quantity: '1',
                      showPrice: true,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const CheckoutExtrasWidget(
              imageName: 'assets/icons/checkOutIcons/Voucher.png',
              title: 'Add Promo Code',
              fee: '',
            ),
            const SizedBox(height: 10),
            const CheckoutExtrasWidget(
              imageName: 'assets/icons/checkOutIcons/DoortoDoor Delivery.png',
              title: 'Delivery',
              fee: 'Free',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Center(
                child: CustomElevatedButton(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => const CheckoutView(),
                    //     ));
                  },
                  title: 'CHECKOUT',
                  color: Constants.titleBlack,
                  width: 170,
                  height: 40,
                  titleColor: Colors.white,
                  iconData: Icons.shopping_bag_outlined,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
