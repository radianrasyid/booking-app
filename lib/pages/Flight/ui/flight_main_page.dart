import 'package:booking_app/utils/constants/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class FligthPage extends StatefulWidget {
  const FligthPage({super.key});

  @override
  State<FligthPage> createState() => _FligthPageState();
}

class _FligthPageState extends State<FligthPage> {
  String monthDefinition(DateTime time) {
    switch (time.month) {
      case 1:
        return "January";
      case 2:
        return "February";
      case 3:
        return "March";
      case 4:
        return "April";
      case 5:
        return "May";
      case 6:
        return "June";
      case 7:
        return "July";
      case 8:
        return "August";
      case 9:
        return "September";
      case 10:
        return "October";
      case 11:
        return "November";
      case 12:
        return "December";
      default:
        return "January";
    }
  }

  String takeOff = "Jakarta, DKI Jakarta";
  String landing = "Tanjungpinang, Kepulauan Riau";
  String tempStorage = "";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: 1.sw,
                  height: 0.2.sh,
                  decoration: const BoxDecoration(color: AppColor.BasePrimary),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: AppColor.BluePrimary,
                          )),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Flight",
                        style: TextStyle(
                            color: AppColor.FontPrimary,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 0.8.sh,
                  width: 1.sw,
                  decoration: const BoxDecoration(color: AppColor.Base3),
                )
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 0.15.sh, left: 10.w, right: 10.w),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.Base4,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColor.Font4,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 10.h),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.flight_land,
                                        color: AppColor.Blue3,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "TAKE OFF",
                                            style: TextStyle(
                                              color: AppColor.Font3,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 5,
                                            ),
                                          ),
                                          Text(
                                            takeOff,
                                            style: TextStyle(
                                                color: AppColor.FontPrimary,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.sp),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 5.h),
                                          child: const Divider(),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                          height: 20.h,
                                          width: 20.h,
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                tempStorage = takeOff;
                                                takeOff = landing;
                                                landing = tempStorage;
                                              });
                                            },
                                            child: Icon(
                                              Icons.change_circle,
                                              size: 25.h,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.flight_takeoff,
                                        color: AppColor.Blue3,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "LANDING",
                                            style: TextStyle(
                                              color: AppColor.Font3,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 5,
                                            ),
                                          ),
                                          Text(
                                            landing,
                                            style: TextStyle(
                                                color: AppColor.FontPrimary,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.sp),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                              width: 1.sw,
                              height: 0.05.sh,
                              child: const TabBar(
                                tabs: [
                                  Tab(
                                    child: Text("One Way"),
                                  ),
                                  Tab(
                                    child: Text("Round Trip"),
                                  ),
                                ],
                                physics: NeverScrollableScrollPhysics(),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.h),
                              height: 0.30.sh,
                              child: TabBarView(
                                physics: const NeverScrollableScrollPhysics(),
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.w, vertical: 5.h),
                                        decoration: BoxDecoration(
                                            color: AppColor.Font4,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.calendar_month,
                                                  color: AppColor.BluePrimary,
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "DATE",
                                                      style: TextStyle(
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          letterSpacing: 5.w,
                                                          color:
                                                              AppColor.Font2),
                                                    ),
                                                    Text(
                                                      "20 Maret 2004",
                                                      style: TextStyle(
                                                          fontSize: 14.sp,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: AppColor
                                                              .FontPrimary),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            InkWell(
                                              onTap: () {
                                                showModalBottomSheet<void>(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    final DateRangePickerController
                                                        dateRangePickerController =
                                                        DateRangePickerController();
                                                    return SingleChildScrollView(
                                                      child: Container(
                                                        padding: EdgeInsets.all(
                                                            10.w),
                                                        child: Column(
                                                          children: [
                                                            SfDateRangePicker(
                                                              todayHighlightColor:
                                                                  AppColor
                                                                      .BluePrimary,
                                                              controller:
                                                                  dateRangePickerController,
                                                              minDate: DateTime
                                                                  .now(),
                                                              selectionRadius:
                                                                  20,
                                                              selectionColor:
                                                                  AppColor
                                                                      .BluePrimary,
                                                              selectionTextStyle:
                                                                  const TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600),
                                                              selectionShape:
                                                                  DateRangePickerSelectionShape
                                                                      .circle,
                                                              selectionMode:
                                                                  DateRangePickerSelectionMode
                                                                      .range,
                                                              headerStyle: const DateRangePickerHeaderStyle(
                                                                  textStyle: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center),
                                                              showNavigationArrow:
                                                                  true,
                                                              cellBuilder:
                                                                  (context,
                                                                      detail) {
                                                                if (dateRangePickerController
                                                                        .view ==
                                                                    DateRangePickerView
                                                                        .year) {
                                                                  return ElevatedButton(
                                                                      onPressed:
                                                                          () {},
                                                                      style: ButtonStyle(
                                                                          padding: const MaterialStatePropertyAll(EdgeInsets
                                                                              .zero),
                                                                          backgroundColor: const MaterialStatePropertyAll(Colors
                                                                              .transparent),
                                                                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(
                                                                                  10))),
                                                                          elevation: const MaterialStatePropertyAll(
                                                                              0)),
                                                                      child:
                                                                          Text(
                                                                        monthDefinition(
                                                                            detail.date),
                                                                        style: TextStyle(
                                                                            fontSize: 10
                                                                                .sp,
                                                                            fontWeight: FontWeight
                                                                                .w600,
                                                                            color: detail.date.month < DateTime.now().month
                                                                                ? AppColor.Font3
                                                                                : AppColor.FontPrimary),
                                                                      ));
                                                                } else if (dateRangePickerController
                                                                        .view ==
                                                                    DateRangePickerView
                                                                        .decade) {
                                                                  return ElevatedButton(
                                                                      onPressed:
                                                                          () {},
                                                                      style: ButtonStyle(
                                                                          padding: const MaterialStatePropertyAll(EdgeInsets
                                                                              .zero),
                                                                          backgroundColor: const MaterialStatePropertyAll(Colors
                                                                              .transparent),
                                                                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(
                                                                                  10))),
                                                                          elevation: const MaterialStatePropertyAll(
                                                                              0)),
                                                                      child: Text(
                                                                          detail
                                                                              .date
                                                                              .year
                                                                              .toString(),
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                10.sp,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            color: detail.date.year < DateTime.now().year
                                                                                ? AppColor.Font3
                                                                                : AppColor.FontPrimary,
                                                                          )));
                                                                } else {
                                                                  return ElevatedButton(
                                                                      onPressed:
                                                                          () {},
                                                                      style: ButtonStyle(
                                                                          padding: const MaterialStatePropertyAll(EdgeInsets
                                                                              .zero),
                                                                          backgroundColor: const MaterialStatePropertyAll(Colors
                                                                              .transparent),
                                                                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(
                                                                                  10))),
                                                                          elevation: const MaterialStatePropertyAll(
                                                                              0)),
                                                                      child:
                                                                          Text(
                                                                        detail
                                                                            .date
                                                                            .day
                                                                            .toString(),
                                                                        style: TextStyle(
                                                                            fontSize: 10.sp,
                                                                            fontWeight: FontWeight.w600,
                                                                            color: detail.date.isBefore(DateTime.now())
                                                                                ? AppColor.Font3
                                                                                : dateRangePickerController.selectedDate == detail.date.day
                                                                                    ? AppColor.Base4
                                                                                    : AppColor.FontPrimary),
                                                                      ));
                                                                }
                                                                ;
                                                              },
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: const Icon(
                                                Icons.edit_calendar_rounded,
                                                color: AppColor.BluePrimary,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.w, vertical: 5.h),
                                        decoration: BoxDecoration(
                                            color: AppColor.Font4,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.calendar_month,
                                                  color: AppColor.BluePrimary,
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "DATE",
                                                      style: TextStyle(
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          letterSpacing: 5.w,
                                                          color:
                                                              AppColor.Font2),
                                                    ),
                                                    Text(
                                                      "20 Maret 2004",
                                                      style: TextStyle(
                                                          fontSize: 14.sp,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: AppColor
                                                              .FontPrimary),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            InkWell(
                                              onTap: () {
                                                showModalBottomSheet<void>(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    final DateRangePickerController
                                                        dateRangePickerController =
                                                        DateRangePickerController();
                                                    return SingleChildScrollView(
                                                      child: Container(
                                                        padding: EdgeInsets.all(
                                                            10.w),
                                                        child: Column(
                                                          children: [
                                                            SfDateRangePicker(
                                                              todayHighlightColor:
                                                                  AppColor
                                                                      .BluePrimary,
                                                              controller:
                                                                  dateRangePickerController,
                                                              minDate: DateTime
                                                                  .now(),
                                                              selectionRadius:
                                                                  20,
                                                              selectionColor:
                                                                  AppColor
                                                                      .BluePrimary,
                                                              selectionTextStyle:
                                                                  const TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600),
                                                              selectionShape:
                                                                  DateRangePickerSelectionShape
                                                                      .circle,
                                                              selectionMode:
                                                                  DateRangePickerSelectionMode
                                                                      .range,
                                                              headerStyle: const DateRangePickerHeaderStyle(
                                                                  textStyle: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center),
                                                              showNavigationArrow:
                                                                  true,
                                                              cellBuilder:
                                                                  (context,
                                                                      detail) {
                                                                if (dateRangePickerController
                                                                        .view ==
                                                                    DateRangePickerView
                                                                        .year) {
                                                                  return ElevatedButton(
                                                                      onPressed:
                                                                          () {},
                                                                      style: ButtonStyle(
                                                                          padding: const MaterialStatePropertyAll(EdgeInsets
                                                                              .zero),
                                                                          backgroundColor: const MaterialStatePropertyAll(Colors
                                                                              .transparent),
                                                                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(
                                                                                  10))),
                                                                          elevation: const MaterialStatePropertyAll(
                                                                              0)),
                                                                      child:
                                                                          Text(
                                                                        monthDefinition(
                                                                            detail.date),
                                                                        style: TextStyle(
                                                                            fontSize: 10
                                                                                .sp,
                                                                            fontWeight: FontWeight
                                                                                .w600,
                                                                            color: detail.date.month < DateTime.now().month
                                                                                ? AppColor.Font3
                                                                                : AppColor.FontPrimary),
                                                                      ));
                                                                } else if (dateRangePickerController
                                                                        .view ==
                                                                    DateRangePickerView
                                                                        .decade) {
                                                                  return ElevatedButton(
                                                                      onPressed:
                                                                          () {},
                                                                      style: ButtonStyle(
                                                                          padding: const MaterialStatePropertyAll(EdgeInsets
                                                                              .zero),
                                                                          backgroundColor: const MaterialStatePropertyAll(Colors
                                                                              .transparent),
                                                                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(
                                                                                  10))),
                                                                          elevation: const MaterialStatePropertyAll(
                                                                              0)),
                                                                      child: Text(
                                                                          detail
                                                                              .date
                                                                              .year
                                                                              .toString(),
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                10.sp,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            color: detail.date.year < DateTime.now().year
                                                                                ? AppColor.Font3
                                                                                : AppColor.FontPrimary,
                                                                          )));
                                                                } else {
                                                                  return ElevatedButton(
                                                                      onPressed:
                                                                          () {},
                                                                      style: ButtonStyle(
                                                                          padding: const MaterialStatePropertyAll(EdgeInsets
                                                                              .zero),
                                                                          backgroundColor: const MaterialStatePropertyAll(Colors
                                                                              .transparent),
                                                                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(
                                                                                  10))),
                                                                          elevation: const MaterialStatePropertyAll(
                                                                              0)),
                                                                      child:
                                                                          Text(
                                                                        detail
                                                                            .date
                                                                            .day
                                                                            .toString(),
                                                                        style: TextStyle(
                                                                            fontSize: 10.sp,
                                                                            fontWeight: FontWeight.w600,
                                                                            color: detail.date.isBefore(DateTime.now())
                                                                                ? AppColor.Font3
                                                                                : dateRangePickerController.selectedDate == detail.date.day
                                                                                    ? AppColor.Base4
                                                                                    : AppColor.FontPrimary),
                                                                      ));
                                                                }
                                                                ;
                                                              },
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: const Icon(
                                                Icons.edit_calendar_rounded,
                                                color: AppColor.BluePrimary,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.w, vertical: 5.h),
                                        decoration: BoxDecoration(
                                            color: AppColor.Font4,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.calendar_month,
                                                  color: AppColor.BluePrimary,
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "DATE",
                                                      style: TextStyle(
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          letterSpacing: 5.w,
                                                          color:
                                                              AppColor.Font2),
                                                    ),
                                                    Text(
                                                      "20 Maret 2004",
                                                      style: TextStyle(
                                                          fontSize: 14.sp,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: AppColor
                                                              .FontPrimary),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            InkWell(
                                              onTap: () {
                                                showModalBottomSheet<void>(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    final DateRangePickerController
                                                        dateRangePickerController =
                                                        DateRangePickerController();
                                                    return SingleChildScrollView(
                                                      child: Container(
                                                        padding: EdgeInsets.all(
                                                            10.w),
                                                        child: Column(
                                                          children: [
                                                            SfDateRangePicker(
                                                              todayHighlightColor:
                                                                  AppColor
                                                                      .BluePrimary,
                                                              controller:
                                                                  dateRangePickerController,
                                                              minDate: DateTime
                                                                  .now(),
                                                              selectionRadius:
                                                                  20,
                                                              selectionColor:
                                                                  AppColor
                                                                      .BluePrimary,
                                                              selectionTextStyle:
                                                                  const TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600),
                                                              selectionShape:
                                                                  DateRangePickerSelectionShape
                                                                      .circle,
                                                              selectionMode:
                                                                  DateRangePickerSelectionMode
                                                                      .range,
                                                              headerStyle: const DateRangePickerHeaderStyle(
                                                                  textStyle: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center),
                                                              showNavigationArrow:
                                                                  true,
                                                              cellBuilder:
                                                                  (context,
                                                                      detail) {
                                                                if (dateRangePickerController
                                                                        .view ==
                                                                    DateRangePickerView
                                                                        .year) {
                                                                  return ElevatedButton(
                                                                      onPressed:
                                                                          () {},
                                                                      style: ButtonStyle(
                                                                          padding: const MaterialStatePropertyAll(EdgeInsets
                                                                              .zero),
                                                                          backgroundColor: const MaterialStatePropertyAll(Colors
                                                                              .transparent),
                                                                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(
                                                                                  10))),
                                                                          elevation: const MaterialStatePropertyAll(
                                                                              0)),
                                                                      child:
                                                                          Text(
                                                                        monthDefinition(
                                                                            detail.date),
                                                                        style: TextStyle(
                                                                            fontSize: 10
                                                                                .sp,
                                                                            fontWeight: FontWeight
                                                                                .w600,
                                                                            color: detail.date.month < DateTime.now().month
                                                                                ? AppColor.Font3
                                                                                : AppColor.FontPrimary),
                                                                      ));
                                                                } else if (dateRangePickerController
                                                                        .view ==
                                                                    DateRangePickerView
                                                                        .decade) {
                                                                  return ElevatedButton(
                                                                      onPressed:
                                                                          () {},
                                                                      style: ButtonStyle(
                                                                          padding: const MaterialStatePropertyAll(EdgeInsets
                                                                              .zero),
                                                                          backgroundColor: const MaterialStatePropertyAll(Colors
                                                                              .transparent),
                                                                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(
                                                                                  10))),
                                                                          elevation: const MaterialStatePropertyAll(
                                                                              0)),
                                                                      child: Text(
                                                                          detail
                                                                              .date
                                                                              .year
                                                                              .toString(),
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                10.sp,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            color: detail.date.year < DateTime.now().year
                                                                                ? AppColor.Font3
                                                                                : AppColor.FontPrimary,
                                                                          )));
                                                                } else {
                                                                  return ElevatedButton(
                                                                      onPressed:
                                                                          () {},
                                                                      style: ButtonStyle(
                                                                          padding: const MaterialStatePropertyAll(EdgeInsets
                                                                              .zero),
                                                                          backgroundColor: const MaterialStatePropertyAll(Colors
                                                                              .transparent),
                                                                          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(
                                                                                  10))),
                                                                          elevation: const MaterialStatePropertyAll(
                                                                              0)),
                                                                      child:
                                                                          Text(
                                                                        detail
                                                                            .date
                                                                            .day
                                                                            .toString(),
                                                                        style: TextStyle(
                                                                            fontSize: 10.sp,
                                                                            fontWeight: FontWeight.w600,
                                                                            color: detail.date.isBefore(DateTime.now())
                                                                                ? AppColor.Font3
                                                                                : dateRangePickerController.selectedDate == detail.date.day
                                                                                    ? AppColor.Base4
                                                                                    : AppColor.FontPrimary),
                                                                      ));
                                                                }
                                                                ;
                                                              },
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                              child: const Icon(
                                                Icons.edit_calendar_rounded,
                                                color: AppColor.BluePrimary,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 45.h,
                                        child: ElevatedButton.icon(
                                            style: ButtonStyle(
                                                elevation:
                                                    const MaterialStatePropertyAll(
                                                        0),
                                                shape: MaterialStatePropertyAll(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15))),
                                                backgroundColor:
                                                    const MaterialStatePropertyAll(
                                                        AppColor.BluePrimary)),
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.search,
                                              color: AppColor.Base4,
                                            ),
                                            label: Text(
                                              "Find Your Flight",
                                              style: TextStyle(
                                                  color: AppColor.Base4,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14.sp),
                                            )),
                                      )
                                    ],
                                  ),
                                  const Center(
                                    child: Text("ROUND TRIP"),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Recent Activity",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColor.FontPrimary,
                              fontSize: 16.sp,
                            ),
                          ),
                          InkWell(
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 15.h,
                            ),
                            onTap: () {},
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        height: 0.2.sh,
                        width: 1.sw,
                        alignment: Alignment.topCenter,
                        child: ListView.builder(
                          itemBuilder: (context, i) {
                            return Container(
                              margin: EdgeInsets.only(bottom: 10.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColor.Base4),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Wednesday, 9 September 2023",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: AppColor.Font2,
                                        fontSize: 14.sp),
                                  ),
                                  Divider(),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Tanjungpinang",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "(TNJ)",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: AppColor.Font2,
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: AppColor.BluePrimary,
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Yogyakarta",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            "(YIA)",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                color: AppColor.Font2,
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.person,
                                            color: AppColor.OrangePrimary,
                                            size: 10.h,
                                          ),
                                          SizedBox(
                                            width: 3.w,
                                          ),
                                          Text(
                                            "3 PERSON",
                                            style: TextStyle(
                                                color: AppColor.FontPrimary,
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.electric_bolt_rounded,
                                            color: AppColor.OrangePrimary,
                                            size: 10.h,
                                          ),
                                          SizedBox(
                                            width: 3.w,
                                          ),
                                          Text(
                                            "ECONOMY",
                                            style: TextStyle(
                                                color: AppColor.FontPrimary,
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                          keyboardDismissBehavior:
                              ScrollViewKeyboardDismissBehavior.onDrag,
                          padding: EdgeInsets.zero,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
