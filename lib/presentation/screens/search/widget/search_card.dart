import 'package:booking_app/constants/color.dart';
import 'package:booking_app/constants/num_constant.dart';
import 'package:booking_app/model/map_model.dart';
import 'package:booking_app/presentation/screens/search/widget/icon_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchCard extends StatelessWidget {
  final MapModel mapModel;
  const SearchCard({required this.mapModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      decoration: BoxDecoration(
        color: ColorConstant.arrowForward,
        borderRadius: BorderRadius.circular(
          NumConstant.kDefaultBorder,
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 112,
            width: 95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(NumConstant.kDefaultBorder),
              image: DecorationImage(
                image: AssetImage(mapModel.imagePath),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      mapModel.hotelName,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      "8% less than usual",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 12,
                          color: ColorConstant.lightBlack,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconAndText(icon: Icons.bed_sharp, numbers: 4),
                      const SizedBox(width: 5),
                      IconAndText(icon: Icons.bathroom, numbers: 2),
                      const SizedBox(width: 5),
                      IconAndText(icon: Icons.bed_sharp, numbers: 8)
                    ],
                  ),
                  RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: "from ",
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "\$30/month",
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
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
