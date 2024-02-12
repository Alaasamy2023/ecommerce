import 'package:ecommerce/controller/onboarding_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          //    print(val);    // print num of Page in PageView
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                Text(onBoardingList[i].title!,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20)),
                const SizedBox(height: 20),
                Image.asset(
                  onBoardingList[i].image!,
                  width: 150,
                  height: 150,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 20),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onBoardingList[i].body!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          height: 2.5,
                          color: AppColor.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    )),
              ],
            ));
  }
}
