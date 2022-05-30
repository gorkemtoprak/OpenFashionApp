import 'package:flutter/material.dart';
import 'package:open_fashion_app/shared/drawer.dart';

import '../../../core/utils/constants.dart';
import '../../../shared/custom_app_bar.dart';
import '../../../shared/page_title.dart';
import '../../home/widgets/extra_info_text_widget.dart';
import 'widgets/contact_us_widget.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({Key? key}) : super(key: key);

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
              const PageTitleWidget(title: 'CONTACT US'),
              const SizedBox(height: 20),
              Constants.chatIcon,
              const ContactUsWidget(
                text:
                    'Need an ASAP answer? Contact us via chat, 24/7! For existing furniture orders, please call us.',
                buttonTitle: 'CHAT US',
                showButton: true,
              ),
              const SizedBox(height: 40),
              Constants.addMessageIcon,
              const ContactUsWidget(
                text:
                    'You can text us at 800-309-2622 or click on the “text us” link below on your mobile device. Please allow the system to acknowledge a simple greeting (even “Hi” will do!) before providing your question/order details. Consent is not required for any purchase. Message and data rates may apply. Text messaging may not be available via all carriers.',
                buttonTitle: 'TEXT US',
                showButton: true,
              ),
              const SizedBox(height: 40),
              Constants.orangeTwitterIcon,
              const ContactUsWidget(
                text:
                    'To send us a private or direct message, like @Open Fashion on Facebook or follow us on Twitter. We’ll get back to you ASAP. Please include your name, order number, and email address for a faster response!',
                buttonTitle: 'TEXT US',
                showButton: false,
              ),
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
              const SizedBox(height: 30),
              const ExtraInformationTextWidget(text: 'support@openui.design'),
              const ExtraInformationTextWidget(text: '+60 825 876'),
              const ExtraInformationTextWidget(
                text: '08:00 - 22:00 - Everyday',
              ),
              customLine(context),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
