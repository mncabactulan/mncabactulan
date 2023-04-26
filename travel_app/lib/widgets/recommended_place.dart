// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../models/recommended_places_model.dart';

class RecommendedPlaces extends StatelessWidget{
  const RecommendedPlaces ({Key? key}) : super (key : key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 235,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
            return SizedBox(
              width: 220,
              child: Card(
                elevation: 0.4,
                shape: const RoundedRectangleBorder(
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          recommendedPlaces[index].image,
                          width: double.maxFinite,
                          fit: BoxFit.cover,
                          height: 150,
                        ),
                      ),
                      const SizedBox(height: 6),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Text(
                          recommendedPlaces[index].location,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          // Text(".....",
                          // style: TextStyle(
                          //   fontSize: 15,
                          //   fontWeight: FontWeight.bold,
                          // ),
                          // ),
                          
                           Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 248, 228, 49),
                            size: 14,
                          ),
                          Spacer(),
                          Text(
                            "4.4",
                            style: TextStyle(
                              fontSize: 12,
                            )
                          )
                        ],
                      ),
                      SizedBox(
                      height:5
                      ),
                      Row(
                        children: [
                          Icon(
                            Ionicons.location,
                            color: Theme.of(context).primaryColor,
                            size: 10,
                          ),
                          ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Text(
                          recommendedPlaces[index].Mainloc,
                          style: const TextStyle(
                            fontSize: 10,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                          // const SizedBox(width: 7),
                          // const Text(
                          //   "Santa Ana",
                          //   style: TextStyle(
                          //     fontSize: 10,
                          //   )
                          //   ),
                        ],
                      )
                    ],
                  ),
                )
                ) 
              ),    
            );
          },
          separatorBuilder: (context, index) => const Padding(
            padding: EdgeInsets.only(right: 10)
            ), 
            itemCount: recommendedPlaces.length,
      ),
    );
  }
}