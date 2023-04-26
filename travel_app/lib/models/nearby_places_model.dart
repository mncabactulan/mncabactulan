class NearbyPlaceModel{
final String image;
final String name;
final String location;
NearbyPlaceModel({
  required this.image,
  required this.name,
  required this.location,
});
}

List<NearbyPlaceModel> nearbyPlaces = [
  NearbyPlaceModel(
    image: "assets/image/aganiswip.jpg",
    name: "Agani Swip",
    location: "Alcala",
    ),
  NearbyPlaceModel(
    image: "assets/image/callao.jpg",
    name: "Callao Cave",
    location: "Alcala",
    ),
  NearbyPlaceModel(
    image: "assets/image/chateau.jpg",
    name: "Chateau Le Eonor",
    location: "Alcala",
    ),
  NearbyPlaceModel(
    image: "assets/image/hills.jpg",
    name: "Calvary Hills",
    location: "Alcala",
    ),
  NearbyPlaceModel(
    image: "assets/image/lapi.jpg",
    name: "Lapi Falls",
    location: "Alcala",
    ),
  NearbyPlaceModel(
    image: "assets/image/meynards.jpg",
    name: "Meynards Resort",
    location: "Alcala",
    ),
  NearbyPlaceModel(
    image: "assets/image/rockformation.webp",
    name: "Dupag Rock Formation",
    location: "Alcala",
    ),
];