import 'package:booking_app/presentation/widget/back_button.dart';
import 'package:booking_app/presentation/widget/handle.dart';
import 'package:booking_app/presentation/widget/hotel_tab.dart';

import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: size.height - 30,
              width: size.width,
              child: Stack(
                children: [
                  Image.asset(
                    "images/map.png",
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high,
                    height: size.height * 0.54,
                    width: size.width,
                  ),
                  Positioned(
                    top: size.height * 0.15 + 144,
                    left: 24,
                    child: CustomButton(
                      icon: Icons.arrow_back_rounded,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.15,
                    right: 24,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomButton(icon: Icons.threesixty_outlined),
                        const SizedBox(height: 24),
                        CustomButton(icon: Icons.close_fullscreen_rounded),
                        const SizedBox(height: 24),
                        CustomButton(icon: Icons.map),
                      ],
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.5,
                    child: Container(
                      height: size.height * 0.45,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(36),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 16),
                          Center(child: BottomSheetHandle()),
                          const SizedBox(height: 20),
                          Flexible(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 24, right: 24),
                              child: HotelTab(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
