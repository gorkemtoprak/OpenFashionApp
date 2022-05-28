import 'package:flutter/material.dart';

import '../core/utils/constants.dart';
import '../views/home/widgets/extra_info_text_widget.dart';

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
          child: customLine(context),
        ),
      ],
    );
  }
}
