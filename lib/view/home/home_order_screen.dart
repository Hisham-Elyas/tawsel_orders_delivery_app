import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tawsel_orders_delivery_app/app_color.dart';

import '../../page_controller.dart';
import '../order_details/order_details_screen.dart';
import 'pages_taps/canceled_order_card_page.dart';
import 'pages_taps/completed_order_card_page.dart';
import 'pages_taps/request_order_card_page.dart';

class HomeOrderScreen extends StatelessWidget {
  const HomeOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isonline = true;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w).copyWith(top: 20.h),
        child: GetBuilder<MyPageController>(
          builder: (pageController) => Column(children: [
            SizedBox(height: 24.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "OrderS",
                style: TextStyle(
                  color: AppColor.fontColor1,
                  fontWeight: FontWeight.w700,
                  fontSize: 34.sp,
                ),
              ),
            ),
            SizedBox(height: 25.h),
            //// taps list
            SizedBox(
              height: 40.h,
              child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: 20.w),
                  scrollDirection: Axis.horizontal,
                  itemCount: pageController.tapsList.length,
                  itemBuilder: (context, index) => InkWell(
                        borderRadius: BorderRadius.circular(15.r),
                        onTap: () {
                          pageController.goTopage(index);
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 900),
                          width: 100.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              // border: Border.all(
                              //   color: AppColor.mainColor,
                              //   style: BorderStyle.solid,
                              //   width: 1.5.w,
                              // ),
                              color: pageController.pageNum == index
                                  ? AppColor.mainColor
                                  : null,
                              borderRadius: BorderRadius.circular(15.r)),
                          child: Text(
                            pageController.tapsList[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: pageController.pageNum == index
                                    ? AppColor.fontColor3
                                    : AppColor.fontColor1,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      )),
            ),
            SizedBox(height: 24.h),
            //// page view
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  pageController.setPageNum = value;
                },
                controller: pageController.myPageController,
                children: [
                  /// Request page viwe
                  RequestOrderCardPage(
                    itemCount: 6,
                    onTap: () {
                      Get.to(() => const OrderDetailscreen());
                    },
                    onTapAccept: () {},
                    onTapCancel: () {},
                  ),

                  /// Completed page viwe
                  CompletedOrderCardPage(
                    itemCount: 2,
                    onTap: () {
                      Get.to(() => const OrderDetailscreen());
                    },
                    onTapDelete: () {},
                  ),

                  /// Canceled page viwe
                  CanceledOrderCardPage(
                    itemCount: 1,
                    onTap: () {
                      Get.to(() => const OrderDetailscreen());
                    },
                    onTapDelete: () {},
                  ),
                ],
              ),
            )
          ]),
        ),
      )),
      bottomNavigationBar: Container(
        height: 53.h,
        decoration: BoxDecoration(
            color: AppColor.mainColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30.r))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You're now online",
              style: TextStyle(
                  color: AppColor.fontColor3,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(width: 23.w),
            StatefulBuilder(builder: (context, setState) {
              return Switch(
                value: isonline,
                inactiveThumbColor: Colors.grey,
                activeColor: Colors.green,
                activeTrackColor: Colors.white,
                onChanged: (value) {
                  isonline = value;
                  setState(() {});
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
