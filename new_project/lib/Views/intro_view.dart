import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:new_project/Constants/app_colors.dart';
import 'package:new_project/Constants/app_fonts.dart';

import 'Dashboard/dashboard_view.dart';

class IntroView extends StatefulWidget {
  const IntroView({Key? key}) : super(key: key);

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.introView,
      body: Column(
        children: [
          SizedBox(
            height: 90.h,
          ),
          Center(
            child: Container(
              height: 300.h,
              width: 300.w,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/image.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          SizedBox(
            height: 90.h,
          ),
          Text(
            'BISTRO CORNER',
            style: TextStyle(
                color: AppColors.introText,
                fontSize: 30,
                fontFamily: AppFonts.lucidaGrandeBold),
          ),
          SizedBox(
            height: 90.h,
          ),
          InkWell(
            onTap: (){
              Get.to(() => const DashboardView());
            },
            child: Container(
              height: 55,
              width: 270,
              decoration: BoxDecoration(
                  color: AppColors.introText,
                  borderRadius: BorderRadius.circular(50)),
              child: const Center(
                  child: Text(
                'Get a Meal',
                style:
                    TextStyle(
                        fontSize: 20,
                        fontFamily: AppFonts.corporateEBold),
              )),
            ),
          )
        ],
      ),
    );
  }
}
