import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../core/utils/constants.dart';

AppBar customAppBar(GlobalKey<ScaffoldState> scaffoldKey) {
  return AppBar(
    elevation: 0,
    title: Constants.logoIcon,
    centerTitle: true,
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

AppBar customAppBarWithBack(BuildContext context) {
  return AppBar(
    elevation: 0,
    title: Constants.logoIcon,
    centerTitle: true,
    leading: IconButton(
      onPressed: () {
        AutoRouter.of(context).pop();
      },
      icon: const Icon(
        Icons.chevron_left,
        size: 28,
        color: Constants.labelColor,
      ),
    ),
    backgroundColor: Constants.offWhiteColor,
  );
}
