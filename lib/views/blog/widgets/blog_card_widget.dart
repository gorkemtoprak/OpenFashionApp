import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';
import '../../../core/utils/datas.dart';

class BlogCardWidget extends StatelessWidget {
  final int? index;
  const BlogCardWidget({
    Key? key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: screenWidth(context),
          height: 200,
          margin: const EdgeInsets.only(top: 20, bottom: 10),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  blogs[index!].image ?? '',
                  width: screenWidth(context),
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  blogs[index!].title ?? '',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    // fontFamily: 'Handlee',
                    fontWeight: FontWeight.bold,
                  ),
                ), //Text
              ),
            ],
          ),
        ),
        Container(
          width: 65,
          height: 25,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            ),
            border: Border.all(
              color: Constants.placeholderColor,
            ),
          ),
          child: const Center(
            child: Text('Fashion'),
          ),
        ),
      ],
    );
  }
}
