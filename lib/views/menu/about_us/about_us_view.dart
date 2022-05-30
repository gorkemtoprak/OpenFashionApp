import 'package:flutter/material.dart';
import 'package:open_fashion_app/shared/drawer.dart';

import '../../../core/utils/constants.dart';
import '../../../shared/custom_app_bar.dart';
import '../../../shared/page_title.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarWithBack(context),
      drawer: const NavigationDrawerWidget(),
      backgroundColor: Constants.offWhiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: customPadding(),
          child: Column(
            children: [
              const PageTitleWidget(title: 'ABOUT US'),
              const SizedBox(height: 20),
              const Text(
                'Open Fashion - Free E-Commerce UI Kit is a free download UI kit. You can open Open Fashion - Free E-Commerce UI Kit file by Figma.\nCreate stunning shop with bulletproof guidelines and thoughtful components. Its library contains more than 50+ components supporting Light & Dark Mode and 60+ ready to use mobile screens',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'Handlee',
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset('assets/ourStoryPhotoImage.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
