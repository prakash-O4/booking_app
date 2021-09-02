import 'package:booking_app/constants/color.dart';
import 'package:booking_app/constants/string_constant.dart';
import 'package:booking_app/presentation/screens/maps/maps.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TopNav extends StatelessWidget {
  const TopNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 37,
                width: 37,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(StringConstant.profileImagePath),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'My Location',
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: ColorConstant.lightBlack,
                        ),
                      ),
                      const SizedBox(width: 3),
                      Icon(
                        FontAwesomeIcons.angleDown,
                        size: 12,
                        color: Colors.black,
                      )
                    ],
                  ),
                  Text(
                    "Cox's Bazar, BD",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                FontAwesomeIcons.bell,
                size: 24,
                color: Colors.black,
              ),
              const SizedBox(width: 24),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return MapScreen();
                      },
                    ),
                  );
                },
                child: Icon(
                  FontAwesomeIcons.alignRight,
                  size: 24,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
