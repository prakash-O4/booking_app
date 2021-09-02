import 'package:booking_app/presentation/Bloc/mapBloc/map_bloc.dart';
import 'package:booking_app/presentation/screens/maps/widget/map_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StarClass extends StatefulWidget {
  const StarClass({Key? key}) : super(key: key);

  @override
  _StarClassState createState() => _StarClassState();
}

class _StarClassState extends State<StarClass> {
  late MapBloc mapBloc;
  @override
  void initState() {
    super.initState();
    mapBloc = BlocProvider.of<MapBloc>(context);
    mapBloc.add(FetchData());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        if (state is MapLoaded) {
          var model = state.mapModel;
          return ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for (var i = 0; i < model.length; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: MapCard(
                        mapModel: model[i],
                      ),
                    ),
                ],
              ),
            ),
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
