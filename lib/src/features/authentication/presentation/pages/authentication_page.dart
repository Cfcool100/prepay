import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:propay/gen/colors.gen.dart';
import 'package:propay/src/core/custom_widget_shared/rent_cart_button.dart';
import 'package:propay/src/features/authentication/bloc/signin/signin_bloc.dart';
import 'package:propay/src/features/authentication/bloc/signin/signin_state.dart';
import 'package:propay/src/features/authentication/bloc/toggle_form_bloc.dart';
import 'package:propay/src/features/authentication/presentation/components/sign_up_component.dart';
import '../components/components.dart';

typedef VoidCallback = void Function();

//
class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ToggleFormBloc(),
        ),
        BlocProvider(
          create: (context) => SignInBloc(),
        ),
      ],
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: BlocBuilder<ToggleFormBloc, bool>(
              builder: (context, isSign) {
                return Column(
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    if (isSign)
                      const SignUpComponent()
                    else
                      const SignInComponent(),
                    SizedBox(
                      height: 20.h,
                    ),
                    BlocBuilder<SignInBloc, FormSignState>(
                      builder: (context, state) {
                        return RentCarButton(
                            title: isSign ? 'Sign Up' : 'Sign In',
                            onPressed: state.isValid ? () {} : null);
                      },
                    ),
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
                              isSign
                                  ? 'Have an account ?'
                                  : 'Don\'t have an account ?',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w400, fontSize: 11.sp),
                            ),
                            TextButton(
                                onPressed: () {
                                  // callback(true);
                                  context.read<ToggleFormBloc>().toggleForm();
                                },
                                child: Text(
                                  isSign ? 'Sign In' : 'Sign Up',
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
              },
            ),
          ),
        ),
      ),
    );
  }
}
