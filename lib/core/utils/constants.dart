import 'package:flutter/material.dart';

class Constants {
  //COLORS
  static const primaryColor = Color.fromRGBO(168, 113, 90, 1);
  static const secondaryColor = Color.fromRGBO(221, 133, 96, 1);
  static const titleBlack = Colors.black;
  static const bodyColor = Color.fromRGBO(51, 51, 51, 1);
  static const labelColor = Color.fromRGBO(85, 85, 85, 1);
  static const placeholderColor = Color.fromRGBO(136, 136, 136, 1);
  static const lineColor = Color.fromRGBO(223, 207, 187, 1);
  static const inputBackgroundColor = Color.fromRGBO(249, 249, 249, 1);
  static const backgroundColor = Color.fromRGBO(248, 240, 231, 1);
  static const offWhiteColor = Color.fromRGBO(252, 252, 252, 1);

  //IMAGES
  static final Image line = Image.asset('assets/icons/line.png');
  static final Image notFound = Image.asset('assets/icons/notFoundIcon.png');
  static final Image ourStory = Image.asset('assets/ourStoryPhotoImage.png');
  static final Image slogan = Image.asset('assets/slogan.png');

  //Social media icons
  static final Image instagram = Image.asset(
    'assets/icons/socialMediaIcon/Instagram.png',
    width: 24,
    height: 24,
  );
  static final Image twitter = Image.asset(
    'assets/icons/socialMediaIcon/Twitter.png',
    width: 24,
    height: 24,
  );
  static final Image youtube = Image.asset(
    'assets/icons/socialMediaIcon/YouTube.png',
    width: 24,
    height: 24,
  );

  // headerIcons
  static final Image logoIcon = Image.asset(
    'assets/icons/headerIcon/Logo.png',
    width: 78,
    height: 32,
  );
  static final Image menuIcon = Image.asset(
    'assets/icons/headerIcon/Menu.png',
    width: 24,
    height: 24,
  );
  static final Image searchIcon = Image.asset(
    'assets/icons/headerIcon/Search.png',
    width: 24,
    height: 24,
  );
  static final Image shoppingBagIcon = Image.asset(
    'assets/icons/headerIcon/shopping bag.png',
    width: 24,
    height: 24,
  );

  // Contact us icons
  static final Image addMessageIcon = Image.asset(
    'assets/icons/contactUsIcons/Add Message.png',
    width: 45,
    height: 45,
  );

  static final Image chatIcon = Image.asset(
    'assets/icons/contactUsIcons/Chat Message.png',
    width: 45,
    height: 45,
  );

  static final Image orangeTwitterIcon = Image.asset(
    'assets/icons/contactUsIcons/Twitter.png',
    width: 45,
    height: 45,
  );
}

double screenWidth(context) {
  return MediaQuery.of(context).size.width;
}

double screenHeight(context) {
  return MediaQuery.of(context).size.height;
}

isPortrait(context) {
  return MediaQuery.of(context).orientation == Orientation.portrait;
}

EdgeInsetsGeometry customPadding() {
  return const EdgeInsets.only(
    left: 16,
    right: 16,
    top: 20,
    bottom: 20,
  );
}
