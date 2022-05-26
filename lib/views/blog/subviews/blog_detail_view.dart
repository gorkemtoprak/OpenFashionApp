import 'package:flutter/material.dart';
import 'package:open_fashion_app/core/utils/constants.dart';
import 'package:open_fashion_app/models/blog_model.dart';

import '../../../shared/custom_app_bar.dart';

class BlogDetailView extends StatelessWidget {
  final BlogModel? blogModel;
  const BlogDetailView({
    Key? key,
    this.blogModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: customAppBar(scaffoldKey),
      backgroundColor: Constants.offWhiteColor,
      body: Column(
        children: [
          Image.asset(
            blogModel!.image ?? '',
            height: screenHeight(context) / 3,
            width: screenWidth(context),
            fit: BoxFit.fill,
          ),
          Padding(
            padding: customPadding(),
            child: Column(
              children: [
                Text(
                  blogModel!.title ?? '',
                  style: const TextStyle(
                    color: Constants.bodyColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  blogModel!.description ?? '',
                  style: const TextStyle(
                    color: Constants.labelColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
