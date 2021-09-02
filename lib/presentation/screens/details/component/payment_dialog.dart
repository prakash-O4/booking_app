import 'package:booking_app/constants/color.dart';
import 'package:booking_app/model/category_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentDialog extends StatelessWidget {
  final CategoryModel categoryModel;
  const PaymentDialog({required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Total Payment",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 16.5),
            Flexible(
              child: Text(
                "\$${categoryModel.price}",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: ColorConstant.arrowColor,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 6.9),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    side: BorderSide(
                      color: ColorConstant.arrowColor,
                      width: 1,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    value: false,
                    onChanged: (value) {
                      print(value);
                    }),
                const SizedBox(width: 3),
                Flexible(
                  child: Text(
                    "I agree to the terms of service",
                    style: GoogleFonts.montserrat(
                      fontSize: 11.91,
                      color: ColorConstant.lightBlack,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20.1),
            Container(
              height: 46,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: ColorConstant.buttonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Center(
                  child: Text(
                    "Pay",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
