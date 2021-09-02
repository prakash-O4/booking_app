import 'package:booking_app/presentation/Bloc/searchBloc/search_bloc.dart';
import 'package:booking_app/constants/num_constant.dart';
import 'package:booking_app/presentation/screens/home/component/bottom_sheet.dart';
import 'package:booking_app/presentation/screens/home/component/text_field.dart';
import 'package:booking_app/presentation/screens/home/component/top_nav.dart';
import 'package:booking_app/presentation/screens/search/widget/search_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late SearchBloc searchBloc;
  @override
  void initState() {
    super.initState();
    searchBloc = BlocProvider.of<SearchBloc>(context);
    searchBloc.add(FetchSearch());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: NumConstant.kDefaultPadding,
                right: NumConstant.kDefaultPadding,
                bottom: NumConstant.kDefaultPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopNav(),
                  SizedBox(height: NumConstant.kDefaultPadding),
                  Text(
                    "Search Your Hotels",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: NumConstant.kDefaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          height: 56,
                          child: SearchField(
                            isSuffix: true,
                            suffixIcon: Icons.close,
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
                  const SizedBox(height: 30),
                  RichText(
                    text: TextSpan(
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      children: [
                        TextSpan(
                          text: "Result for ",
                        ),
                        TextSpan(
                          text: "Cox's Bazar",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  BlocBuilder<SearchBloc, SearchState>(
                    builder: (context, state) {
                      if (state is SearchLoaded) {
                        var model = state.mapModel;
                        return ListView.builder(
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            itemCount: model.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: SearchCard(
                                  mapModel: model[index],
                                ),
                              );
                            });
                      }
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
