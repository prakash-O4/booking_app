import 'package:booking_app/constants/color.dart';
import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  final IconData icon;
  const ButtonIcon({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        height: 36,
        width: 36,
        decoration: BoxDecoration(
          color: ColorConstant.arrowColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.white,
            size: 18,
          ),
        ),
      ),
    );
  }
}
