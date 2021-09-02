import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:booking_app/domain/api.dart';
import 'package:booking_app/model/map_model.dart';
import 'package:equatable/equatable.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  FetchCategories fetchCategories = FetchCategories();
  SearchBloc() : super(SearchInitial());

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    if (event is FetchSearch) {
      yield SearchLoading();
      try {
        var model = await fetchCategories.fetchMapData();
        yield SearchLoaded(mapModel: model);
      } catch (e) {
        yield SearchError();
      }
    }
  }
}
