import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion_app/core/utils/constants.dart';
import 'package:open_fashion_app/core/utils/datas.dart';
import 'package:open_fashion_app/views/blog/subviews/blog_detail_view.dart';

import '../../shared/custom_app_bar.dart';
import '../../shared/page_title.dart';
import 'widgets/blog_card_widget.dart';

class BlogView extends StatelessWidget {
  const BlogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: customAppBar(scaffoldKey),
      drawer: Drawer(
        child: Padding(
          padding: customPadding(),
          child: Column(
            children: [
              Constants.logoIcon,
              SizedBox(
                width: 150,
                height: 20,
                child: Constants.line,
              ),
              ExpandablePanel(
                header: const Text(
                  'New',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Constants.titleBlack,
                  ),
                ),
                collapsed: const Text(''),
                expanded: const Text(
                  'abasdasdasd',
                  softWrap: true,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Constants.offWhiteColor,
      body: Padding(
        padding: customPadding(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const PageTitleWidget(title: 'BLOG'),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BlogDetailView(
                            blogModel: blogs[index],
                          ),
                        ),
                      );
                    },
                    child: BlogCardWidget(index: index),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
