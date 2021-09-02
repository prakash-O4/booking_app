part of 'map_bloc.dart';

abstract class MapState extends Equatable {
  const MapState();

  @override
  List<Object> get props => [];
}

class MapInitial extends MapState {}

class MapLoading extends MapState {}

class MapLoaded extends MapState {
  final List<MapModel> mapModel;
  const MapLoaded({required this.mapModel});
  @override
  List<Object> get props => [mapModel];
}

class MapError extends MapState {}
