import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';
import '../../../core/utils/datas.dart';
import '../../../shared/custom_elevated_button.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        enlargeCenterPage: true,
        viewportFraction: 0.9,
        aspectRatio: 1,
        initialPage: 0,
      ),
      itemCount: homeBanner.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          height: screenHeight(context) / 2.5,
          width: screenWidth(context),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            image: DecorationImage(
              image: AssetImage(
                homeBanner[index],
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight(context) / 7,
                child: Constants.slogan,
              ),
              const SizedBox(height: 20),
              CustomElevatedButton(
                onTap: () {},
                title: 'Explore Collection',
                iconData: Icons.explore_sharp,
                color: const Color.fromARGB(0, 0, 0, 5),
                height: 30,
                width: 190,
              ),
            ],
          ),
        );
      },
    );
  }
}
