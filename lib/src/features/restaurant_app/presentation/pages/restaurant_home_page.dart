import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:propay/gen/assets.gen.dart';
import 'package:propay/gen/colors.gen.dart';

class RestaurantHomePage extends StatefulWidget {
  const RestaurantHomePage({super.key});

  @override
  State<RestaurantHomePage> createState() => _RestaurantHomePageState();
}

class _RestaurantHomePageState extends State<RestaurantHomePage>
    with TickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f2f1),
      appBar: AppBar(
        backgroundColor: const Color(0xfff4f2f1),
        leadingWidth: 150.w,
        leading: Row(
          children: [
            SizedBox(
              width: 10.w,
            ),
            const Icon(
              Icons.location_on_rounded,
              color: Color(0xffeb385a),
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              'Boston, MA',
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.search,
              size: 25.h,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          // CARDS
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            padding: EdgeInsets.all(10.h),

            // height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: MyColorName.white,
                borderRadius: BorderRadius.circular(10.r)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order again?',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                ),
                Text(
                  'Hot Salami Pizza, Cole Slow, Pepsi',
                  style: TextStyle(fontSize: 13.sp, color: Colors.grey),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 40.h,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Positioned(
                                    left: 40.w,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: MyColorName.white,
                                          border: Border.all(
                                              color:
                                                  Colors.grey.withOpacity(.5)),
                                          shape: BoxShape.circle),
                                      padding: EdgeInsets.all(3.h),
                                      child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              MyAssets.images.pepsi.path)),
                                    ),
                                  ),
                                  Positioned(
                                    left: 20.w,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: MyColorName.white,
                                          border: Border.all(
                                              color:
                                                  Colors.grey.withOpacity(.5)),
                                          shape: BoxShape.circle),
                                      padding: EdgeInsets.all(3.h),
                                      child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              MyAssets.images.fromage.path)),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: MyColorName.white,
                                        border: Border.all(
                                            color: Colors.grey.withOpacity(.5)),
                                        shape: BoxShape.circle),
                                    padding: EdgeInsets.all(3.h),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          MyAssets.images.pizza.path),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      height: 40.h,
                                      color: Colors.white,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 23.h,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.r)),
                                                    backgroundColor:
                                                        Colors.red),
                                                onPressed: () {},
                                                child: const Text(
                                                  '\$23.90',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 30.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border:
                                    Border.all(color: Colors.red, width: 2)),
                            child: const Icon(
                              Icons.add,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            child: Column(
              children: [
                TabBar(
                  controller: controller,
                  tabs: const <Widget>[
                    Tab(
                      icon: Icon(Icons.cloud_outlined),
                    ),
                    Tab(
                      icon: Icon(Icons.cloud_outlined),
                    ),
                    Tab(
                      icon: Icon(Icons.beach_access_sharp),
                    ),
                    Tab(
                      icon: Icon(Icons.brightness_5_sharp),
                    ),
                  ],
                ),
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: TabBarView(controller: controller, children: [
                    // 1 er section

                    ListView.builder(itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 5.h),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 55.h,
                              backgroundImage:
                                  AssetImage(MyAssets.images.pepsi.path),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Mushroom Pizza',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  '410g',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: .5.sw,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 40.h,
                                        color: Colors.white,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 23.h,
                                              child: ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5.r)),
                                                      backgroundColor:
                                                          Colors.red),
                                                  onPressed: () {},
                                                  child: const Text(
                                                    '\$23.90',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 30.h,
                                        width: 30.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                            border: Border.all(
                                                color: Colors.red, width: 2)),
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
                    const Center(child: Text("2")),
                    const Center(child: Text("3")),
                    const Center(child: Text("4")),
                  ]),
                ))
              ],
            ),
          ))
        ],
      ),
      bottomSheet: Material(
        elevation: 10,
        child: SizedBox(
          height: 60.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '\$24.99',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 21.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '3 items',
                    style: TextStyle(color: Colors.grey, fontSize: 13.sp),
                  ),
                ],
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r))),
                  onPressed: () {},
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    height: 45.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Go to Cart',
                          style: TextStyle(
                              color: MyColorName.white, fontSize: 14.sp),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
