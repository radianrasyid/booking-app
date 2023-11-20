import 'package:booking_app/components/bottom_bar/bottom_navigation_item.dart';
import 'package:booking_app/pages/Home/home_page.dart';
import 'package:booking_app/pages/Navigation/bloc/bottom_navigation_bloc.dart';
import 'package:booking_app/utils/constants/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  static final List<Widget> _WidgetOptions = [
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
        builder: (context, state) {
      final state1 = state as BottomNavigationInitial;
      return Scaffold(
        body: _WidgetOptions.elementAt(state1.indexedTab),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          decoration: const BoxDecoration(
            color: AppColor.Base4,
            border: Border(
                top: BorderSide(
              color: AppColor.Base2,
            )),
          ),
          height: 57.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomNavBarItem(
                  icon: Icons.home,
                  indexedItem: 0,
                  label: "Home",
                  currentIndex: state1.indexedTab),
              BottomNavBarItem(
                  icon: Icons.money,
                  indexedItem: 1,
                  label: "Transaction",
                  currentIndex: state1.indexedTab),
              BottomNavBarItem(
                  icon: Icons.favorite,
                  indexedItem: 2,
                  label: "Favorite",
                  currentIndex: state1.indexedTab),
              BottomNavBarItem(
                  icon: Icons.person,
                  indexedItem: 3,
                  label: "Profile",
                  currentIndex: state1.indexedTab),
            ],
          ),
        ),
      );
    });
  }
}
