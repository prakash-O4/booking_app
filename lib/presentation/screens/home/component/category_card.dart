import 'package:booking_app/constants/color.dart';
import 'package:booking_app/model/category_model.dart';
import 'package:booking_app/presentation/screens/details/bookin_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel categoryModel;
  const CategoryCard({required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 316,
      width: 255,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          color: Colors.white.withOpacity(0.7),
          boxShadow: [
            //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ),
            BoxShadow(
              color: ColorConstant.boxShaow.withOpacity(0.07),
              offset: const Offset(
                5,
                5,
              ),
              blurRadius: 19.0,
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 144,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              image: DecorationImage(
                image: AssetImage(
                  categoryModel.imagePath,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              categoryModel.type,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 15),
            child: Text(
              "More than 504,326 House waiting for your rent to buy",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 12,
                  color: ColorConstant.lightBlack,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 36,
                width: 171,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: ColorConstant.buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Center(
                    child: RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: "from ",
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: "\$${categoryModel.price}/month",
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return BookingDetails(
                      categoryModel: categoryModel,
                    );
                  }));
                },
                child: Container(
                  height: 36,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                    color: ColorConstant.arrowForward,
                  ),
                  child: Icon(
                    Icons.arrow_forward_rounded,
                    size: 20,
                    color: ColorConstant.arrowColor,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
