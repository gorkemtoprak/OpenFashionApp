import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';
import '../../../shared/page_title.dart';
import 'extra_info_text_widget.dart';
import 'tabbar_widget.dart';

class BottomPartWidget extends StatelessWidget {
  const BottomPartWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const PageTitleWidget(
          title: 'NEW ARRIVAL',
        ),
        const HomeTabBarWidget(),
        const SizedBox(height: 20),
        customLine(context),
        const Padding(
          padding: EdgeInsets.only(
            top: 10,
            bottom: 10,
            left: 20,
            right: 20,
          ),
          child: Text(
            'Making a luxurious lifestyle accessible for a generous group of women is our daily drive',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Handlee',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        customLine(context),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            ExtraInformationTextWidget(
              text: 'Fast shipping. Free on orders over \$25.',
            ),
            ExtraInformationTextWidget(
              text: 'Sustainable process from start to finish.',
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            ExtraInformationTextWidget(
              text: 'Unique designs and high-quality materials.',
            ),
            ExtraInformationTextWidget(
              text: 'Fast shipping. Free on orders over \$25.',
            ),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 60,
          height: 40,
          child: Image.asset('assets/lining.png'),
        ),
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
        const SizedBox(height: 30),
        const ExtraInformationTextWidget(text: 'support@openui.design'),
        const ExtraInformationTextWidget(text: '+60 825 876'),
        const ExtraInformationTextWidget(
          text: '08:00 - 22:00 - Everyday',
        ),
        customLine(context),
        const SizedBox(height: 30),
      ],
    );
  }
}
