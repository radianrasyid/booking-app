import 'package:booking_app/pages/Home/home_page.dart';
import 'package:booking_app/utils/constants/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotelTabPart extends StatelessWidget {
  const HotelTabPart({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
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
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: const [
                            DropdownMenuItem(
                              value: "Blok M, Jakarta Selatan",
                              child: Text("Blok M, Jakarta Selatan"),
                            ),
                            DropdownMenuItem(
                              value: "Batu IX, Tanjungpinang",
                              child: Text("Batu IX, Tanjungpinang"),
                            ),
                            DropdownMenuItem(
                              value: "Suka Berenang, Tanjungpinang",
                              child: Text("Suka Berenang, Tanjungpinang"),
                            ),
                          ],
                          onChanged: (String? val) {},
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: AppColor.FontPrimary,
                              fontWeight: FontWeight.w600),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      style: TextStyle(fontWeight: FontWeight.w600),
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
                            const MaterialStatePropertyAll(AppColor.Blue4),
                        elevation: const MaterialStatePropertyAll(0),
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 0),
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
            SizedBox(
              height: 270.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
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
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Image(
                              image: AssetImage("assets/img/hotel-photo.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 10.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hyatt Regency",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
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
                                      "Yogyakarta, DIY".toUpperCase(),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "125",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.sp,
                                                color: AppColor.FontPrimary)),
                                        TextSpan(
                                            text: "/night",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                color: AppColor.Font2))
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
                                          4.toString(),
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
                  ),
                  SizedBox(
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
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Image(
                              image: AssetImage("assets/img/hotel-photo.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 10.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hyatt Regency",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
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
                                      "Yogyakarta, DIY".toUpperCase(),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "125",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.sp,
                                                color: AppColor.FontPrimary)),
                                        TextSpan(
                                            text: "/night",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                color: AppColor.Font2))
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
                                          4.toString(),
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
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.explore,
                      color: AppColor.OrangePrimary,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Text(
                      "Insights",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 250.h,
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              decoration: BoxDecoration(
                  color: AppColor.Font3,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage("assets/img/hotel-photo.jpg"),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: 100.h,
                        child: PageView(
                          controller: pageController,
                          padEnds: true,
                          physics: const BouncingScrollPhysics(),
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                                vertical: 10.h,
                              ),
                              margin: EdgeInsets.only(bottom: 10.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColor.Base4),
                              child: Flex(
                                mainAxisSize: MainAxisSize.max,
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "10 Tips agar perjalanan menyenangkan",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.remove_red_eye,
                                                size: 10.h,
                                              ),
                                              SizedBox(
                                                width: 3.w,
                                              ),
                                              Text(
                                                "123",
                                                style:
                                                    TextStyle(fontSize: 10.sp),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.thumb_up_sharp,
                                                size: 10.h,
                                              ),
                                              SizedBox(
                                                width: 3.w,
                                              ),
                                              Text(
                                                "23",
                                                style:
                                                    TextStyle(fontSize: 10.sp),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                                  SizedBox(
                                    width: 100.w,
                                    height: 25.h,
                                    child: ElevatedButton.icon(
                                        style: ButtonStyle(
                                            elevation:
                                                const MaterialStatePropertyAll(
                                                    0),
                                            padding:
                                                const MaterialStatePropertyAll(
                                                    EdgeInsets.zero),
                                            backgroundColor:
                                                const MaterialStatePropertyAll(
                                                    AppColor.BluePrimary),
                                            shape: MaterialStatePropertyAll(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)))),
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.read_more,
                                          color: AppColor.Base4,
                                          size: 15.h,
                                        ),
                                        label: Text(
                                          "Read More",
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              color: AppColor.Base4),
                                        )),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                                vertical: 10.h,
                              ),
                              margin: EdgeInsets.only(bottom: 10.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColor.Base4),
                              child: Flex(
                                mainAxisSize: MainAxisSize.max,
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "10 Tips agar perjalanan menyenangkan",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.remove_red_eye,
                                                size: 10.h,
                                              ),
                                              SizedBox(
                                                width: 3.w,
                                              ),
                                              Text(
                                                "123",
                                                style:
                                                    TextStyle(fontSize: 10.sp),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.thumb_up_sharp,
                                                size: 10.h,
                                              ),
                                              SizedBox(
                                                width: 3.w,
                                              ),
                                              Text(
                                                "23",
                                                style:
                                                    TextStyle(fontSize: 10.sp),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                                  SizedBox(
                                    width: 100.w,
                                    height: 25.h,
                                    child: ElevatedButton.icon(
                                        style: const ButtonStyle(
                                            padding: MaterialStatePropertyAll(
                                                EdgeInsets.zero)),
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.read_more,
                                          size: 15.h,
                                        ),
                                        label: Text(
                                          "Read More",
                                          style: TextStyle(fontSize: 10.sp),
                                        )),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                                vertical: 10.h,
                              ),
                              margin: EdgeInsets.only(bottom: 10.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColor.Base4),
                              child: Flex(
                                mainAxisSize: MainAxisSize.max,
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "10 Tips agar perjalanan menyenangkan",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.remove_red_eye,
                                                size: 10.h,
                                              ),
                                              SizedBox(
                                                width: 3.w,
                                              ),
                                              Text(
                                                "123",
                                                style:
                                                    TextStyle(fontSize: 10.sp),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.thumb_up_sharp,
                                                size: 10.h,
                                              ),
                                              SizedBox(
                                                width: 3.w,
                                              ),
                                              Text(
                                                "23",
                                                style:
                                                    TextStyle(fontSize: 10.sp),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                                  SizedBox(
                                    width: 100.w,
                                    height: 25.h,
                                    child: ElevatedButton.icon(
                                        style: const ButtonStyle(
                                            padding: MaterialStatePropertyAll(
                                                EdgeInsets.zero)),
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.read_more,
                                          size: 15.h,
                                        ),
                                        label: Text(
                                          "Read More",
                                          style: TextStyle(fontSize: 10.sp),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
