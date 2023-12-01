import 'package:booking_app/components/flight_components/flight_ticket_card.dart';
import 'package:booking_app/pages/Flight/bloc/flight_bloc.dart';
import 'package:booking_app/utils/constants/color_lib.dart';
import 'package:booking_app/utils/processors/date_processors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class FlightOneWayPage extends StatefulWidget {
  const FlightOneWayPage({super.key});

  @override
  State<FlightOneWayPage> createState() => _FlightOneWayPageState();
}

class _FlightOneWayPageState extends State<FlightOneWayPage> {
  final ExpansionTileController cardController = ExpansionTileController();
  String tempStorage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.chevron_left),
        ),
        backgroundColor: AppColor.Base4,
      ),
      body: Column(
        children: [
          BlocBuilder<FlightBloc, FlightState>(
              builder: (context, state) {
                final flightState = state as FlightInitial;
                return ConstrainedBox(
                  constraints:
                      BoxConstraints(maxWidth: 1.sw, maxHeight: 0.1.sh),
                  child: Container(
                    decoration: const BoxDecoration(color: AppColor.Base4),
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flight Information",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColor.Font2,
                              fontSize: 12.sp,
                              wordSpacing: 1.w),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  flightState.takeOffLoc.split(",")[0],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.FontPrimary,
                                  ),
                                ),
                                const Icon(
                                  Icons.chevron_right,
                                  color: AppColor.BluePrimary,
                                ),
                                Text(
                                  flightState.landingLoc.split(",")[0],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.FontPrimary,
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                print(flightState.oneWayTime);
                                showModalBottomSheet(
                                  context: context,
                                  enableDrag: true,
                                  isDismissible: true,
                                  scrollControlDisabledMaxHeightRatio: 1.h,
                                  backgroundColor: AppColor.Base4,
                                  builder: (context) {
                                    return BlocBuilder<FlightBloc, FlightState>(
                                        builder: (context, state) {
                                      final flightChangeState =
                                          state as FlightInitial;
                                      return Container(
                                        padding: EdgeInsets.only(
                                            right: 10.w,
                                            left: 10.w,
                                            bottom: 10.h),
                                        height: 0.5.sh,
                                        child: Column(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: AppColor.Background2,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10.w,
                                                  vertical: 10.h),
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
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "TAKE OFF",
                                                            style: TextStyle(
                                                              color: AppColor
                                                                  .Font3,
                                                              fontSize: 10.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              letterSpacing: 5,
                                                            ),
                                                          ),
                                                          Text(
                                                            flightChangeState
                                                                .takeOffLocChange,
                                                            style: TextStyle(
                                                                color: AppColor
                                                                    .FontPrimary,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize:
                                                                    14.sp),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Stack(
                                                    children: [
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 5.h),
                                                          child:
                                                              const Divider(),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: SizedBox(
                                                          height: 20.h,
                                                          width: 20.h,
                                                          child: InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                tempStorage =
                                                                    flightChangeState
                                                                        .takeOffLocChange;
                                                                BlocProvider.of<
                                                                            FlightBloc>(
                                                                        context)
                                                                    .add(TakeOffLocChangeChangeEvent(
                                                                        newTakeOffLoc:
                                                                            flightChangeState.landingLocChange));
                                                                BlocProvider.of<
                                                                            FlightBloc>(
                                                                        context)
                                                                    .add(LandingLocChangeChangeEvent(
                                                                        newLandingLoc:
                                                                            tempStorage));
                                                              });
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .change_circle,
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
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "LANDING",
                                                            style: TextStyle(
                                                              color: AppColor
                                                                  .Font3,
                                                              fontSize: 10.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              letterSpacing: 5,
                                                            ),
                                                          ),
                                                          Text(
                                                            flightChangeState
                                                                .landingLocChange,
                                                            style: TextStyle(
                                                                color: AppColor
                                                                    .FontPrimary,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize:
                                                                    14.sp),
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
                                            Column(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10.w,
                                                      vertical: 5.h),
                                                  decoration: BoxDecoration(
                                                      color:
                                                          AppColor.Background2,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          const Icon(
                                                            Icons
                                                                .calendar_month,
                                                            color: AppColor
                                                                .BluePrimary,
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
                                                                    fontSize:
                                                                        10.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    letterSpacing:
                                                                        5.w,
                                                                    color: AppColor
                                                                        .Font2),
                                                              ),
                                                              Text(
                                                                DateFormat(
                                                                        'dd MMMM yyyy')
                                                                    .format(flightChangeState
                                                                        .oneWayTimeChange),
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        14.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color: AppColor
                                                                        .FontPrimary),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          showModalBottomSheet<
                                                              void>(
                                                            context: context,
                                                            builder:
                                                                (BuildContext
                                                                    context) {
                                                              final DateRangePickerController
                                                                  dateRangePickerController =
                                                                  DateRangePickerController();
                                                              return SingleChildScrollView(
                                                                child:
                                                                    Container(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(10
                                                                              .w),
                                                                  child: Column(
                                                                    children: [
                                                                      SfDateRangePicker(
                                                                        todayHighlightColor:
                                                                            AppColor.BluePrimary,
                                                                        controller:
                                                                            dateRangePickerController,
                                                                        minDate:
                                                                            DateTime.now(),
                                                                        onSelectionChanged:
                                                                            (val) {
                                                                          BlocProvider.of<FlightBloc>(context)
                                                                              .add(OneWayTimeChangeChangeEvent(newTime: val.value as DateTime));
                                                                        },
                                                                        initialSelectedDate:
                                                                            flightChangeState.oneWayTimeChange,
                                                                        selectionRadius:
                                                                            20,
                                                                        selectionColor:
                                                                            AppColor.BluePrimary,
                                                                        selectionTextStyle:
                                                                            const TextStyle(fontWeight: FontWeight.w600),
                                                                        selectionShape:
                                                                            DateRangePickerSelectionShape.circle,
                                                                        selectionMode:
                                                                            DateRangePickerSelectionMode.single,
                                                                        headerStyle: const DateRangePickerHeaderStyle(
                                                                            textStyle:
                                                                                TextStyle(fontWeight: FontWeight.w600),
                                                                            textAlign: TextAlign.center),
                                                                        showNavigationArrow:
                                                                            true,
                                                                        cellBuilder:
                                                                            (context,
                                                                                detail) {
                                                                          if (dateRangePickerController.view ==
                                                                              DateRangePickerView
                                                                                  .year) {
                                                                            return ElevatedButton(
                                                                                onPressed: () {},
                                                                                style: ButtonStyle(padding: const MaterialStatePropertyAll(EdgeInsets.zero), backgroundColor: const MaterialStatePropertyAll(Colors.transparent), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))), elevation: const MaterialStatePropertyAll(0)),
                                                                                child: Text(
                                                                                  monthDefinition(detail.date),
                                                                                  style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600, color: detail.date.month < DateTime.now().month ? AppColor.Font3 : AppColor.FontPrimary),
                                                                                ));
                                                                          } else if (dateRangePickerController.view ==
                                                                              DateRangePickerView.decade) {
                                                                            return ElevatedButton(
                                                                                onPressed: () {},
                                                                                style: ButtonStyle(padding: const MaterialStatePropertyAll(EdgeInsets.zero), backgroundColor: const MaterialStatePropertyAll(Colors.transparent), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))), elevation: const MaterialStatePropertyAll(0)),
                                                                                child: Text(detail.date.year.toString(),
                                                                                    style: TextStyle(
                                                                                      fontSize: 10.sp,
                                                                                      fontWeight: FontWeight.w600,
                                                                                      color: detail.date.year < DateTime.now().year ? AppColor.Font3 : AppColor.FontPrimary,
                                                                                    )));
                                                                          } else {
                                                                            return ElevatedButton(
                                                                                onPressed: () {},
                                                                                style: ButtonStyle(padding: const MaterialStatePropertyAll(EdgeInsets.zero), backgroundColor: const MaterialStatePropertyAll(Colors.transparent), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))), elevation: const MaterialStatePropertyAll(0)),
                                                                                child: Text(
                                                                                  detail.date.day.toString(),
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
                                                          Icons
                                                              .edit_calendar_rounded,
                                                          color: AppColor
                                                              .BluePrimary,
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
                                                      horizontal: 10.w,
                                                      vertical: 5.h),
                                                  decoration: BoxDecoration(
                                                      color:
                                                          AppColor.Background2,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          const Icon(
                                                            Icons
                                                                .airline_seat_recline_extra,
                                                            color: AppColor
                                                                .BluePrimary,
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
                                                                    fontSize:
                                                                        10.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    letterSpacing:
                                                                        5.w,
                                                                    color: AppColor
                                                                        .Font2),
                                                              ),
                                                              Text(
                                                                flightChangeState
                                                                    .passengerCountChange
                                                                    .toString(),
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        14.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
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
                                                                InkRipple
                                                                    .splashFactory,
                                                            onTap: () {
                                                              BlocProvider.of<
                                                                          FlightBloc>(
                                                                      context)
                                                                  .add(
                                                                PassengerCountChangeChangeEvent(
                                                                  newPassengerCount: flightChangeState
                                                                              .passengerCountChange ==
                                                                          1
                                                                      ? flightChangeState
                                                                          .passengerCountChange
                                                                      : flightChangeState
                                                                              .passengerCountChange -
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
                                                                color: flightChangeState.passengerCountChange ==
                                                                        1
                                                                    ? AppColor
                                                                        .Font3
                                                                    : AppColor
                                                                        .Base4,
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 5.w,
                                                          ),
                                                          Text(
                                                            flightChangeState
                                                                .passengerCountChange
                                                                .toString(),
                                                            style: TextStyle(
                                                                fontSize: 12.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                          ),
                                                          SizedBox(
                                                            width: 5.w,
                                                          ),
                                                          InkWell(
                                                            splashFactory:
                                                                InkRipple
                                                                    .splashFactory,
                                                            onTap: () {
                                                              BlocProvider.of<
                                                                          FlightBloc>(
                                                                      context)
                                                                  .add(PassengerCountChangeChangeEvent(
                                                                      newPassengerCount:
                                                                          flightChangeState.passengerCountChange +
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
                                                                color: AppColor
                                                                    .Base4,
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
                                                      horizontal: 10.w,
                                                      vertical: 5.h),
                                                  decoration: BoxDecoration(
                                                      color:
                                                          AppColor.Background2,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          const Icon(
                                                            Icons
                                                                .airplane_ticket,
                                                            color: AppColor
                                                                .BluePrimary,
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
                                                                    fontSize:
                                                                        10.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    letterSpacing:
                                                                        5.w,
                                                                    color: AppColor
                                                                        .Font2),
                                                              ),
                                                              Text(
                                                                flightChangeState
                                                                    .flightTypeChange,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        14.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color: AppColor
                                                                        .FontPrimary),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      DropdownButton(
                                                        itemHeight: 50.h,
                                                        selectedItemBuilder:
                                                            (context) {
                                                          return [
                                                            Container(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              constraints:
                                                                  const BoxConstraints(
                                                                      maxWidth:
                                                                          100),
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
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              constraints:
                                                                  const BoxConstraints(
                                                                      maxWidth:
                                                                          100),
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
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              constraints:
                                                                  const BoxConstraints(
                                                                      maxWidth:
                                                                          100),
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
                                                            child:
                                                                Text("Economy"),
                                                          ),
                                                          DropdownMenuItem(
                                                            value: "Business",
                                                            child: Text(
                                                                "Business"),
                                                          ),
                                                          DropdownMenuItem(
                                                            value:
                                                                "First Class",
                                                            child: Text(
                                                                "First Class"),
                                                          ),
                                                        ],
                                                        onChanged: (newVal) {
                                                          BlocProvider.of<
                                                                      FlightBloc>(
                                                                  context)
                                                              .add(FlightTypeChangeChangeEvent(
                                                                  newFlightType:
                                                                      newVal
                                                                          as String));
                                                        },
                                                        elevation: 0,
                                                        isDense: true,
                                                        isExpanded: false,
                                                        icon: const Icon(
                                                          Icons.expand_more,
                                                          color: AppColor
                                                              .BluePrimary,
                                                        ),
                                                        value: flightState
                                                            .flightType,
                                                        style: TextStyle(
                                                            fontSize: 12.sp,
                                                            color:
                                                                Colors.black),
                                                        underline:
                                                            const SizedBox(
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
                                                          shape: MaterialStatePropertyAll(
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
                                                        BlocProvider.of<FlightBloc>(context).add(FlightInitialChangeAllEvent(
                                                            newFlightType:
                                                                flightChangeState
                                                                    .flightTypeChange,
                                                            newIsRoundTrip:
                                                                flightChangeState
                                                                    .isRoundTripChange,
                                                            newLandingLoc:
                                                                flightChangeState
                                                                    .landingLocChange,
                                                            newPassengerCount:
                                                                flightChangeState
                                                                    .passengerCountChange,
                                                            newRoundTripTime:
                                                                flightChangeState
                                                                    .roundTripTimeChange,
                                                            newTakeOffLoc:
                                                                flightChangeState
                                                                    .takeOffLocChange,
                                                            newTime:
                                                                flightChangeState
                                                                    .oneWayTimeChange));
                                                        Navigator.pop(context);
                                                      },
                                                      icon: const Icon(
                                                        Icons.search,
                                                        color: AppColor.Base4,
                                                      ),
                                                      label: Text(
                                                        "Find Your Flight",
                                                        style: TextStyle(
                                                            color:
                                                                AppColor.Base4,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 14.sp),
                                                      )),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      );
                                    });
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  showDragHandle: true,
                                  useSafeArea: true,
                                );
                              },
                              child: Text(
                                "Change",
                                style: TextStyle(
                                    color: AppColor.BluePrimary,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 5.h),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColor.Base3, width: 0.5.w),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    color: AppColor.OrangePrimary,
                                    size: 15.h,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    DateFormat("dd MMM yyyy")
                                        .format(flightState.oneWayTime),
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColor.FontPrimary,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.airline_seat_recline_extra,
                                    color: AppColor.OrangePrimary,
                                    size: 15.h,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    flightState.passengerCount.toString(),
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColor.FontPrimary,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.electric_bolt_rounded,
                                    color: AppColor.OrangePrimary,
                                    size: 15.h,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    flightState.flightType,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColor.FontPrimary,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              bloc: context.read<FlightBloc>()),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h),
            width: 1.sw,
            color: AppColor.Blue4,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children:
                          List.generate(10, (index) => FlightTicketList()),
                    ),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
