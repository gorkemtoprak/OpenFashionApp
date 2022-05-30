import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';
import '../../../../shared/custom_elevated_button.dart';

class ContactUsWidget extends StatelessWidget {
  final String? text;
  final String? buttonTitle;
  final bool? showButton;
  const ContactUsWidget({
    Key? key,
    this.text,
    this.buttonTitle,
    this.showButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Text(
            text ?? '',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Handlee',
              fontSize: 16,
            ),
          ),
        ),
        showButton!
            ? CustomElevatedButton(
                onTap: () {},
                title: buttonTitle,
                iconData: Icons.contact_support_outlined,
                color: Constants.secondaryColor,
                titleColor: Colors.white,
                height: 40,
                width: 200,
              )
            : const SizedBox(),
      ],
    );
  }
}
