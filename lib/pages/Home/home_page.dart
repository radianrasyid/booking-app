import 'package:booking_app/pages/Home/bloc/home_bloc.dart';
import 'package:booking_app/utils/constants/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeBloc bloc1 = HomeBloc();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: AppColor.Base3,
        appBar: AppBar(
          backgroundColor: AppColor.Blue2,
          toolbarHeight: 0,
        ),
        body: Column(
          children: [
            Container(
              height: 150.h,
              padding: EdgeInsets.only(bottom: 5.h, right: 10.w, left: 10.w),
              width: double.infinity,
              decoration: const BoxDecoration(color: AppColor.Blue2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Day",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColor.Base4),
                          ),
                          Text(
                            "Blok M, Jakarta Selatan",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                                color: AppColor.Base4),
                          )
                        ],
                      ),
                      Badge(
                        label: Text("4"),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.mail,
                            color: AppColor.Base4,
                          ),
                          padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextField(
                    cursorHeight: 13.h,
                    decoration: InputDecoration(
                        hintText: "Explore something fun",
                        hintStyle: TextStyle(fontWeight: FontWeight.w600),
                        filled: true,
                        fillColor: AppColor.Base4,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: AppColor.Base4)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: AppColor.Base4)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: AppColor.Base4)),
                        prefixIcon: Icon(Icons.search),
                        prefixIconColor: AppColor.BluePrimary,
                        prefixStyle: TextStyle(color: AppColor.BluePrimary),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 0)),
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.BluePrimary,
                    ),
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: AppColor.Blue4,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.wallet,
                                  color: AppColor.Base4,
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "BALANCE",
                                    style: TextStyle(
                                        color: AppColor.Base4,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10.sp),
                                  ),
                                  Text(
                                    "Rp154.109",
                                    style: TextStyle(
                                      color: AppColor.Base4,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          VerticalDivider(
                            color: AppColor.Base4,
                            thickness: 1,
                            width: 1,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: AppColor.Blue4,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.event,
                                  color: AppColor.Base4,
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "PROMO",
                                    style: TextStyle(
                                        color: AppColor.Base4,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10.sp),
                                  ),
                                  Text(
                                    "14 Code",
                                    style: TextStyle(
                                      color: AppColor.Base4,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      final homeTabState = state as HomeInitial;

                      return TabBar(
                        tabs: [
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColor.Font4,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Icon(Icons.business,
                                      color: AppColor.BluePrimary),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "Hotel",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColor.Font4,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Icon(Icons.train,
                                      color: AppColor.BluePrimary),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "Train",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColor.Font4,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Icon(Icons.directions_bus,
                                      color: AppColor.BluePrimary),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "Bus",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColor.Font4,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Icon(Icons.flight,
                                      color: AppColor.BluePrimary),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "Flight",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                        splashFactory: NoSplash.splashFactory,
                        labelPadding: EdgeInsets.all(10),
                        isScrollable: true,
                        tabAlignment: TabAlignment.center,
                        dividerColor: AppColor.Base2,
                        onTap: (value) {
                          BlocProvider.of<HomeBloc>(context)
                              .add(HomeTabChange(newTab: value));
                        },
                        labelColor: AppColor.BluePrimary,
                        indicatorColor: Colors.transparent,
                        automaticIndicatorColorAdjustment: true,
                      );
                    },
                  ),
                  BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
                    final state1 = state as HomeInitial;

                    return Expanded(
                      child: TabBarView(
                        children: [
                          SingleChildScrollView(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.near_me,
                                        color: AppColor.OrangePrimary,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Text(
                                        "Top Nearby",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "LOCATION",
                                            style: TextStyle(
                                              color: AppColor.FontPrimary,
                                              letterSpacing: 2.w,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                          DropdownButton(
                                            padding: EdgeInsets.zero,
                                            isDense: true,
                                            value: "Blok M, Jakarta Selatan",
                                            elevation: 0,
                                            underline: Container(
                                              height: 0,
                                            ),
                                            alignment: Alignment.centerRight,
                                            icon:
                                                Icon(Icons.keyboard_arrow_down),
                                            items: [
                                              DropdownMenuItem(
                                                child: Text(
                                                    "Blok M, Jakarta Selatan"),
                                                value:
                                                    "Blok M, Jakarta Selatan",
                                              ),
                                              DropdownMenuItem(
                                                child: Text(
                                                    "Batu IX, Tanjungpinang"),
                                                value: "Batu IX, Tanjungpinang",
                                              ),
                                              DropdownMenuItem(
                                                child: Text(
                                                    "Suka Berenang, Tanjungpinang"),
                                                value:
                                                    "Suka Berenang, Tanjungpinang",
                                              ),
                                            ],
                                            onChanged: (String? val) {},
                                            style: TextStyle(
                                              fontSize: 10.sp,
                                              color: AppColor.Font2,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 2.w,
                                      ),
                                      Icon(
                                        Icons.my_location,
                                        size: 19.w,
                                        color: AppColor.BluePrimary,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Center(
                            child: ElevatedButton(
                                onPressed: () {
                                  print(state1.currentTab);
                                },
                                child: Text(
                                  "TRAIN",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                )),
                          ),
                          Center(
                            child: ElevatedButton(
                                onPressed: () {
                                  print(state1.currentTab);
                                },
                                child: Text(
                                  "BUS",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                )),
                          ),
                          Center(
                            child: ElevatedButton(
                                onPressed: () {
                                  print(state1.currentTab);
                                },
                                child: Text(
                                  "FLIGHT",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                )),
                          ),
                        ],
                      ),
                    );
                  })
                ],
              ),
            )
          ],
        ),
      ),
      initialIndex: 0,
    );
  }
}
