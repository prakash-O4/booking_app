import 'package:booking_app/constants/color.dart';
import 'package:booking_app/model/category_model.dart';
import 'package:booking_app/presentation/screens/details/component/payment_dialog.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBar extends StatelessWidget {
  final CategoryModel categoryModel;
  const BottomBar({required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104,
      padding: EdgeInsets.all(24),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Start form",
                style: GoogleFonts.montserrat(
                  fontSize: 11.91,
                  color: ColorConstant.lightBlack,
                ),
              ),
              const SizedBox(height: 3.1),
              Text(
                "\$${categoryModel.price}",
                style: GoogleFonts.montserrat(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: ColorConstant.arrowColor,
                ),
              )
            ],
          ),
          Container(
            height: 56,
            width: 156,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: ColorConstant.buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
              onPressed: () {
                paymentDialog(context);
              },
              child: Center(
                child: Text(
                  "Rental Now",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void paymentDialog(context) {
    showDialog(
      context: context,
      builder: (context) {
        return PaymentDialog(categoryModel: categoryModel);
      },
    );
  }
}
