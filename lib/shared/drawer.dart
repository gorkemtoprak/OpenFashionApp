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
                text: 'My Addresses',
                icon: Icons.my_location_outlined,
                onClicked: () {},
              ),
              buildMenuItem(
                text: 'Payment Methods',
                icon: Icons.credit_card,
                onClicked: () {},
              ),
              buildMenuItem(
                text: 'About Us',
                icon: Icons.info_outline_rounded,
                onClicked: () {},
              ),
              buildMenuItem(
                text: 'Contact Us',
                icon: Icons.quick_contacts_dialer_outlined,
                onClicked: () {},
              ),
              buildMenuItem(
                text: 'Help',
                icon: Icons.help_center_outlined,
                onClicked: () {},
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
      ),
    ),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}
