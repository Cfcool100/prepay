import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:propay/src/core/custom_widget_shared/title_auth.dart';

// typedef VoidCallback = void Function(bool value);

class SignUpComponent extends StatelessWidget {
  const SignUpComponent({super.key});

  // final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleAuthText(
          title: 'Sign Up',
        ),
        SizedBox(
          height: 50.h,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Phone nulmber',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, fontSize: 12.sp),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  isDense: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey.withOpacity(.5)), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  contentPadding: EdgeInsets.all(12.h),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey.withOpacity(.5)), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Password',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, fontSize: 12.sp),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  isDense: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey.withOpacity(.5)), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  contentPadding: EdgeInsets.all(12.h),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey.withOpacity(.5)), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Phone nulmber',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, fontSize: 12.sp),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  isDense: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey.withOpacity(.5)), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  contentPadding: EdgeInsets.all(12.h),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey.withOpacity(.5)), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Password',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold, fontSize: 12.sp),
              ),
              SizedBox(
                height: 5.h,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  isDense: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey.withOpacity(.5)), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  contentPadding: EdgeInsets.all(12.h),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1,
                        color: Colors.grey.withOpacity(.5)), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
