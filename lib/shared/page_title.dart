import 'package:flutter/material.dart';

import '../core/utils/constants.dart';

class PageTitleWidget extends StatelessWidget {
  final String? title;
  const PageTitleWidget({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            title ?? '',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Handlee',
              color: Constants.titleBlack,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Center(
          child: SizedBox(
            width: 120,
            height: 10,
            child: Constants.line,
          ),
        ),
      ],
    );
  }
}
