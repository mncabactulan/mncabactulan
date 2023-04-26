import 'package:flutter/material.dart';
import 'package:travel_app/widgets/custom_icon_button.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travel_app/widgets/location_card.dart';
import 'package:travel_app/widgets/nearby_places.dart';
import 'package:travel_app/widgets/recommended_place.dart';
import 'package:travel_app/widgets/tourist_place.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:const [
            Text("Good Day!",
            style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
            ),
            Text("Explore Mate!",
            style: TextStyle(
                          fontSize: 15,
                          // font,Weight: FontWeight.bold
                        ),
            ),
          ],
        ),
        actions: const [
          CustomIconButton(
            icon: Icon(Ionicons.search_outline),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 12),
            child: CustomIconButton(
              icon: Icon(Ionicons.notifications_outline),
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(14),
        children: [
          //location card
        const LocationCard(),
        const SizedBox(
          height: 15,
        ),
        const TouristPlaces(),
         //categories
        const SizedBox(
          height: 10
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Recommendation",
            style: Theme.of(context).textTheme.titleLarge,
            ),
            TextButton(onPressed: () {}, child: const Text("View All"))
          ],
        ),
        const SizedBox(
          height: 10
        ),
        const RecommendedPlaces(),
        const SizedBox(height:10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Nearby From Your Location",
            style: Theme.of(context).textTheme.titleLarge,
            ),
            TextButton(onPressed: () {}, child: const Text("View All"))
          ],
        ),
        const SizedBox(height:10),
        const NearbyPlaces(),
          //recommendation
        ],
      ),
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const[
        BottomNavigationBarItem(
          icon: Icon(Ionicons.home_outline), label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(Ionicons.bookmark_outline),
           label: "Bookmark"),
        BottomNavigationBarItem(
          icon: Icon(Ionicons.ticket_outline),
           label: "Ticket"),
        BottomNavigationBarItem(
          icon: Icon(Ionicons.person_outline),
           label: "Profile"),
      ]
    ) ,
    );
  }
}