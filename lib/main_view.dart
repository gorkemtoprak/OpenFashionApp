import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'core/navigation/router.gr.dart';
import 'core/utils/constants.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        Home(),
        Products(),
        Blogs(),
        CheckOut(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          extendBody: true,
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          backgroundColor: Colors.white,
          bottomNavigationBar: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              boxShadow: kElevationToShadow[3],
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor: Constants.primaryColor,
              selectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
              elevation: 5,
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) {
                tabsRouter.setActiveIndex(index);
              },
              items: const [
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.home,
                    size: 25,
                    color: Constants.primaryColor,
                  ),
                  icon: Icon(
                    Icons.home,
                    size: 25,
                    color: Constants.placeholderColor,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.production_quantity_limits_outlined,
                    size: 25,
                    color: Constants.primaryColor,
                  ),
                  icon: Icon(
                    Icons.production_quantity_limits_outlined,
                    size: 25,
                    color: Constants.placeholderColor,
                  ),
                  label: 'Products',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.read_more,
                    size: 25,
                    color: Constants.secondaryColor,
                  ),
                  icon: Icon(
                    Icons.read_more,
                    size: 25,
                    color: Constants.placeholderColor,
                  ),
                  label: 'Blogs',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.shopping_cart,
                    size: 25,
                    color: Constants.secondaryColor,
                  ),
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 25,
                    color: Constants.placeholderColor,
                  ),
                  label: 'Checkout',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
