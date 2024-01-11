import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:propay/gen/assets.gen.dart';
import 'package:propay/gen/colors.gen.dart';
import 'package:propay/src/core/core.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image:
                        AssetImage(MyAssets.images.miniCoupeNoirRoute.path))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              height: .35.sh,
              width: 1.sw,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Find the perfect car\nfor you!',
                        style: GoogleFonts.roboto(
                            fontSize: 27.sp,
                            color: MyColorName.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Choose your car to rent from a wide range of the cars on location',
                        style: GoogleFonts.roboto(
                            fontSize: 12.sp,
                            color: MyColorName.white.withOpacity(.5),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  RentCarButton(
                    title: 'Get Started',
                    onPressed: () {
                      context.go('/${PageRoutes.authentication}');
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
