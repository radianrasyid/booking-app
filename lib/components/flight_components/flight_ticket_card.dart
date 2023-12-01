import 'package:booking_app/utils/constants/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlightTicketList extends StatefulWidget {
  FlightTicketList({
    super.key,
  });

  @override
  State<FlightTicketList> createState() => _FlightTicketListState();
}

class _FlightTicketListState extends State<FlightTicketList> {
  final ExpansionTileController expansionTileController =
      ExpansionTileController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      child: ExpansionTile(
        backgroundColor: AppColor.Base4,
        controller: expansionTileController,
        subtitle: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColor.Font2, width: 0.2.w)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10.w),
                    child: Column(
                      children: [
                        Text(
                          "GTC",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColor.Font2),
                        ),
                        Text(
                          "14.00",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColor.FontPrimary,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(child: LayoutBuilder(builder: (context, constraint) {
                    final boxWidth = constraint.constrainWidth();
                    const dashWidth = 10.0;
                    final dashHeight = 0.001.sh;
                    final dashCount = (boxWidth / (1.5 * dashWidth)).floor();
                    return Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(dashCount, (index) {
                        return SizedBox(
                          width: dashWidth,
                          height: dashHeight,
                          child: const DecoratedBox(
                              decoration: BoxDecoration(color: AppColor.Font2)),
                        );
                      }),
                    );
                  })),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 3.h),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: AppColor.Font2, width: 0.001.sh),
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 10.w),
                          child: Icon(
                            Icons.flight,
                            color: AppColor.BluePrimary,
                            size: 15.w,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Transit",
                              style: TextStyle(
                                color: AppColor.Font2,
                                fontSize: 12.sp,
                              ),
                            ),
                            Text(
                              "1h 34m",
                              style: TextStyle(
                                color: AppColor.FontPrimary,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(child: LayoutBuilder(builder: (context, constraint) {
                    final boxWidth = constraint.constrainWidth();
                    const dashWidth = 10.0;
                    final dashHeight = 0.001.sh;
                    final dashCount = (boxWidth / (1.5 * dashWidth)).floor();
                    return Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(dashCount, (index) {
                        return SizedBox(
                          width: dashWidth,
                          height: dashHeight,
                          child: const DecoratedBox(
                              decoration: BoxDecoration(color: AppColor.Font2)),
                        );
                      }),
                    );
                  })),
                  Container(
                    margin: EdgeInsets.only(left: 10.w),
                    child: Column(
                      children: [
                        Text(
                          "KDC",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColor.Font2),
                        ),
                        Text(
                          "07.15",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColor.FontPrimary,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.luggage,
                              color: AppColor.OrangePrimary,
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text(
                              "20 Kg",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.FontPrimary),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.lunch_dining,
                              color: AppColor.OrangePrimary,
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Text(
                              "Food",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.FontPrimary),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.wifi,
                          color: AppColor.OrangePrimary,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          "Wifi",
                          style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColor.FontPrimary),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "IDR 350.000",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 14.sp,
                          color: AppColor.FontPrimary),
                    ),
                    Text(
                      "/Pax",
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColor.BluePrimary,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        collapsedShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tilePadding: EdgeInsets.symmetric(horizontal: 10.w),
        childrenPadding: EdgeInsets.symmetric(horizontal: 10.w),
        collapsedBackgroundColor: AppColor.Base4,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Image(
                image: const AssetImage("assets/img/garuda-indonesia.png"),
                fit: BoxFit.cover,
                height: 30.h,
              ),
            ),
            Column(
              children: [
                Text(
                  "Garuda Indonesia",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.FontPrimary,
                  ),
                ),
                Text(
                  "Executive",
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColor.Font2,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            InkWell(
              onTap: () {
                if (expansionTileController.isExpanded) {
                  return print("INI KEEXPAND");
                } else {
                  return print("INI KECOLLAPSE");
                }
              },
              child: const Icon(Icons.expand_more),
            )
          ],
        ),
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10.h),
            child: SizedBox(
              width: 1.sw,
              height: 30.h,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Select",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.Font4),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(AppColor.SuccessPrimary),
                      elevation: MaterialStatePropertyAll(0),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))))),
            ),
          )
        ],
      ),
    );
  }
}
