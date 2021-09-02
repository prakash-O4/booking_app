import 'package:booking_app/presentation/Bloc/catbloc/category_bloc.dart';
import 'package:booking_app/constants/color.dart';
import 'package:booking_app/constants/num_constant.dart';
import 'package:booking_app/constants/string_constant.dart';
import 'package:booking_app/model/category_model.dart';
import 'package:booking_app/presentation/screens/home/component/bottom_sheet.dart';
import 'package:booking_app/presentation/screens/home/component/category_card.dart';
import 'package:booking_app/presentation/screens/home/component/text_field.dart';
import 'package:booking_app/presentation/screens/search/search_screen.dart';
import 'package:booking_app/presentation/widget/hotel_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'component/top_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late CategoryBloc categoryBloc;
  @override
  void initState() {
    super.initState();
    categoryBloc = BlocProvider.of<CategoryBloc>(context);
    categoryBloc.add(FetchCategory());
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: NumConstant.kDefaultPadding,
              right: NumConstant.kDefaultPadding,
              bottom: NumConstant.kDefaultPadding,
            ),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ? Nav Bar
                  TopNav(),
                  const SizedBox(height: 24),
                  // ? Search bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          height: 56,
                          child: SearchField(
                            onTap: () {
                              FocusScope.of(context).requestFocus(FocusNode());
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return SearchScreen();
                              }));
                            },
                            isSuffix: false,
                            hintText: "Search Your Hotels",
                            prefixIcon: Icons.search,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          bottomSheetDheka(context);
                        },
                        icon: RotatedBox(
                          quarterTurns: 3,
                          child: Icon(
                            FontAwesomeIcons.slidersH,
                            size: 24,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 18),
                  // ? Offer Image
                  Container(
                    height: 124,
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(5),
                      ),
                      image: DecorationImage(
                        image: AssetImage(StringConstant.homeOnePath),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Text(
                                '''Enjoy your weekends\nwith family | Special Offer!''',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 18, bottom: 18),
                              child: Text(
                                '50% OFF',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontSize: 26,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Category",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.more_horiz_rounded,
                        size: 30,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  //every time event is triggered this builder method will be called
                  BlocBuilder<CategoryBloc, CategoryState>(
                    builder: (context, state) {
                      if (state is CategoryError) {
                        return Center(
                          child: Text(
                            "Couldn't fetch data, try again",
                            style: TextStyle(
                              fontSize: 15,
                              color: ColorConstant.lightBlack,
                            ),
                          ),
                        );
                      } else if (state is CategoryLoaded) {
                        var data = state.categoryModel;
                        return SingleChildScrollView(
                          physics: const ClampingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (var i = 0; i < data.length; i++)
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: i == data.length ? 0 : 16.0,
                                  ),
                                  child: CategoryCard(
                                    categoryModel: categoryData[i],
                                  ),
                                ),
                            ],
                          ),
                        );
                      } else {
                        return Center(
                          child: CircularProgressIndicator(
                            color: Colors.red,
                          ),
                        );
                      }
                    },
                  ),
                  SizedBox(height: 24),
                  Container(height: 500, child: HotelTab())
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
