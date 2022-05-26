import 'package:flutter/material.dart';

import '../core/utils/constants.dart';

AppBar customAppBar(GlobalKey<ScaffoldState> scaffoldKey) {
  return AppBar(
    elevation: 0,
    title: Constants.logoIcon,
    centerTitle: true,
    // leading: GestureDetector(
    //   onTap: () {},
    //   child: Constants.menuIcon,
    // ),
    leading: GestureDetector(
      onTap: () {
        scaffoldKey.currentState?.openDrawer();
      },
      child: const Icon(
        Icons.menu_sharp,
        size: 28,
        color: Constants.labelColor,
      ),
    ),
    backgroundColor: Constants.offWhiteColor,
    actions: [
      Constants.searchIcon,
      const SizedBox(width: 20),
      Constants.shoppingBagIcon,
      const SizedBox(width: 20)
    ],
  );
}
