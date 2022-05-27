import 'package:flutter/material.dart';

import '../core/utils/constants.dart';

class TitleWithDescription extends StatelessWidget {
  final String? title;
  final String? description;
  const TitleWithDescription({
    Key? key,
    this.title,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title ?? '',
          style: const TextStyle(
            fontFamily: 'Handlee',
            fontWeight: FontWeight.w600,
            letterSpacing: 2,
            color: Constants.titleBlack,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          description ?? '',
          style: const TextStyle(
            fontFamily: 'Handlee',
            fontWeight: FontWeight.w500,
            letterSpacing: 2,
            color: Constants.placeholderColor,
          ),
        ),
      ],
    );
  }
}
