class CategoryModel {
  final String hotelName;
  final String type;
  final String details;
  final String imagePath;
  final int price;
  final String address;
  final String phoneNumber;
  CategoryModel({
    required this.hotelName,
    required this.address,
    required this.details,
    required this.imagePath,
    required this.phoneNumber,
    required this.price,
    required this.type,
  });
}

List<CategoryModel> categoryData = [
  CategoryModel(
    hotelName: "Ram Dhaba",
    address: "Laboni Beach, Cox's Bazar",
    details:
        "Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum ",
    imagePath: "images/home3.png",
    phoneNumber: "98763234732",
    price: 455,
    type: "Modern",
  ),
  CategoryModel(
    hotelName: "Krishna Resort",
    address: "Laboni Beach, Naya Bazar",
    details:
        "Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum ",
    imagePath: "images/home2.png",
    phoneNumber: "982838372982",
    price: 321,
    type: "Random",
  ),
  CategoryModel(
    hotelName: "Hari Dhaba",
    address: "Laboni Beach, Purano Bazar",
    details:
        "Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum ",
    imagePath: "images/home3.png",
    phoneNumber: "98283229292",
    price: 409,
    type: "ExtraOrdinary",
  ),
  CategoryModel(
    hotelName: "Nil Dhaba",
    address: "Laboni Beach, Bharkhar ko Bazar",
    details:
        "Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum ",
    imagePath: "images/home2.png",
    phoneNumber: "988923772723",
    price: 411,
    type: "MasterPiece",
  ),
  CategoryModel(
    hotelName: "Mukesh Dhaba",
    address: "Laboni Beach, Aanuey Bazar",
    details:
        "Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum Random lorem ipsum ",
    imagePath: "images/home2.png",
    phoneNumber: "98717398283",
    price: 6727,
    type: "Classic",
  )
];
