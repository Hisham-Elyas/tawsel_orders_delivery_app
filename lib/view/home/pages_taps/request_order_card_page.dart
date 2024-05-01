import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app_color.dart';
import '../../widget/custton_buttom.dart';

class RequestOrderCardPage extends StatelessWidget {
  final void Function() onTapCancel;
  final void Function() onTapAccept;
  final void Function() onTap;
  final int itemCount;
  const RequestOrderCardPage({
    super.key,
    required this.onTapCancel,
    required this.onTapAccept,
    required this.onTap,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) => SizedBox(height: 20.h),
        itemCount: itemCount,
        itemBuilder: (context, index) => InkWell(
              onTap: onTap,
              enableFeedback: true,
              borderRadius: BorderRadius.circular(5.r),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(5.r),
                child: Container(
                  width: 335.w,
                  height: 123.h,
                  padding: EdgeInsets.all(14.dg),
                  decoration: BoxDecoration(
                      color: AppColor.backgroundCard,
                      borderRadius: BorderRadius.circular(5.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Adel Kanaan ",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColor.fontColor2,
                            ),
                          ),
                          Text(
                            "25/4/2024   01 : 30 PM",
                            style: TextStyle(
                              color: AppColor.fontColor2,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Address",
                            style: TextStyle(
                              color: AppColor.fontColor2,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 160.w,
                            child: Text(
                              "saudi arabia dammam king khalid",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: AppColor.fontColor2,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomBouttm(
                            title: "Accept",
                            color: AppColor.green,
                            onTap: onTapAccept,
                          ),
                          CustomBouttm(
                            title: "Cancel",
                            color: AppColor.red,
                            onTap: onTapCancel,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ));
  }
}
