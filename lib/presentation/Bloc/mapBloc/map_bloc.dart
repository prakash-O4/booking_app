import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:booking_app/domain/api.dart';
import 'package:booking_app/model/map_model.dart';
import 'package:equatable/equatable.dart';

part 'map_event.dart';
part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  FetchCategories fetchCategories = FetchCategories();
  MapBloc() : super(MapInitial());

  @override
  Stream<MapState> mapEventToState(
    MapEvent event,
  ) async* {
    if (event is FetchData) {
      yield MapLoading();
      try {
        var model = await fetchCategories.fetchMapData();
        yield MapLoaded(mapModel: model);
      } catch (e) {
        yield MapError();
      }
    }
  }
}
