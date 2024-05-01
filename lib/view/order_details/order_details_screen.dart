import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tawsel_orders_delivery_app/view/widget/custton_buttom.dart';

import '../../app_color.dart';

class OrderDetailscreen extends StatelessWidget {
  const OrderDetailscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.w),
        child: Column(
          children: [
            SizedBox(height: 24.h),
            Text(
              "Order Details",
              style: TextStyle(
                color: AppColor.fontColor1,
                fontWeight: FontWeight.w700,
                fontSize: 34.sp,
              ),
            ),
            SizedBox(height: 22.h),
            // order no and date and time
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order №1947034",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w900,
                    color: AppColor.fontColor2,
                  ),
                ),
                Text(
                  "25/4/2024   01 : 30 PM",
                  style: TextStyle(
                    color: AppColor.fontColor2,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "3 items",
                style: TextStyle(
                  color: AppColor.fontColor2,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 17.h),

            /// items list
            Expanded(
              child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(height: 24.h),
                  itemCount: 4,
                  itemBuilder: (context, index) => const ItemCardWidget()),
            ),

            /// Order information and price

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Order information",
                style: TextStyle(
                  color: AppColor.fontColor2,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Text(
              "saudi arabia dammam king khalid",
              style: TextStyle(
                color: AppColor.fontColor2,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              "111.6",
              style: TextStyle(
                color: AppColor.fontColor2,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 40.h),

            /// Home Buttom
            CustomBouttm(
              height: 48.h,
              width: 172.w,
              fontSize: 26.sp,
              radius: 15.r,
              fontWeight: FontWeight.w700,
              onTap: () {
                Get.back();
              },
              color: AppColor.mainColor,
              title: "Home",
            ),
            SizedBox(height: 23.h),
          ],
        ),
      )),
    );
  }
}

class ItemCardWidget extends StatelessWidget {
  const ItemCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(8.r),
      child: Container(
        height: 104.h,
        width: 343.w,
        padding: EdgeInsets.symmetric(vertical: 15.w, horizontal: 10.h),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r)),
        child: Row(children: [
          Image.asset(
            "assets/png/food_img1.png",
            width: 104.w,
            height: 96.h,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 13.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Beef Juicy Burger",
                style: TextStyle(
                  color: AppColor.fontColor2,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                "Size :  L",
                style: TextStyle(
                  color: AppColor.fontColor2,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Count  :  1 ",
                style: TextStyle(
                  color: AppColor.fontColor2,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              "51",
              style: TextStyle(
                color: AppColor.fontColor2,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
