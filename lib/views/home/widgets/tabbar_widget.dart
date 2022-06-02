import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../../../core/utils/constants.dart';
import 'all_products_grid_widget.dart';

class HomeTabBarWidget extends StatefulWidget {
  const HomeTabBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeTabBarWidget> createState() => _HomeTabBarWidgetState();
}

class _HomeTabBarWidgetState extends State<HomeTabBarWidget>
    with TickerProviderStateMixin {
  TabController? _controller;

  @override
  void initState() {
    _controller = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        TabBar(
          controller: _controller,
          indicatorColor: Colors.green,
          tabs: const [
            Tab(
              child: Text(
                'All',
                style: TextStyle(
                  fontFamily: 'Handlee',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Apparel',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontFamily: 'Handlee',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Dress',
                style: TextStyle(
                  fontFamily: 'Handlee',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Tshirt',
                style: TextStyle(
                  fontFamily: 'Handlee',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Accessory',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontFamily: 'Handlee',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
          labelColor: Colors.black,
          indicator: DotIndicator(
            color: Constants.primaryColor,
            distanceFromCenter: 16,
            radius: 3,
            paintingStyle: PaintingStyle.fill,
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: screenHeight(context),
          width: screenWidth(context),
          child: TabBarView(
            controller: _controller,
            children: const [
              AllProductsGridWidget(type: 'Apparel'),
              AllProductsGridWidget(type: 'Apparel'),
              AllProductsGridWidget(type: 'Dress'),
              AllProductsGridWidget(type: 'Tshirt'),
              AllProductsGridWidget(type: 'Accessory'),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
