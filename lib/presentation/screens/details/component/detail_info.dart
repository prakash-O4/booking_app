import 'package:booking_app/constants/color.dart';
import 'package:booking_app/model/category_model.dart';
import 'package:booking_app/presentation/screens/details/component/icon_button.dart';
import 'package:booking_app/presentation/widget/handle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailCard extends StatelessWidget {
  final CategoryModel categoryModel;
  const DetailCard({required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.5,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(36),
          topRight: Radius.circular(36),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          left: 24,
          right: 24,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: BottomSheetHandle()),
              const SizedBox(height: 4.8),
              //? Hotel Name
              Text(
                categoryModel.hotelName,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  for (var i = 0; i < 5; i++)
                    Padding(
                      padding: const EdgeInsets.only(right: 5.1),
                      child: Icon(
                        Icons.star,
                        color: ColorConstant.starColor,
                        size: 16,
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(left: 9.9, right: 9),
                    child: Text(
                      "5.5",
                      style: GoogleFonts.montserrat(
                        fontSize: 13.95,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    "(53k+ Review)",
                    style: TextStyle(
                      fontSize: 9.97,
                      color: ColorConstant.arrowColor,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 17.3),
              Text(
                "Address",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 13.98,
                ),
              ),
              const SizedBox(height: 6.1),
              Text(
                categoryModel.address,
                style: GoogleFonts.montserrat(
                  fontSize: 11.91,
                  color: ColorConstant.lightBlack,
                ),
              ),
              const SizedBox(height: 1),
              Text(
                categoryModel.phoneNumber,
                style: GoogleFonts.montserrat(
                  fontSize: 11.91,
                  color: ColorConstant.lightBlack,
                ),
              ),
              const SizedBox(height: 18),
              Text(
                "Facilities",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 13.98,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  ButtonIcon(icon: Icons.wifi),
                  ButtonIcon(icon: Icons.calendar_today_rounded),
                  ButtonIcon(icon: Icons.tv),
                  ButtonIcon(icon: Icons.local_drink),
                  ButtonIcon(icon: Icons.bathroom),
                ],
              ),
              const SizedBox(height: 15.4),
              Text(
                "Decription",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 13.98,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                categoryModel.details,
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  color: ColorConstant.lightBlack,
                ),
              ),
              const SizedBox(
                height: 110,
              )
            ],
          ),
        ),
      ),
    );
  }
}
