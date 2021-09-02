class MapModel {
  final String imagePath;
  final String hotelName;
  final int discountPercent;
  final String address;
  final int bedroom;
  final int bathTub;
  final int swimmingPool;
  MapModel({
    required this.address,
    required this.bathTub,
    required this.bedroom,
    required this.discountPercent,
    required this.hotelName,
    required this.imagePath,
    required this.swimmingPool,
  });
}

List<MapModel> mapModelData = [
  MapModel(
    address: "Plot 58, Block C Hotel Motel Zone",
    bathTub: 2,
    bedroom: 4,
    discountPercent: 65,
    hotelName: "Prime Pratik Hotel",
    imagePath: "images/map1.png",
    swimmingPool: 1,
  ),
  MapModel(
    address: "Plot 58, Block C Hotel Motel Zone",
    bathTub: 1,
    bedroom: 3,
    discountPercent: 60,
    hotelName: "Jol Torongo",
    imagePath: "images/map2.png",
    swimmingPool: 2,
  ),
  MapModel(
    address: "Plot 58, Block C Hotel Motel Zone",
    bathTub: 1,
    bedroom: 1,
    discountPercent: 62,
    hotelName: "Ocean Paradise",
    imagePath: "images/map3.png",
    swimmingPool: 1,
  ),
  MapModel(
    address: "Plot 58, Block C Hotel Motel Zone",
    bathTub: 2,
    bedroom: 2,
    discountPercent: 61,
    hotelName: "Prime Pratik Hotel",
    imagePath: "images/map2.png",
    swimmingPool: 1,
  ),
  MapModel(
    address: "Plot 58, Block C Hotel Motel Zone",
    bathTub: 1,
    bedroom: 1,
    discountPercent: 65,
    hotelName: "Ocean Paradise",
    imagePath: "images/map1.png",
    swimmingPool: 2,
  ),
];
