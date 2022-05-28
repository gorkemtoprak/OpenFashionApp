import 'package:flutter/material.dart';
import 'package:open_fashion_app/core/utils/constants.dart';
import 'package:open_fashion_app/shared/drawer.dart';

import '../../shared/custom_app_bar.dart';
import 'widgets/bottom_part_widget.dart';
import 'widgets/carousel_slider_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: customAppBar(scaffoldKey),
      drawer: const NavigationDrawerWidget(),
      backgroundColor: Constants.offWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 20),
            CarouselSliderWidget(),
            SizedBox(height: 20),
            BottomPartWidget(),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
