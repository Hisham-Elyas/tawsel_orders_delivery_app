import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final double? width;
  final double? height;
  final String? hintText;
  final int? maxLines;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  const CustomTextFormField({
    Key? key,
    this.width,
    this.height,
    this.hintText,
    this.maxLines = 1,
    this.validator,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: const Color(0xffF6F6F6),
            borderRadius: BorderRadius.all(Radius.circular(10.r))),
        child: TextFormField(
            maxLines: maxLines,
            onSaved: onSaved,
            validator: validator,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                  color: const Color(0xff9B9B9B),
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide:
                      const BorderSide(width: 1, color: Color(0xff787878))),
            )),
      ),
    );
  }
}
