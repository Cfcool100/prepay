import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:propay/gen/colors.gen.dart';
import 'package:propay/src/core/core.dart';

class SignInComponent extends StatelessWidget {
  const SignInComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            'Sign In',
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold, fontSize: 25.sp),
          ),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'resend Password',
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold, fontSize: 13.sp),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        RentCarButton(title: 'Sign In', onPressed: () {}),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  'Don\'t have an account ?',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400, fontSize: 11.sp),
                ),
                TextButton(
                    onPressed: () {
                      // context.pop();
                    },
                    child: Text(
                      'sign up',
                      style: GoogleFonts.roboto(
                          color: MyColorName.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp),
                    ))
              ],
            ),
          ],
        ),
      ],
    );
  }
}
