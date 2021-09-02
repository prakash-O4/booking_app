part of 'category_bloc.dart';

@immutable
abstract class CategoryState extends Equatable {}

class CategoryInitial extends CategoryState {
  @override
  List<Object?> get props => [];
}

class CategoryLoading extends CategoryState {
  @override
  List<Object?> get props => [];
}

class CategoryLoaded extends CategoryState {
  final List<CategoryModel> categoryModel;
  CategoryLoaded({required this.categoryModel});
  @override
  List<Object?> get props => [categoryModel];
}

class CategoryError extends CategoryState {
  final String message;
  CategoryError({required this.message});
  @override
  List<Object?> get props => [message];
}
