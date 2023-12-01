import 'package:booking_app/pages/Flight/bloc/flight_bloc.dart';
import 'package:booking_app/utils/constants/color_lib.dart';
import 'package:booking_app/utils/processors/date_processors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class FligthPage extends StatefulWidget {
  const FligthPage({super.key});

  @override
  State<FligthPage> createState() => _FligthPageState();
}

class _FligthPageState extends State<FligthPage> {
  String tempStorage = "";

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FlightBloc, FlightState>(buildWhen: (previous, current) {
      if (current is FlightInitial) {
        return true;
      }

      return false;
    }, builder: (context, state) {
      final flightState = state as FlightInitial;
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
                    decoration:
                        const BoxDecoration(color: AppColor.BasePrimary),
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
                  padding:
                      EdgeInsets.only(top: 0.15.sh, left: 10.w, right: 10.w),
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
                                  color: AppColor.BackgroundPrimary,
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
                                              flightState.takeOffLoc,
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
                                                  tempStorage =
                                                      flightState.takeOffLoc;
                                                  BlocProvider.of<FlightBloc>(
                                                          context)
                                                      .add(TakeOffLocChangeEvent(
                                                          newTakeOffLoc:
                                                              flightState
                                                                  .landingLoc));
                                                  BlocProvider.of<FlightBloc>(
                                                          context)
                                                      .add(TakeOffLocChangeChangeEvent(
                                                          newTakeOffLoc:
                                                              flightState
                                                                  .landingLoc));
                                                  BlocProvider.of<FlightBloc>(
                                                          context)
                                                      .add(
                                                          LandingLocChangeEvent(
                                                              newLandingLoc:
                                                                  tempStorage));
                                                  BlocProvider.of<FlightBloc>(
                                                          context)
                                                      .add(
                                                          LandingLocChangeChangeEvent(
                                                              newLandingLoc:
                                                                  tempStorage));
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
                                              flightState.landingLoc,
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
                                child: TabBar(
                                  tabs: const [
                                    Tab(
                                      child: Text("One Way"),
                                    ),
                                    Tab(
                                      child: Text("Round Trip"),
                                    ),
                                  ],
                                  physics: const NeverScrollableScrollPhysics(),
                                  onTap: (val) {
                                    if (val == 1) {
                                      BlocProvider.of<FlightBloc>(context).add(
                                          IsRoundTripChangeChangeEvent(
                                              newIsRoundTrip: true));
                                      return BlocProvider.of<FlightBloc>(
                                              context)
                                          .add(IsRoundTripChangeEvent(
                                              newIsRoundTrip: true));
                                    } else {
                                      BlocProvider.of<FlightBloc>(context).add(
                                          IsRoundTripChangeChangeEvent(
                                              newIsRoundTrip: false));
                                      return BlocProvider.of<FlightBloc>(
                                              context)
                                          .add(IsRoundTripChangeEvent(
                                              newIsRoundTrip: false));
                                    }
                                  },
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
                                              color: AppColor.BackgroundPrimary,
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
                                                        CrossAxisAlignment
                                                            .start,
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
                                                        DateFormat(
                                                                'dd MMMM yyyy')
                                                            .format(flightState
                                                                .oneWayTime),
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
                                                          padding:
                                                              EdgeInsets.all(
                                                                  10.w),
                                                          child: Column(
                                                            children: [
                                                              SfDateRangePicker(
                                                                todayHighlightColor:
                                                                    AppColor
                                                                        .BluePrimary,
                                                                controller:
                                                                    dateRangePickerController,
                                                                minDate:
                                                                    DateTime
                                                                        .now(),
                                                                onSelectionChanged:
                                                                    (val) {
                                                                  BlocProvider.of<
                                                                              FlightBloc>(
                                                                          context)
                                                                      .add(OneWayTimeChangeEvent(
                                                                          newTime:
                                                                              val.value as DateTime));
                                                                  BlocProvider.of<
                                                                              FlightBloc>(
                                                                          context)
                                                                      .add(OneWayTimeChangeChangeEvent(
                                                                          newTime:
                                                                              val.value as DateTime));
                                                                },
                                                                initialSelectedDate:
                                                                    flightState
                                                                        .oneWayTime,
                                                                selectionRadius:
                                                                    20,
                                                                selectionColor:
                                                                    AppColor
                                                                        .BluePrimary,
                                                                selectionTextStyle:
                                                                    const TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.w600),
                                                                selectionShape:
                                                                    DateRangePickerSelectionShape
                                                                        .circle,
                                                                selectionMode:
                                                                    DateRangePickerSelectionMode
                                                                        .single,
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
                                                                            padding:
                                                                                const MaterialStatePropertyAll(EdgeInsets.zero),
                                                                            backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
                                                                            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                                                            elevation: const MaterialStatePropertyAll(0)),
                                                                        child: Text(
                                                                          monthDefinition(
                                                                              detail.date),
                                                                          style: TextStyle(
                                                                              fontSize: 10.sp,
                                                                              fontWeight: FontWeight.w600,
                                                                              color: detail.date.month < DateTime.now().month ? AppColor.Font3 : AppColor.FontPrimary),
                                                                        ));
                                                                  } else if (dateRangePickerController
                                                                          .view ==
                                                                      DateRangePickerView
                                                                          .decade) {
                                                                    return ElevatedButton(
                                                                        onPressed:
                                                                            () {},
                                                                        style: ButtonStyle(
                                                                            padding:
                                                                                const MaterialStatePropertyAll(EdgeInsets.zero),
                                                                            backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
                                                                            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                                                            elevation: const MaterialStatePropertyAll(0)),
                                                                        child: Text(detail.date.year.toString(),
                                                                            style: TextStyle(
                                                                              fontSize: 10.sp,
                                                                              fontWeight: FontWeight.w600,
                                                                              color: detail.date.year < DateTime.now().year ? AppColor.Font3 : AppColor.FontPrimary,
                                                                            )));
                                                                  } else {
                                                                    return ElevatedButton(
                                                                        onPressed:
                                                                            () {},
                                                                        style: ButtonStyle(
                                                                            padding:
                                                                                const MaterialStatePropertyAll(EdgeInsets.zero),
                                                                            backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
                                                                            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                                                            elevation: const MaterialStatePropertyAll(0)),
                                                                        child: Text(
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
                                              color: AppColor.BackgroundPrimary,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  const Icon(
                                                    Icons
                                                        .airline_seat_recline_extra,
                                                    color: AppColor.BluePrimary,
                                                  ),
                                                  SizedBox(
                                                    width: 10.w,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "PASSENGER",
                                                        style: TextStyle(
                                                            fontSize: 10.sp,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            letterSpacing: 5.w,
                                                            color:
                                                                AppColor.Font2),
                                                      ),
                                                      Text(
                                                        flightState
                                                            .passengerCount
                                                            .toString(),
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
                                              Row(
                                                children: [
                                                  InkWell(
                                                    splashFactory:
                                                        InkRipple.splashFactory,
                                                    onTap: () {
                                                      BlocProvider.of<
                                                                  FlightBloc>(
                                                              context)
                                                          .add(
                                                        PassengerCountChangeEvent(
                                                          newPassengerCount: flightState
                                                                      .passengerCount ==
                                                                  1
                                                              ? flightState
                                                                  .passengerCount
                                                              : flightState
                                                                      .passengerCount -
                                                                  1,
                                                        ),
                                                      );
                                                      BlocProvider.of<
                                                                  FlightBloc>(
                                                              context)
                                                          .add(
                                                        PassengerCountChangeChangeEvent(
                                                          newPassengerCount: flightState
                                                                      .passengerCount ==
                                                                  1
                                                              ? flightState
                                                                  .passengerCount
                                                              : flightState
                                                                      .passengerCount -
                                                                  1,
                                                        ),
                                                      );
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color: AppColor
                                                              .BluePrimary,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100)),
                                                      child: Icon(
                                                        Icons.remove,
                                                        color: flightState
                                                                    .passengerCount ==
                                                                1
                                                            ? AppColor.Font3
                                                            : AppColor.Base4,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  Text(
                                                    flightState.passengerCount
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  InkWell(
                                                    splashFactory:
                                                        InkRipple.splashFactory,
                                                    onTap: () {
                                                      BlocProvider.of<
                                                                  FlightBloc>(
                                                              context)
                                                          .add(PassengerCountChangeEvent(
                                                              newPassengerCount:
                                                                  flightState
                                                                          .passengerCount +
                                                                      1));
                                                      BlocProvider.of<
                                                                  FlightBloc>(
                                                              context)
                                                          .add(PassengerCountChangeChangeEvent(
                                                              newPassengerCount:
                                                                  flightState
                                                                          .passengerCount +
                                                                      1));
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color: AppColor
                                                              .BluePrimary,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100)),
                                                      child: const Icon(
                                                        Icons.add,
                                                        color: AppColor.Base4,
                                                      ),
                                                    ),
                                                  )
                                                ],
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
                                              color: AppColor.BackgroundPrimary,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  const Icon(
                                                    Icons.airplane_ticket,
                                                    color: AppColor.BluePrimary,
                                                  ),
                                                  SizedBox(
                                                    width: 10.w,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "TYPE",
                                                        style: TextStyle(
                                                            fontSize: 10.sp,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            letterSpacing: 5.w,
                                                            color:
                                                                AppColor.Font2),
                                                      ),
                                                      Text(
                                                        flightState.flightType,
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
                                              DropdownButton(
                                                itemHeight: 50.h,
                                                selectedItemBuilder: (context) {
                                                  return [
                                                    Container(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      constraints:
                                                          const BoxConstraints(
                                                              maxWidth: 100),
                                                      child: const Text(
                                                        "Economy",
                                                        style: TextStyle(
                                                            fontSize: 0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      constraints:
                                                          const BoxConstraints(
                                                              maxWidth: 100),
                                                      child: const Text(
                                                        "Business",
                                                        style: TextStyle(
                                                            fontSize: 0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      constraints:
                                                          const BoxConstraints(
                                                              maxWidth: 100),
                                                      child: const Text(
                                                        "First Class",
                                                        style: TextStyle(
                                                            fontSize: 0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    )
                                                  ];
                                                },
                                                items: const [
                                                  DropdownMenuItem(
                                                    value: "Economy",
                                                    child: Text("Economy"),
                                                  ),
                                                  DropdownMenuItem(
                                                    value: "Business",
                                                    child: Text("Business"),
                                                  ),
                                                  DropdownMenuItem(
                                                    value: "First Class",
                                                    child: Text("First Class"),
                                                  ),
                                                ],
                                                onChanged: (newVal) {
                                                  BlocProvider.of<FlightBloc>(
                                                          context)
                                                      .add(FlightTypeChangeEvent(
                                                          newFlightType: newVal
                                                              as String));
                                                  BlocProvider.of<FlightBloc>(
                                                          context)
                                                      .add(FlightTypeChangeChangeEvent(
                                                          newFlightType: newVal
                                                              as String));
                                                },
                                                elevation: 0,
                                                isDense: true,
                                                isExpanded: false,
                                                icon: const Icon(
                                                  Icons.expand_more,
                                                  color: AppColor.BluePrimary,
                                                ),
                                                value: flightState.flightType,
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: Colors.black),
                                                underline: const SizedBox(
                                                  height: 0,
                                                  width: 0,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        SizedBox(
                                          width: double.infinity,
                                          height: 45.h,
                                          child: ElevatedButton.icon(
                                              style: ButtonStyle(
                                                  elevation:
                                                      const MaterialStatePropertyAll(
                                                          0),
                                                  shape:
                                                      MaterialStatePropertyAll(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15))),
                                                  backgroundColor:
                                                      const MaterialStatePropertyAll(
                                                          AppColor
                                                              .BluePrimary)),
                                              onPressed: () {
                                                Navigator.pushNamed(
                                                    context, "/flight/one-way",
                                                    arguments: flightState);
                                              },
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
                                    Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.w, vertical: 5.h),
                                          decoration: BoxDecoration(
                                              color: AppColor.BackgroundPrimary,
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
                                                        CrossAxisAlignment
                                                            .start,
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
                                                        "${DateFormat('dd MMMM yyyy').format(flightState.roundTripTime.start)} - ${DateFormat('dd MMMM yyyy').format(flightState.roundTripTime.end)}",
                                                        style: TextStyle(
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: AppColor
                                                                .FontPrimary),
                                                        overflow: TextOverflow
                                                            .ellipsis,
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
                                                          padding:
                                                              EdgeInsets.all(
                                                                  10.w),
                                                          child: Column(
                                                            children: [
                                                              SfDateRangePicker(
                                                                todayHighlightColor:
                                                                    AppColor
                                                                        .BluePrimary,
                                                                controller:
                                                                    dateRangePickerController,
                                                                onSelectionChanged:
                                                                    (val) {
                                                                  var selected =
                                                                      val.value
                                                                          as PickerDateRange;

                                                                  if (selected.startDate !=
                                                                          null &&
                                                                      selected.endDate !=
                                                                          null) {
                                                                    BlocProvider.of<FlightBloc>(context).add(RoundTripTimeChangeEvent(
                                                                        newRoundTripTime: DateTimeRange(
                                                                            start: selected.startDate
                                                                                as DateTime,
                                                                            end:
                                                                                selected.endDate as DateTime)));
                                                                    BlocProvider.of<FlightBloc>(context).add(RoundTripTimeChangeChangeEvent(
                                                                        newRoundTripTime: DateTimeRange(
                                                                            start: selected.startDate
                                                                                as DateTime,
                                                                            end:
                                                                                selected.endDate as DateTime)));
                                                                  }
                                                                },
                                                                minDate:
                                                                    DateTime
                                                                        .now(),
                                                                initialSelectedRange: PickerDateRange(
                                                                    flightState
                                                                        .roundTripTime
                                                                        .start,
                                                                    flightState
                                                                        .roundTripTime
                                                                        .end),
                                                                selectionRadius:
                                                                    20,
                                                                selectionColor:
                                                                    AppColor
                                                                        .BluePrimary,
                                                                selectionTextStyle:
                                                                    const TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.w600),
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
                                                                            padding:
                                                                                const MaterialStatePropertyAll(EdgeInsets.zero),
                                                                            backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
                                                                            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                                                            elevation: const MaterialStatePropertyAll(0)),
                                                                        child: Text(
                                                                          monthDefinition(
                                                                              detail.date),
                                                                          style: TextStyle(
                                                                              fontSize: 10.sp,
                                                                              fontWeight: FontWeight.w600,
                                                                              color: detail.date.month < DateTime.now().month ? AppColor.Font3 : AppColor.FontPrimary),
                                                                        ));
                                                                  } else if (dateRangePickerController
                                                                          .view ==
                                                                      DateRangePickerView
                                                                          .decade) {
                                                                    return ElevatedButton(
                                                                        onPressed:
                                                                            () {},
                                                                        style: ButtonStyle(
                                                                            padding:
                                                                                const MaterialStatePropertyAll(EdgeInsets.zero),
                                                                            backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
                                                                            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                                                            elevation: const MaterialStatePropertyAll(0)),
                                                                        child: Text(detail.date.year.toString(),
                                                                            style: TextStyle(
                                                                              fontSize: 10.sp,
                                                                              fontWeight: FontWeight.w600,
                                                                              color: detail.date.year < DateTime.now().year ? AppColor.Font3 : AppColor.FontPrimary,
                                                                            )));
                                                                  } else {
                                                                    return ElevatedButton(
                                                                        onPressed:
                                                                            () {},
                                                                        style: ButtonStyle(
                                                                            padding:
                                                                                const MaterialStatePropertyAll(EdgeInsets.zero),
                                                                            backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
                                                                            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                                                            elevation: const MaterialStatePropertyAll(0)),
                                                                        child: Text(
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
                                              color: AppColor.BackgroundPrimary,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  const Icon(
                                                    Icons
                                                        .airline_seat_recline_extra,
                                                    color: AppColor.BluePrimary,
                                                  ),
                                                  SizedBox(
                                                    width: 10.w,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "PASSENGER",
                                                        style: TextStyle(
                                                            fontSize: 10.sp,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            letterSpacing: 5.w,
                                                            color:
                                                                AppColor.Font2),
                                                      ),
                                                      Text(
                                                        flightState
                                                            .passengerCount
                                                            .toString(),
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
                                              Row(
                                                children: [
                                                  InkWell(
                                                    splashFactory:
                                                        InkRipple.splashFactory,
                                                    onTap: () {
                                                      BlocProvider.of<
                                                                  FlightBloc>(
                                                              context)
                                                          .add(
                                                        PassengerCountChangeEvent(
                                                          newPassengerCount: flightState
                                                                      .passengerCount ==
                                                                  1
                                                              ? flightState
                                                                  .passengerCount
                                                              : flightState
                                                                      .passengerCount -
                                                                  1,
                                                        ),
                                                      );
                                                      BlocProvider.of<
                                                                  FlightBloc>(
                                                              context)
                                                          .add(
                                                        PassengerCountChangeChangeEvent(
                                                          newPassengerCount: flightState
                                                                      .passengerCount ==
                                                                  1
                                                              ? flightState
                                                                  .passengerCount
                                                              : flightState
                                                                      .passengerCount -
                                                                  1,
                                                        ),
                                                      );
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color: AppColor
                                                              .BluePrimary,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100)),
                                                      child: Icon(
                                                        Icons.remove,
                                                        color: flightState
                                                                    .passengerCount ==
                                                                1
                                                            ? AppColor.Font3
                                                            : AppColor.Base4,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  Text(
                                                    flightState.passengerCount
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  InkWell(
                                                    splashFactory:
                                                        InkRipple.splashFactory,
                                                    onTap: () {
                                                      BlocProvider.of<
                                                                  FlightBloc>(
                                                              context)
                                                          .add(PassengerCountChangeEvent(
                                                              newPassengerCount:
                                                                  flightState
                                                                          .passengerCount +
                                                                      1));
                                                      BlocProvider.of<
                                                                  FlightBloc>(
                                                              context)
                                                          .add(PassengerCountChangeChangeEvent(
                                                              newPassengerCount:
                                                                  flightState
                                                                          .passengerCount +
                                                                      1));
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color: AppColor
                                                              .BluePrimary,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100)),
                                                      child: const Icon(
                                                        Icons.add,
                                                        color: AppColor.Base4,
                                                      ),
                                                    ),
                                                  )
                                                ],
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
                                              color: AppColor.BackgroundPrimary,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  const Icon(
                                                    Icons.airplane_ticket,
                                                    color: AppColor.BluePrimary,
                                                  ),
                                                  SizedBox(
                                                    width: 10.w,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "TYPE",
                                                        style: TextStyle(
                                                            fontSize: 10.sp,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            letterSpacing: 5.w,
                                                            color:
                                                                AppColor.Font2),
                                                      ),
                                                      Text(
                                                        flightState.flightType,
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
                                              DropdownButton(
                                                itemHeight: 50.h,
                                                selectedItemBuilder: (context) {
                                                  return [
                                                    Container(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      constraints:
                                                          const BoxConstraints(
                                                              maxWidth: 100),
                                                      child: const Text(
                                                        "Economy",
                                                        style: TextStyle(
                                                            fontSize: 0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      constraints:
                                                          const BoxConstraints(
                                                              maxWidth: 100),
                                                      child: const Text(
                                                        "Business",
                                                        style: TextStyle(
                                                            fontSize: 0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      constraints:
                                                          const BoxConstraints(
                                                              maxWidth: 100),
                                                      child: const Text(
                                                        "First Class",
                                                        style: TextStyle(
                                                            fontSize: 0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    )
                                                  ];
                                                },
                                                items: const [
                                                  DropdownMenuItem(
                                                    value: "Economy",
                                                    child: Text("Economy"),
                                                  ),
                                                  DropdownMenuItem(
                                                    value: "Business",
                                                    child: Text("Business"),
                                                  ),
                                                  DropdownMenuItem(
                                                    value: "First Class",
                                                    child: Text("First Class"),
                                                  ),
                                                ],
                                                onChanged: (newVal) {
                                                  BlocProvider.of<FlightBloc>(
                                                          context)
                                                      .add(FlightTypeChangeEvent(
                                                          newFlightType: newVal
                                                              as String));
                                                  BlocProvider.of<FlightBloc>(
                                                          context)
                                                      .add(FlightTypeChangeChangeEvent(
                                                          newFlightType: newVal
                                                              as String));
                                                },
                                                elevation: 0,
                                                isDense: true,
                                                isExpanded: false,
                                                icon: const Icon(
                                                  Icons.expand_more,
                                                  color: AppColor.BluePrimary,
                                                ),
                                                value: flightState.flightType,
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: Colors.black),
                                                underline: const SizedBox(
                                                  height: 0,
                                                  width: 0,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        SizedBox(
                                          width: double.infinity,
                                          height: 45.h,
                                          child: ElevatedButton.icon(
                                              style: ButtonStyle(
                                                  elevation:
                                                      const MaterialStatePropertyAll(
                                                          0),
                                                  shape:
                                                      MaterialStatePropertyAll(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15))),
                                                  backgroundColor:
                                                      const MaterialStatePropertyAll(
                                                          AppColor
                                                              .BluePrimary)),
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
                                    const Divider(),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
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
                                        const Icon(
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
                                            const Text(
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
    });
  }
}
