import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion_app/views/home/widgets/extra_info_text_widget.dart';

import '../core/utils/constants.dart';
import 'custom_elevated_button.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomRight: Radius.circular(300),
      ),
      child: SizedBox(
        width: screenWidth(context) / 1.80,
        child: Drawer(
          elevation: 2,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              const SizedBox(height: 20),
              buildMenuItem(
                onClicked: () {},
                text: 'My Addresses',
                icon: Icons.my_location_outlined,
              ),
              buildMenuItem(
                onClicked: () {
                  AutoRouter.of(context).pushNamed('/payment');
                },
                text: 'Payment Methods',
                icon: Icons.credit_card,
              ),
              buildMenuItem(
                onClicked: () {
                  AutoRouter.of(context).pushNamed('/aboutUs');
                },
                text: 'About Us',
                icon: Icons.info_outline_rounded,
              ),
              buildMenuItem(
                onClicked: () {
                  AutoRouter.of(context).pushNamed('/contactUs');
                },
                text: 'Contact Us',
                icon: Icons.quick_contacts_dialer_outlined,
              ),
              const SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomElevatedButton(
                    onTap: () {},
                    color: Constants.primaryColor,
                    title: 'Log Out',
                    titleColor: Colors.white,
                    iconData: Icons.exit_to_app_outlined,
                    height: 40,
                    width: 200,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              customLine(context),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Constants.instagram,
                  const SizedBox(width: 15),
                  Constants.twitter,
                  const SizedBox(width: 15),
                  Constants.youtube,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  const color = Colors.black;
  const hoverColor = Colors.black;

  return ListTile(
    leading: Icon(
      icon,
      color: Constants.primaryColor,
    ),
    title: Text(
      text,
      style: const TextStyle(
        color: color,
        fontFamily: 'Handlee',
        fontSize: 16,
      ),
    ),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}
