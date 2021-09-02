import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:booking_app/domain/api.dart';
import 'package:booking_app/model/category_model.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  FetchCategories fetchCategory = FetchCategories();
  CategoryBloc() : super(CategoryInitial());

  @override
  Stream<CategoryState> mapEventToState(
    CategoryEvent event,
  ) async* {
    if (event is FetchCategory) {
      yield CategoryLoading();
      try {
        var catData = await fetchCategory.fetchCategoryData();
        yield CategoryLoaded(categoryModel: catData);
      } catch (e) {
        yield CategoryError(message: "Can not load the data");
      }
    } else {}
  }
}
