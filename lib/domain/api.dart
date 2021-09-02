import 'package:booking_app/model/category_model.dart';
import 'package:booking_app/model/map_model.dart';

class FetchCategories {
  Future<List<CategoryModel>> fetchCategoryData() async {
    // print("delaying");
    await Future.delayed(
      const Duration(seconds: 2),
    );
    // print("fetch data from local");
    return categoryData;
  }

  Future<List<MapModel>> fetchMapData() async {
    // print("getting");
    await Future.delayed(
      const Duration(seconds: 1),
    );
    // print("loaded");
    return mapModelData;
  }
}
