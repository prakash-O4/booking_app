import 'package:booking_app/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final int numbers;
  const IconAndText({
    required this.icon,
    required this.numbers,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: ColorConstant.lightBlack,
          size: 12,
        ),
        const SizedBox(width: 4),
        Flexible(
          child: Text(
            numbers.toString(),
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: 12,
                color: ColorConstant.lightBlack,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
