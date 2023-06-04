import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:new_project/Constants/app_colors.dart';
import 'package:new_project/Constants/app_fonts.dart';

import '../Recipe Detail/recipe_detail_view.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  bool isHomeSelected = false;
  bool isFavSelected = false;
  bool isFilterSelected = false;
  bool isCartSelected = false;
  bool isFav1Selected = false;
  bool isFav2Selected = false;
  bool isFav3Selected = false;
  bool isFav4Selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Work Place',
                    style: TextStyle(
                        fontSize: 25,
                        color: AppColors.text1,
                        fontFamily: AppFonts.awanZamanBold),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
              Text(
                'Choose your delicius meal',
                style: TextStyle(
                    color: AppColors.text2,
                    fontFamily: AppFonts.corporateEBold),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isHomeSelected = !isHomeSelected;
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 78,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 3,
                              color: isHomeSelected
                                  ? AppColors.introView
                                  : AppColors.containerBorder)),
                      child: Center(
                        child: Icon(
                          Icons.home_filled,
                          color: isHomeSelected
                              ? AppColors.introView
                              : AppColors.containerBorder,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isFavSelected = !isFavSelected;
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 78,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 3,
                              color: isFavSelected
                                  ? AppColors.introView
                                  : AppColors.containerBorder)),
                      child: Center(
                        child: Icon(
                          Icons.favorite,
                          color: isFavSelected
                              ? AppColors.introView
                              : AppColors.containerBorder,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isFilterSelected = !isFilterSelected;
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 78,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 3,
                              color: isFilterSelected
                                  ? AppColors.introView
                                  : AppColors.containerBorder)),
                      child: Center(
                        child: Icon(
                          Icons.filter_alt,
                          color: isFilterSelected
                              ? AppColors.introView
                              : AppColors.containerBorder,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isCartSelected = !isCartSelected;
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 78,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              width: 3,
                              color: isCartSelected
                                  ? AppColors.introView
                                  : AppColors.containerBorder)),
                      child: Center(
                        child: Icon(
                          Icons.shopping_cart,
                          color: isCartSelected
                              ? AppColors.introView
                              : AppColors.containerBorder,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => const RecipeDetailView());
                    },
                    child: Container(
                      height: 320.h,
                      width: 160.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.containerBorder),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.introView,
                                            width: 1.5),
                                        shape: BoxShape.circle),
                                    child: Center(
                                      child: Container(
                                        height: 12,
                                        width: 12,
                                        decoration: BoxDecoration(
                                            color: AppColors.introView,
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          isFav1Selected = !isFav1Selected;
                                        });
                                      },
                                      child: Icon(
                                        Icons.favorite,
                                        size: 30,
                                        color: isFav1Selected
                                            ? AppColors.fav
                                            : AppColors.containerBorder,
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/pizza.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(height: 15),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Pizza',
                                  style: TextStyle(
                                      color: AppColors.text1,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\$15.00',
                                  style: TextStyle(
                                      color: AppColors.introView,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: AppColors.introView,
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: AppColors.introText,
                                      size: 30,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const RecipeDetailView());
                    },
                    child: Container(
                      height: 320.h,
                      width: 160.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.containerBorder),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.introView,
                                            width: 1.5),
                                        shape: BoxShape.circle),
                                    child: Center(
                                      child: Container(
                                        height: 12,
                                        width: 12,
                                        decoration: BoxDecoration(
                                            color: AppColors.introView,
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          isFav2Selected = !isFav2Selected;
                                        });
                                      },
                                      child: Icon(
                                        Icons.favorite,
                                        size: 30,
                                        color: isFav2Selected
                                            ? AppColors.fav
                                            : AppColors.containerBorder,
                                      ))
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/salad.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(height: 15),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Vegetable Salad',
                                  style: TextStyle(
                                      color: AppColors.text1,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\$15.00',
                                  style: TextStyle(
                                      color: AppColors.introView,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: AppColors.introView,
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: AppColors.introText,
                                      size: 30,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => const RecipeDetailView());
                    },
                    child: Container(
                      height: 320.h,
                      width: 160.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.containerBorder),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 25.h,
                                    width: 25.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.introView,
                                            width: 1.5),
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
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          isFav3Selected = !isFav3Selected;
                                        });
                                      },
                                      child: Icon(
                                        Icons.favorite,
                                        size: 30,
                                        color: isFav3Selected
                                            ? AppColors.fav
                                            : AppColors.containerBorder,
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Stack(
                              children: [
                                Container(
                                  height: 180.h,
                                  width: 180.w,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/humberger.jpeg'),
                                          fit: BoxFit.cover)),
                                ),
                                Positioned(
                                    left: 20,
                                    child: Container(
                                      height: 30.h,
                                      width: 100.w,
                                      decoration: BoxDecoration(
                                          color: AppColors.fav,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Center(
                                        child: Text(
                                          '50% off',
                                          style: TextStyle(
                                              color: AppColors.introText,
                                              fontSize: 16.sp),
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Humburger',
                                  style: TextStyle(
                                      color: AppColors.text1,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold),
                                )),
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
                                Container(
                                  height: 30.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                      color: AppColors.introView,
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: AppColors.introText,
                                      size: 30,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const RecipeDetailView());
                    },
                    child: Container(
                      height: 320.h,
                      width: 160.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.containerBorder),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 25.h,
                                    width: 25.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppColors.introView,
                                            width: 1.5),
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
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          isFav4Selected = !isFav4Selected;
                                        });
                                      },
                                      child: Icon(
                                        Icons.favorite,
                                        size: 30,
                                        color: isFav4Selected
                                            ? AppColors.fav
                                            : AppColors.containerBorder,
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              height: 180.h,
                              width: 180.w,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/spagetti.jpeg'),
                                      fit: BoxFit.cover)),
                            ),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'Spagetti Bolongnese',
                                  style: TextStyle(
                                      color: AppColors.text1,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\$15.00',
                                  style: TextStyle(
                                      color: AppColors.introView,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  height: 30.h,
                                  width: 30.w,
                                  decoration: BoxDecoration(
                                      color: AppColors.introView,
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: AppColors.introText,
                                      size: 30,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
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
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$ 2:00',
                          style: TextStyle(
                              color: AppColors.introText,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
