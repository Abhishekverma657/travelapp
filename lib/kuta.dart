import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
 class Kuta extends StatefulWidget {
  const Kuta({super.key});

  @override
  State<Kuta> createState() => _KutaState();
}

class _KutaState extends State<Kuta> {
  @override
  Widget build(BuildContext context) {

          //  debugShowCheckedModeBanner: false;
     return Scaffold
     

  
    (
       appBar: AppBar(
        backgroundColor: Colors.blue[300],
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: FavoriteButton(
                              valueChanged: () {},
                            ),
          ),


       ]),
        
      
      body:  Stack(
         
         children: [
         Container(
          height: double.infinity,
          width: double.infinity,
           color: Colors.amber,
            child: Image.network( 'https://cdn.pixabay.com/photo/2017/12/15/13/51/polynesia-3021072__480.jpg',fit: BoxFit.cover,),
        ),
         
         Padding(
           padding: const EdgeInsets.only(top:400),
           child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Kuta Beach",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 45),
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.place_outlined),
                                      Text("Bail Indonesia",style: TextStyle(fontSize: 30),)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      RatingBar.builder(
                                        itemSize: 30,
                                        initialRating: 4,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemPadding:
                                            EdgeInsets.symmetric(horizontal: 4.0),
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                      Text("4.2" ,style: TextStyle(color: Colors.black),)
                                    ],
                                  ),
                                   Padding(
                                     padding: const EdgeInsets.all(20.0),
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         Text("₹5678/person" , style: TextStyle(fontSize: 20),),
                                          Container(
                                             height: 40,
                                              width: 80,
                                               decoration: BoxDecoration( borderRadius: BorderRadius.circular(20),
                                                color: Colors.amber,
                                                ),
                                                 child: Center(child: Text("Book", style: TextStyle(color: Colors.white),)),
                                          )
                                       ],
                                   
                                     ),
                                   )
                                ],
                                 
                                
                              ),
         ),
      ],)
         
    );
  }
}