import 'package:booking_app/pages/Navigation/bloc/bottom_navigation_bloc.dart';
import 'package:booking_app/utils/constants/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem(
      {super.key,
      required this.icon,
      required this.indexedItem,
      required this.label,
      required this.currentIndex});

  final String label;
  final IconData icon;
  final int indexedItem;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          child: IconButton(
            onPressed: () {
              BlocProvider.of<BottomNavigationBloc>(context)
                  .add(BottomNavigationChange(newIndex: indexedItem));
            },
            icon: Icon(
              icon,
              color: currentIndex == indexedItem
                  ? AppColor.BluePrimary
                  : Colors.black,
            ),
          ),
        ),
        // Text(r
      ],
    );
  }
}
