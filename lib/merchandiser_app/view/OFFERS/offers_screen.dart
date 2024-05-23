import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_color.dart';
import '../../widget/add_imgbox_widget.dart';
import '../../widget/custom_buttom_widget.dart';
import '../../widget/custom_dropdown_button_widget.dart';
import '../../widget/custom_textfield_widget.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w).copyWith(
            top: 15.h,
            bottom: 10.h,
          ),
          child: Column(children: [
            /// Shelf DropdownButton
            CustomDropdownButton(
              onChanged: (value) {},
              onTap: () {},
              hintText: "Shelf",
              items: [
                DropdownMenuItem(
                    value: 1,
                    child: Text("1",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14.sp))),
                DropdownMenuItem(
                    value: 2,
                    child: Text("2",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14.sp))),
              ],
            ),
            SizedBox(height: 10.h),

            /// Category DropdownButton
            CustomDropdownButton(
              onChanged: (value) {},
              onTap: () {},
              hintText: "Category",
              items: [
                DropdownMenuItem(
                    value: 1,
                    child: Text("1",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14.sp))),
                DropdownMenuItem(
                    value: 2,
                    child: Text("2",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14.sp))),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextFormField(
                  width: 171,
                  height: 49,
                  hintText: "Product",
                  onSaved: (value) {},
                  validator: (value) {
                    return null;
                  },
                ),
                CustomTextFormField(
                  width: 171,
                  height: 49,
                  hintText: "Price",
                  onSaved: (value) {},
                  validator: (value) {
                    return null;
                  },
                ),
              ],
            ),
            SizedBox(height: 10.h),

            CustomTextFormField(
              width: 360,
              height: 70,
              maxLines: 3,
              hintText: "Details",
              onSaved: (value) {},
              validator: (value) {
                return null;
              },
            ),
            SizedBox(height: 15.h),
            AddImgBoxWidet(
              width: 333.w,
              height: 287.h,
              onTap: () {},
            ),
            SizedBox(height: 20.h),

            //  Add Another Product Buttom
            CustomButtom(
              isOutLine: true,
              titel: "Add Another Product",
              onTap: () {},
            ),
            SizedBox(height: 15.h),
            //  View Offers Buttom
            CustomButtom(
              titel: "View Offers",
              onTap: () {},
            )
          ]),
        ),
      ),
    );
  }
}
