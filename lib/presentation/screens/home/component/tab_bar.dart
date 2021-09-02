import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StarBar extends StatelessWidget {
  const StarBar({Key? key}) : super(key: key);

  static final hotelStar = ["5 Star", "4 Star", "3 Star", "2 Star", "1 Star"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: hotelStar.length,
      child: Column(
        children: [
          Container(
            height: 40,
            decoration: BoxDecoration(),
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              bottom: TabBar(
                isScrollable: true,
                indicatorColor: Color(0xFF7459DC),
                labelStyle: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF04212D),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                labelColor: Color(0xFF04212D),
                unselectedLabelStyle: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF9C9C9C),
                  ),
                ),
                tabs: [
                  Text(
                    hotelStar[0],
                  ),
                  Text(
                    hotelStar[1],
                  ),
                  Text(
                    hotelStar[2],
                  ),
                  Text(
                    hotelStar[3],
                  ),
                  Text(
                    hotelStar[4],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
