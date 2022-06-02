import 'package:flutter/material.dart';
import 'package:open_fashion_app/core/utils/datas.dart';
import 'package:open_fashion_app/shared/custom_app_bar.dart';
import 'package:open_fashion_app/views/products/subviews/products_detail_view.dart';

import '../../core/utils/constants.dart';
import 'widgets/product_header_widget.dart';
import 'widgets/products_widget.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({Key? key}) : super(key: key);

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
            const ProductHeaderWidget(),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductsDetailView(
                                product: products[index],
                              ),
                            ));
                      },
                      child: ProductsWidget(
                        products: products[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
