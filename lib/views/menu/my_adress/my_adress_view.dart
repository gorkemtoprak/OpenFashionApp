import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import '../../../core/utils/constants.dart';
import '../../../shared/custom_app_bar.dart';
import '../../../shared/custom_elevated_button.dart';
import '../../../shared/custom_text_form_field.dart';
import '../../../shared/page_title.dart';

class MyAdressView extends StatelessWidget {
  const MyAdressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarWithBack(context),
      backgroundColor: Constants.offWhiteColor,
      body: Padding(
        padding: customPadding(),
        child: Column(
          children: [
            const PageTitleWidget(title: 'MY SHIPPING ADDRESS'),
            const SizedBox(height: 20),
            const Text(
              'Gorkem Toprak',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Handlee',
                color: Constants.titleBlack,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              '606-3727, Ullamcorper Street.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Handlee',
                color: Constants.placeholderColor,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Roseville, NH 11342',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Handlee',
                color: Constants.placeholderColor,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              '(786) 713-8616',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Handlee',
                color: Constants.placeholderColor,
              ),
            ),
            const SizedBox(height: 40),
            CustomElevatedButton(
              onTap: () {
                showBottomPanel(context);
              },
              title: 'Add Another Address',
              iconData: Icons.add_circle_outline_rounded,
              color: Constants.secondaryColor,
              titleColor: Colors.white,
              height: 40,
              width: screenWidth(context) / 1.4,
            ),
          ],
        ),
      ),
    );
  }
}

void showBottomPanel(BuildContext context) {
  showSlidingBottomSheet(
    context,
    builder: (context) {
      return SlidingSheetDialog(
        elevation: 8,
        cornerRadius: 20,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.4, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        minHeight: screenHeight(context) / 2,
        builder: (context, state) {
          return Material(
            type: MaterialType.transparency,
            child: SizedBox(
              height: screenHeight(context) / 1.6,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 20,
                ),
                child: Column(
                  children: [
                    const Text(
                      'Add New Shipping Address',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      onSaved: (text) {},
                      hint: 'Name - Surname',
                      obscureText: false,
                      textCapitalization: TextCapitalization.none,
                      textInputType: TextInputType.number,
                      formatter: false,
                      inputFormatters: const [],
                    ),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      onSaved: (text) {},
                      hint: 'Address',
                      obscureText: false,
                      textCapitalization: TextCapitalization.none,
                      textInputType: TextInputType.name,
                      formatter: false,
                      inputFormatters: const [],
                    ),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      onSaved: (text) {},
                      hint: 'City',
                      obscureText: false,
                      textCapitalization: TextCapitalization.none,
                      textInputType: TextInputType.number,
                      formatter: false,
                      inputFormatters: const [],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: CustomTextFormField(
                            onSaved: (text) {},
                            hint: 'State',
                            obscureText: false,
                            textCapitalization: TextCapitalization.none,
                            textInputType: TextInputType.number,
                            formatter: false,
                            inputFormatters: const [],
                          ),
                        ),
                        const SizedBox(width: 20),
                        SizedBox(
                          height: 100,
                          width: 100,
                          child: CustomTextFormField(
                            onSaved: (text) {},
                            hint: 'ZIP',
                            obscureText: false,
                            textCapitalization: TextCapitalization.none,
                            textInputType: TextInputType.number,
                            formatter: false,
                            inputFormatters: const [],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      onSaved: (text) {},
                      hint: 'Phone Number',
                      obscureText: false,
                      textCapitalization: TextCapitalization.none,
                      textInputType: TextInputType.number,
                      formatter: false,
                      inputFormatters: const [],
                    ),
                    const SizedBox(height: 20),
                    CustomElevatedButton(
                      onTap: () {},
                      title: 'Add New Adress',
                      iconData: Icons.add_circle_outline_rounded,
                      color: Constants.secondaryColor,
                      titleColor: Colors.white,
                      height: 40,
                      width: 200,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    },
  );
}
