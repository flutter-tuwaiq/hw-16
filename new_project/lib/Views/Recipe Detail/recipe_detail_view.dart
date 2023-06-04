import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project/Constants/app_colors.dart';

class RecipeDetailView extends StatefulWidget {
  const RecipeDetailView({Key? key}) : super(key: key);

  @override
  State<RecipeDetailView> createState() => _RecipeDetailViewState();
}

class _RecipeDetailViewState extends State<RecipeDetailView> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 230.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/spagetti1.jpg'),
                        fit: BoxFit.cover)),
                // child: Stack(
                //   children: [
                //     Positioned(
                //       top: 100,
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Icon(
                //             Icons.arrow_back_ios_new_outlined,
                //             color: AppColors.introText,
                //             size: 35,
                //           ),
                //           Icon(
                //             Icons.favorite,
                //             color: AppColors.introText,
                //             size: 35,
                //           ),
                //         ],
                //       ),
                //     )
                //   ],
                // ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Spagetti Bolongnese',
                          style: TextStyle(
                              color: AppColors.text1,
                              fontSize: 22.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 25.w),
                        Container(
                          height: 23.h,
                          width: 23.w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.introView, width: 1.5),
                              shape: BoxShape.circle),
                          child: Center(
                            child: Container(
                              height: 12.h,
                              width: 12.w,
                              decoration: BoxDecoration(
                                  color: AppColors.introView,
                                  shape: BoxShape.circle),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$15.00',
                          style: TextStyle(
                              color: AppColors.introView,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 91.w,
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if (number > 1) {
                                      number--;
                                    }
                                  });
                                },
                                child: Container(
                                  height: 23.h,
                                  width: 20.w,
                                  decoration: BoxDecoration(
                                      color: AppColors.containerBorder,
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Center(
                                      child: Icon(
                                    Icons.remove,
                                    size: 22,
                                    color: AppColors.introText,
                                  )),
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Container(
                                height: 23.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                    color: AppColors.containerBorder,
                                    borderRadius: BorderRadius.circular(3)),
                                child: Center(
                                    child: Text(
                                  '$number',
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    number++;
                                  });
                                },
                                child: Container(
                                  height: 23.h,
                                  width: 20.w,
                                  decoration: BoxDecoration(
                                      color: AppColors.introView,
                                      borderRadius: BorderRadius.circular(3)),
                                  child: Center(
                                      child: Icon(
                                    Icons.add,
                                    size: 22,
                                    color: AppColors.introText,
                                  )),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      'Recipe',
                      style: TextStyle(
                          fontSize: 26.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const Text(
                      'Minced Beef, Diced Onion, Chopped Garlic, Grated Carrot, Chopped Tomatos.',
                      textAlign: TextAlign.left,
                      style: TextStyle(),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Column(
                      children: [
                        ListTile(
                          leading: Container(
                            height: 90.h,
                            width: 55.w,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.containerBorder,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Icon(
                                Icons.location_on_outlined,
                                size: 35,
                                color: AppColors.containerBorder,
                              ),
                            ),
                          ),
                          title: Text(
                            'Location',
                            style: TextStyle(
                                fontSize: 20.sp, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'No.72 Ashimota road, Accra, Ghana',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        ListTile(
                          leading: Container(
                            height: 90.h,
                            width: 55.w,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.containerBorder,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Icon(
                                Icons.timer_outlined,
                                size: 35,
                                color: AppColors.containerBorder,
                              ),
                            ),
                          ),
                          title: Text(
                            'Delivery Time',
                            style: TextStyle(
                                fontSize: 20.sp, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            '45 Minute',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 65.h,
                        width: double.infinity,
                        decoration: BoxDecoration(color: AppColors.introView),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '2 Items',
                                style: TextStyle(
                                    color: AppColors.introText,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '\$ 2:00',
                                style: TextStyle(
                                    color: AppColors.introText,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
