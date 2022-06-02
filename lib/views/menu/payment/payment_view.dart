import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:open_fashion_app/shared/custom_app_bar.dart';
import 'package:open_fashion_app/shared/custom_elevated_button.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import '../../../core/utils/constants.dart';
import '../../../shared/custom_text_form_field.dart';
import '../../../shared/page_title.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarWithBack(context),
      backgroundColor: Constants.offWhiteColor,
      body: Padding(
        padding: customPadding(),
        child: Column(
          children: [
            const PageTitleWidget(title: 'PAYMENT METHOD'),
            const SizedBox(
              height: 20,
            ),
            CreditCardWidget(
              cardNumber: '5540123434566780',
              expiryDate: '01/24',
              cardHolderName: 'Gorkem Toprak',
              cvvCode: '000',
              isHolderNameVisible: true,
              cardBgColor: Constants.placeholderColor,
              showBackView: false,
              onCreditCardWidgetChange: (CreditCardBrand data) {},
            ),
            const SizedBox(
              height: 30,
            ),
            CustomElevatedButton(
              onTap: () {
                showBottomPanel(context);
              },
              title: 'Add Another Credit/Debit Card',
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
                      'Add Credit/Debit Card',
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
                      hint: 'Card Number',
                      obscureText: false,
                      textCapitalization: TextCapitalization.none,
                      textInputType: TextInputType.number,
                      formatter: false,
                      inputFormatters: const [],
                    ),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      onSaved: (text) {},
                      hint: 'Name - Surname',
                      obscureText: false,
                      textCapitalization: TextCapitalization.none,
                      textInputType: TextInputType.name,
                      formatter: false,
                      inputFormatters: const [],
                    ),
                    const SizedBox(height: 10),
                    CustomTextFormField(
                      onSaved: (text) {},
                      hint: 'Security Code',
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
                            hint: 'MM',
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
                            hint: 'YY',
                            obscureText: false,
                            textCapitalization: TextCapitalization.none,
                            textInputType: TextInputType.number,
                            formatter: false,
                            inputFormatters: const [],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    CustomElevatedButton(
                      onTap: () {},
                      title: 'Add Card',
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
