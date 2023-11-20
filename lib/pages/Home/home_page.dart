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
      initialIndex: 0,
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
                        label: const Text("4"),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.mail,
                            color: AppColor.Base4,
                          ),
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
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
                        hintStyle: const TextStyle(fontWeight: FontWeight.w600),
                        filled: true,
                        fillColor: AppColor.Base4,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: AppColor.Base4)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: AppColor.Base4)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: AppColor.Base4)),
                        prefixIcon: const Icon(Icons.search),
                        prefixIconColor: AppColor.BluePrimary,
                        prefixStyle:
                            const TextStyle(color: AppColor.BluePrimary),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 0)),
                    style: const TextStyle(fontWeight: FontWeight.w600),
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
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: AppColor.Blue4,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Icon(
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
                          const VerticalDivider(
                            color: AppColor.Base4,
                            thickness: 1,
                            width: 1,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: AppColor.Blue4,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Icon(
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
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  const Icon(Icons.business,
                                      color: AppColor.BluePrimary),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  const Text(
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
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  const Icon(Icons.train,
                                      color: AppColor.BluePrimary),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  const Text(
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
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  const Icon(Icons.directions_bus,
                                      color: AppColor.BluePrimary),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  const Text(
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
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  const Icon(Icons.flight,
                                      color: AppColor.BluePrimary),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  const Text(
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
                        labelPadding: const EdgeInsets.all(10),
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
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.near_me,
                                            color: AppColor.OrangePrimary,
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          const Text(
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
                                                value:
                                                    "Blok M, Jakarta Selatan",
                                                elevation: 0,
                                                underline: Container(
                                                  height: 0,
                                                ),
                                                alignment:
                                                    Alignment.centerRight,
                                                icon: const Icon(
                                                    Icons.keyboard_arrow_down),
                                                items: const [
                                                  DropdownMenuItem(
                                                    value:
                                                        "Blok M, Jakarta Selatan",
                                                    child: Text(
                                                        "Blok M, Jakarta Selatan"),
                                                  ),
                                                  DropdownMenuItem(
                                                    value:
                                                        "Batu IX, Tanjungpinang",
                                                    child: Text(
                                                        "Batu IX, Tanjungpinang"),
                                                  ),
                                                  DropdownMenuItem(
                                                    value:
                                                        "Suka Berenang, Tanjungpinang",
                                                    child: Text(
                                                        "Suka Berenang, Tanjungpinang"),
                                                  ),
                                                ],
                                                onChanged: (String? val) {},
                                                style: TextStyle(
                                                    fontSize: 10.sp,
                                                    color: AppColor.FontPrimary,
                                                    fontWeight:
                                                        FontWeight.w600),
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
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  const top_nearby_card(
                                    discount: false,
                                    image: "assets/img/hotel-photo.jpg",
                                    location: "Yogyakarta, DIY",
                                    price: "125K",
                                    rating: 4,
                                    title: "Keraton Yogyakarta",
                                  ),
                                  const top_nearby_card(
                                    discount: false,
                                    image: "assets/img/hotel-photo.jpg",
                                    location: "Yogyakarta, DIY",
                                    price: "125K",
                                    rating: 4,
                                    title: "Keraton Yogyakarta",
                                  ),
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.recommend_rounded,
                                            color: AppColor.OrangePrimary,
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          const Text(
                                            "Recommendation",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 25.h,
                                        child: IconButton.filled(
                                            alignment: Alignment.center,
                                            color: AppColor.BluePrimary,
                                            padding: EdgeInsets.zero,
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  const MaterialStatePropertyAll(
                                                      AppColor.Blue4),
                                              elevation:
                                                  const MaterialStatePropertyAll(
                                                      0),
                                              padding: MaterialStatePropertyAll(
                                                EdgeInsets.symmetric(
                                                    horizontal: 10.w,
                                                    vertical: 0),
                                              ),
                                            ),
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.arrow_forward_ios_rounded,
                                              size: 15.h,
                                            )),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                    width: 200.w,
                                    child: Card(
                                      semanticContainer: true,
                                      elevation: 0,
                                      child: Flex(
                                        direction: Axis.vertical,
                                        children: [
                                          Container(
                                            height: 170.w,
                                            width: 200.w,
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Image(
                                              image: AssetImage(
                                                  "assets/img/hotel-photo.jpg"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.w,
                                                vertical: 10.h),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Hyatt Regency",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16.sp),
                                                ),
                                                SizedBox(
                                                  height: 3.h,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.location_on_rounded,
                                                      size: 15.h,
                                                      color: AppColor.Font2,
                                                    ),
                                                    SizedBox(
                                                      width: 2.w,
                                                    ),
                                                    Text(
                                                      "Yogyakarta, DIY"
                                                          .toUpperCase(),
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: AppColor.Font2,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text: "125",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 14.sp,
                                                                color: AppColor
                                                                    .FontPrimary)),
                                                        TextSpan(
                                                            text: "/night",
                                                            style: TextStyle(
                                                                fontSize: 14.sp,
                                                                color: AppColor
                                                                    .Font2))
                                                      ]),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          color: AppColor
                                                              .OrangePrimary,
                                                          size: 15.h,
                                                        ),
                                                        Text(
                                                          4.toString(),
                                                          style: TextStyle(
                                                            fontSize: 10.sp,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
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
                                child: const Text(
                                  "TRAIN",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                )),
                          ),
                          Center(
                            child: ElevatedButton(
                                onPressed: () {
                                  print(state1.currentTab);
                                },
                                child: const Text(
                                  "BUS",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                )),
                          ),
                          Center(
                            child: ElevatedButton(
                                onPressed: () {
                                  print(state1.currentTab);
                                },
                                child: const Text(
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
    );
  }
}

class top_nearby_card extends StatelessWidget {
  const top_nearby_card({
    super.key,
    required this.image,
    required this.discount,
    required this.location,
    required this.price,
    required this.rating,
    required this.title,
  });

  final String image;
  final String title;
  final String location;
  final String price;
  final double rating;
  final bool discount;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.only(right: 10.w),
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Container(
              height: 110.h,
              width: 110.h,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        size: 15.h,
                        color: AppColor.Font2,
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        location.toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColor.Font2,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: price,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                  color: AppColor.FontPrimary)),
                          TextSpan(
                              text: "/night",
                              style: TextStyle(
                                  fontSize: 14.sp, color: AppColor.Font2))
                        ]),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: AppColor.OrangePrimary,
                            size: 15.h,
                          ),
                          Text(
                            rating.toString(),
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
