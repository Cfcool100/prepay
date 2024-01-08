import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:propay/gen/colors.gen.dart';
import 'package:propay/src/features/counter/bloc/counter_bloc.dart';
import 'package:propay/src/features/counter/bloc/counter_event.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Presentation model bloc',
          style: GoogleFonts.roboto(
              color: MyColorName.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Compteur :'),
              const SizedBox(
                width: 10,
              ),
              BlocBuilder<CounterBloc, int>(
                builder: (context, state) {
                  return Text(
                    '$state',
                    style: GoogleFonts.roboto(fontSize: 18.sp),
                  );
                },
              ),
            ],
          )
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(CounterIncrementWhenClickBtn());
            },
            child: const Icon(Icons.add),
          ),
          SizedBox(
            height: 10.h,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(CounterDecrementWhenClickBtn());
            },
            child: Text(
              '-',
              style: GoogleFonts.roboto(fontSize: 31.sp),
            ),
          ),
        ],
      ),
    );
  }
}
