import 'package:booking_app/components/tab_view/hotal_tab_view.dart';
import 'package:booking_app/pages/Flight/ui/flight_main_page.dart';
import 'package:booking_app/pages/Home/bloc/home_bloc.dart';
import 'package:booking_app/utils/constants/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeBloc bloc1 = HomeBloc();
  final PageController pageController = PageController();
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
                  Container(
                    height: 50.h,
                    margin: EdgeInsets.only(bottom: 10.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                    width: 1.sw,
                    child: ListView(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          height: 20.h,
                          width: 100.w,
                          child: ElevatedButton.icon(
                              style: ButtonStyle(
                                  backgroundColor:
                                      const MaterialStatePropertyAll(
                                          AppColor.Font4),
                                  iconColor: const MaterialStatePropertyAll(
                                      AppColor.BluePrimary),
                                  elevation:
                                      const MaterialStatePropertyAll(0.5),
                                  padding: const MaterialStatePropertyAll(
                                      EdgeInsets.zero),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              onPressed: () {},
                              icon: const Icon(Icons.business),
                              label: const Text(
                                "Hotel",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.FontPrimary),
                              )),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        SizedBox(
                          height: 20.h,
                          width: 100.w,
                          child: ElevatedButton.icon(
                              style: ButtonStyle(
                                  backgroundColor:
                                      const MaterialStatePropertyAll(
                                          AppColor.Font4),
                                  iconColor: const MaterialStatePropertyAll(
                                      AppColor.BluePrimary),
                                  elevation:
                                      const MaterialStatePropertyAll(0.5),
                                  padding: const MaterialStatePropertyAll(
                                      EdgeInsets.zero),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              onPressed: () {},
                              icon: const Icon(Icons.train),
                              label: const Text(
                                "Train",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.FontPrimary),
                              )),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        SizedBox(
                          height: 20.h,
                          width: 100.w,
                          child: ElevatedButton.icon(
                              style: ButtonStyle(
                                  backgroundColor:
                                      const MaterialStatePropertyAll(
                                          AppColor.Font4),
                                  iconColor: const MaterialStatePropertyAll(
                                      AppColor.BluePrimary),
                                  elevation:
                                      const MaterialStatePropertyAll(0.5),
                                  padding: const MaterialStatePropertyAll(
                                      EdgeInsets.zero),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              onPressed: () {},
                              icon: const Icon(Icons.directions_bus),
                              label: const Text(
                                "Bus",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.FontPrimary),
                              )),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        SizedBox(
                          height: 20.h,
                          width: 100.w,
                          child: ElevatedButton.icon(
                              style: ButtonStyle(
                                  backgroundColor:
                                      const MaterialStatePropertyAll(
                                          AppColor.Font4),
                                  iconColor: const MaterialStatePropertyAll(
                                      AppColor.BluePrimary),
                                  elevation:
                                      const MaterialStatePropertyAll(0.5),
                                  padding: const MaterialStatePropertyAll(
                                      EdgeInsets.zero),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const FligthPage()),
                                );
                              },
                              icon: const Icon(Icons.flight),
                              label: const Text(
                                "Flight",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.FontPrimary),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: HotelTabPart(pageController: pageController))
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
