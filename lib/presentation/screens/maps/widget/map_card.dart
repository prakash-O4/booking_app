import 'package:booking_app/constants/color.dart';
import 'package:booking_app/constants/num_constant.dart';
import 'package:booking_app/model/map_model.dart';
import 'package:booking_app/presentation/screens/search/widget/icon_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MapCard extends StatelessWidget {
  final MapModel mapModel;
  const MapCard({required this.mapModel});

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
          const SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: ColorConstant.arrowColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 22, vertical: 5),
                      child: Text(
                        "${mapModel.discountPercent}% Off",
                        style: GoogleFonts.montserrat(
                          fontSize: 11.98,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Flexible(
                    child: Text(
                      mapModel.hotelName,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 13.98,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Flexible(
                    child: Text(
                      mapModel.address,
                      style: GoogleFonts.montserrat(
                        fontSize: 11.97,
                        color: ColorConstant.lightBlack,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      IconAndText(
                          icon: Icons.bed_outlined, numbers: mapModel.bedroom),
                      const SizedBox(width: 6),
                      IconAndText(
                          icon: Icons.bathroom, numbers: mapModel.swimmingPool),
                      const SizedBox(width: 6),
                      IconAndText(
                          icon: Icons.bathtub, numbers: mapModel.bathTub),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
