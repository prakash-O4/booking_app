import 'package:booking_app/constants/color.dart';
import 'package:booking_app/presentation/screens/home/component/text_field.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MiniHeading extends StatelessWidget {
  final String text;
  const MiniHeading({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        textStyle: TextStyle(
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

void bottomSheetDheka(context) async {
  await showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(36),
        topLeft: Radius.circular(36),
      ),
    ),
    context: context,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.only(top: 24, right: 24, left: 24),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 4,
                    width: 35,
                    decoration: BoxDecoration(
                      color: ColorConstant.bottomSheetColor,
                      borderRadius: const BorderRadius.all(Radius.circular(2)),
                    ),
                  ),
                ),
                const SizedBox(height: 22.3),
                MiniHeading(text: "Search your location"),
                const SizedBox(height: 13.5),
                SearchField(
                  hintText: "YogayaKarta, ID",
                  prefixIcon: Icons.location_on_outlined,
                  suffixIcon: FontAwesomeIcons.angleDown,
                  isSuffix: true,
                ),
                const SizedBox(height: 24.6),
                MiniHeading(text: "Type of house"),
                const SizedBox(height: 13.5),
                SearchField(
                  hintText: "Type of house",
                  prefixIcon: Icons.home_outlined,
                  suffixIcon: FontAwesomeIcons.angleDown,
                  isSuffix: true,
                ),
                const SizedBox(height: 24.6),
                MiniHeading(text: "Filter my price"),
                //https://stackoverflow.com/questions/62343728/how-to-make-this-custom-rangeslider-in-flutter
                const SizedBox(height: 13.5),
                PriceSlider(),
                const SizedBox(height: 41),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 52,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Confirm",
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: ColorConstant.buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      );
    },
  );
}

class PriceSlider extends StatefulWidget {
  const PriceSlider({Key? key}) : super(key: key);

  @override
  _PriceSliderState createState() => _PriceSliderState();
}

class _PriceSliderState extends State<PriceSlider> {
  double _lowerValue = 100;
  double _upperValue = 900;
  @override
  Widget build(BuildContext context) {
    return FlutterSlider(
      values: [100, 1000],
      rangeSlider: true,
      max: 1000,
      min: 100,
      jump: true,
      step: FlutterSliderStep(step: 100),
      trackBar: FlutterSliderTrackBar(
        activeTrackBarHeight: 4,
        activeTrackBar: BoxDecoration(color: ColorConstant.arrowColor),
      ),
      tooltip: FlutterSliderTooltip(
        boxStyle: FlutterSliderTooltipBox(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 0,
              color: Colors.white,
            ),
          ),
        ),
        textStyle: GoogleFonts.montserrat(
          fontSize: 12,
          color: Colors.black,
        ),
      ),
      handler: FlutterSliderHandler(
        decoration: BoxDecoration(),
        child: Container(
          decoration: BoxDecoration(
            color: ColorConstant.arrowColor,
            borderRadius: BorderRadius.circular(25),
          ),
          padding: EdgeInsets.all(10),
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
      ),
      rightHandler: FlutterSliderHandler(
        decoration: BoxDecoration(),
        child: Container(
          decoration: BoxDecoration(
            color: ColorConstant.arrowColor,
            borderRadius: BorderRadius.circular(25),
          ),
          padding: EdgeInsets.all(10),
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
          ),
        ),
      ),
      onDragging: (index, lowerValue, upperValue) {
        _lowerValue = lowerValue;
        _upperValue = upperValue;
        setState(() {});
      },
    );
  }
}
