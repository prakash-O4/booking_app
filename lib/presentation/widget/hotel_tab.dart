import 'package:booking_app/constants/color.dart';
import 'package:booking_app/presentation/screens/maps/widget/star_class.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HotelTab extends StatelessWidget {
  const HotelTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainedTabBarView(
      tabBarProperties: TabBarProperties(
          labelPadding: const EdgeInsets.only(right: 40),
          height: 40,
          width: MediaQuery.of(context).size.width,
          alignment: TabBarAlignment.end,
          isScrollable: true,
          unselectedLabelColor: ColorConstant.lightBlack,
          unselectedLabelStyle: GoogleFonts.montserrat(
            fontSize: 13.98,
            color: ColorConstant.lightBlack,
          ),
          labelColor: Colors.black,
          labelStyle: GoogleFonts.montserrat(
            fontSize: 13.98,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          indicatorColor: ColorConstant.arrowColor,
          indicatorSize: TabBarIndicatorSize.label),
      tabs: [
        Text("5 Star"),
        Text("4 Star"),
        Text("3 Star"),
        Text("2 Star"),
        Text("1 Star"),
      ],
      views: [
        StarClass(),
        StarClass(),
        StarClass(),
        StarClass(),
        StarClass(),
      ],
    );
  }
}
