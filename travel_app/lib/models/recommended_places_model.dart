class RecommendedPlaceModel{
  final String image;
  final double rating;
  final String location;
  // ignore: non_constant_identifier_names
  final String Mainloc;
  RecommendedPlaceModel({
    required this.image,
    required this.rating,
    required this.location,
    // ignore: non_constant_identifier_names
    required this.Mainloc,
  });
}

List<RecommendedPlaceModel> recommendedPlaces = [
  RecommendedPlaceModel(
    image: "assets/places/buntun.jpg",
    rating: 4.4,
    location: "Buntun Bridge",
    Mainloc: "Tuguegarao City",
    ),
    RecommendedPlaceModel(
    image: "assets/places/dessert.jpg",
    rating: 4.4,
    location: "La Paz Sand Dunes",
    Mainloc: "laoag",
    ),
    RecommendedPlaceModel(
    image: "assets/places/falls.jpg",
    rating: 4.4,
    location: "Bayugao Fall",
    Mainloc: "Luna apayao",
    ),
    RecommendedPlaceModel(
    image: "assets/places/windmills.jpg",
    rating: 4.4,
    location: "Bangui Windmills",
    Mainloc: "Ilocos Norte",
    ),
    RecommendedPlaceModel(
    image: "assets/places/beach1.jpg",
    rating: 4.4,
    location: "Nangaramoan Beach",
    Mainloc: "Santa Ana",
    ),
];