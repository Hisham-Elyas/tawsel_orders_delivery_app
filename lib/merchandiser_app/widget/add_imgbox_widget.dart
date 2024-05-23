import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddImgBoxWidet extends StatelessWidget {
  final double width;
  final double height;
  final void Function() onTap;
  const AddImgBoxWidet(
      {super.key,
      required this.width,
      required this.height,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: const Color(0xFFEEEEEE),
        borderRadius: BorderRadius.circular(20.r),
        elevation: 2,
        child: InkWell(
          borderRadius: BorderRadius.circular(20.r),
          onTap: () {},
          child: SizedBox(
            width: width,
            height: height,
            child: const FittedBox(
                child: Icon(
              Icons.add,
              color: Color(0xFFFFFFFF),
            )),
          ),
        ));
  }
}
