import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';

class ExtraInformationTextWidget extends StatelessWidget {
  final String? text;
  const ExtraInformationTextWidget({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 35,
      child: Text(
        text ?? '',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontFamily: 'Handlee',
        ),
      ),
    );
  }
}

SizedBox customLine(BuildContext context) {
  return SizedBox(
    width: screenWidth(context) / 2,
    child: Constants.line,
  );
}
