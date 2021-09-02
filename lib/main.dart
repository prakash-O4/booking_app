import 'package:booking_app/presentation/Bloc/mapBloc/map_bloc.dart';
import 'package:booking_app/presentation/Bloc/searchBloc/search_bloc.dart';
import 'package:booking_app/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/Bloc/catbloc/category_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CategoryBloc()),
        BlocProvider(create: (context) => SearchBloc()),
        BlocProvider(create: (context) => MapBloc())
      ],
      child: MaterialApp(
        home: SafeArea(
          child: Scaffold(
            body: HomeScreen(),
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
