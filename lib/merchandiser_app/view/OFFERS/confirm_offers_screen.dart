// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:tawsel_orders_delivery_app/merchandiser_app/widget/add_imgbox_widget.dart';

import '../../app_color.dart';
import '../../widget/custom_buttom_widget.dart';

class ConfirmOffersScreen extends StatelessWidget {
  const ConfirmOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColor.mainColor,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            )),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w)
                  .copyWith(top: 15.h, bottom: 10.h),
              child: ListView.separated(
                  padding: EdgeInsets.only(bottom: 80.h),
                  separatorBuilder: (context, index) => SizedBox(height: 10.h),
                  itemCount: 2,
                  itemBuilder: (context, index) =>
                      BoxOffersWidget(onTapAddImgBox: () {})),
            ),

            ///  Confirm Buttom
            Positioned(
              left: 53,
              right: 53,
              bottom: 20,
              child: CustomButtom(
                titel: "Confirm",
                onTap: () {},
              ),
            )
          ],
        ));
  }
}

class BoxOffersWidget extends StatelessWidget {
  final void Function() onTapAddImgBox;
  const BoxOffersWidget({
    Key? key,
    required this.onTapAddImgBox,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 151.h,
      width: 376.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(width: 1.w),
          borderRadius: BorderRadius.circular(10.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AddImgBoxWidet(
            width: 133.w,
            height: 126.h,
            onTap: onTapAddImgBox,
          ),
          Column(
            children: [
              //// Category
              Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(11.r),
                child: Container(
                  width: 203.w,
                  height: 36.h,
                  alignment: AlignmentDirectional.centerStart,
                  padding: EdgeInsetsDirectional.only(start: 10.w),
                  decoration: BoxDecoration(
                      color: const Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(11.r)),
                  child: Text(
                    "Category",
                    style: TextStyle(
                        color: const Color(0xff3F3D3D),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp),
                  ),
                ),
              ),
              SizedBox(height: 9.h),
              //// Product
              Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(11.r),
                child: Container(
                  width: 203.w,
                  height: 36.h,
                  alignment: AlignmentDirectional.centerStart,
                  padding: EdgeInsetsDirectional.only(start: 10.w),
                  decoration: BoxDecoration(
                      color: const Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(11.r)),
                  child: Text(
                    "Product",
                    style: TextStyle(
                        color: const Color(0xff3F3D3D),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp),
                  ),
                ),
              ),
              SizedBox(height: 9.h),
              //// Price
              Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(11.r),
                child: Container(
                  width: 203.w,
                  height: 36.h,
                  alignment: AlignmentDirectional.centerStart,
                  padding: EdgeInsetsDirectional.only(start: 10.w),
                  decoration: BoxDecoration(
                      color: const Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(11.r)),
                  child: Text(
                    "Price",
                    style: TextStyle(
                        color: const Color(0xff3F3D3D),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
