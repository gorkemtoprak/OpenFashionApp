import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';

class CheckoutExtrasWidget extends StatelessWidget {
  final String? title;
  final String? imageName;
  final String? fee;
  const CheckoutExtrasWidget({
    Key? key,
    this.title,
    this.imageName,
    this.fee,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(thickness: 2),
        Row(
          children: [
            Image.asset(
              imageName ?? '',
              height: 30,
              width: 30,
            ),
            const SizedBox(width: 10),
            Text(
              title ?? '',
              style: const TextStyle(
                fontFamily: 'Handlee',
                color: Constants.titleBlack,
                wordSpacing: 2,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            Text(
              fee ?? '',
              style: const TextStyle(
                fontFamily: 'Handlee',
                color: Constants.titleBlack,
                wordSpacing: 2,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
        const Divider(thickness: 2),
      ],
    );
  }
}
