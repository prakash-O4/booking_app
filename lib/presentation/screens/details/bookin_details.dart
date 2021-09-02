import 'package:booking_app/constants/color.dart';
import 'package:booking_app/constants/num_constant.dart';
import 'package:booking_app/model/category_model.dart';
import 'package:booking_app/presentation/screens/details/component/bottom_navigation.dart';
import 'package:booking_app/presentation/screens/details/component/detail_info.dart';
import 'package:booking_app/presentation/widget/back_button.dart';
import 'package:flutter/material.dart';

class BookingDetails extends StatelessWidget {
  final CategoryModel categoryModel;
  const BookingDetails({required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      body: Column(
        children: [
          Container(
            height: size.height,
            width: size.width,
            child: Stack(
              children: [
                Image.asset(
                  categoryModel.imagePath,
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                  height: size.height * 0.55,
                  width: size.width,
                ),
                //image counter
                Positioned(
                  top: size.height * 0.47,
                  left: size.width / 2.5,
                  child: Center(
                    child: Container(
                      height: 3,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: ColorConstant.bottomSheetColor,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: NumConstant.kDefaultPadding,
                  right: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(
                        icon: Icons.arrow_back_rounded,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Text(
                        "2/21",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: size.height * 0.5,
                  child: DetailCard(
                    categoryModel: categoryModel,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(categoryModel: categoryModel),
    );
  }
}
