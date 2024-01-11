import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:propay/gen/colors.gen.dart';

class RentCarButton extends StatelessWidget {
  const RentCarButton(
      {super.key, required this.title, required this.onPressed});

  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: MyColorName.teal,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.r))),
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: GoogleFonts.roboto(
                    color: MyColorName.white, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ));
  }
}
