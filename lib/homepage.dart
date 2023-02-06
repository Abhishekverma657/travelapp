import 'dart:ffi';
import 'dart:io';

import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travelapp/baga.dart';

import 'kuta.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leading: CircleAvatar(backgroundColor: Colors.grey),
          title: Text(
            "Hello ,Vineetha",
            style: TextStyle(color: Colors.black, fontSize: 23),
          ),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(
                CupertinoIcons.bell_solid,
                color: Colors.grey,
              ),
            )
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 20),
            Text(
              "Where do You",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 28),
            ),
            Text(
              "want to explore today",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 28),
            ),
            SizedBox(height: 30),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Color.fromARGB(255, 240, 244, 240)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Serarch",
                  ),
                ),
              ),
            ),
            SizedBox(height: 28),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Choose Cotegory",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  "see all",
                  style: TextStyle(
                      color: Color.fromARGB(255, 161, 158, 158), fontSize: 17),
                ),
              ],
            ),
            SizedBox(height: 28),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 60,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.green),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                        'https://p.kindpng.com/picc/s/63-637743_coconut-palm-tree-30513207-transprent-png-free-download.png',
                      ),
                      Text(
                        "Beach",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                         width: 50,
                        child: Image.network(
                          'https://www.freepnglogos.com/uploads/mountain-png/mountain-png-mountainpng-5.png',
                        ),
                      ),
                      Text(
                        "Mountain",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                     onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Kuta()
                      ));
                     },
                    child: Container(
                      height: 250,
                      width: 180,
                      child: Stack(children: [
                        Container(
                            height: double.infinity,
                            width: double.infinity,
                            child: Image.network(
                              'https://cdn.pixabay.com/photo/2017/12/15/13/51/polynesia-3021072__480.jpg',
                              fit: BoxFit.cover,
                            )),
                        Align(
                          alignment: Alignment.topRight,
                          child: FavoriteButton(
                            valueChanged: () {},
                          ),
                        ),
                        Container(
                          //  alignment: Alignment.topCenter,
                  
                          // color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 170, left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kuta Beach",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.place_outlined),
                                    Text("Bail Indonesia")
                                  ],
                                ),
                                Row(
                                  children: [
                                    RatingBar.builder(
                                      itemSize: 15,
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
                                )
                              ],
                            ),
                          ),
                        )
                      ]),
                    ),
                  ),
                  SizedBox(width: 20),
                  InkWell(
                     onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>bega()
                      ));

                     },
                    child: Container(
                      height: 250,
                      width: 180,
                      child: Stack(children: [
                        Container(
                            height: double.infinity,
                            width: double.infinity,
                            child: Image.network(
                              'https://cdn.pixabay.com/photo/2016/11/14/04/00/beach-1822544__480.jpg',
                              fit: BoxFit.cover,
                            )),
                        Align(
                          alignment: Alignment.topRight,
                          child: FavoriteButton(
                            valueChanged: () {},
                          ),
                        ),
                        Container(
                          //  alignment: Alignment.topCenter,
                  
                          // color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 170, left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 const Text(
                                  "Baga Beach",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.place_outlined),
                                    Text("Goa India")
                                  ],
                                ),
                                Row(
                                  children: [
                                    RatingBar.builder(
                                      itemSize: 15,
                                      initialRating: 4.8,
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
                                    Text("4.8" ,style: TextStyle(color: Colors.black),)
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ]),
                    ),
                  ),
                
                  
                ],
              ),
              
            ),
             SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Package",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  "see all",
                  style: TextStyle(
                      color: Color.fromARGB(255, 161, 158, 158), fontSize: 17),
                ),
              ],
            ),
            SizedBox(height: 10,),
             Container(
               height: 200,
                width: double.infinity,
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13), 
                   border: Border.all(color: Colors.grey),
                 
                 ),
                  child:Row(
                    children: [
                       

                       Padding(
                         padding: const EdgeInsets.all(7.0),
                         child: Container(
                           height: 180,
                            width: 100,
                             
                          child: Image.network("https://cdn.pixabay.com/photo/2017/12/15/13/51/polynesia-3021072__480.jpg",fit: BoxFit.cover,)),
                       ),
                        Padding(
                          padding: const EdgeInsets.only(top: 1),
                          child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Row(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              
                                children: [
                                  Text("Kuta Beach",style: TextStyle( fontSize: 22),),
                                   Align(
                                     alignment: Alignment.topRight,
                                     child: FavoriteButton(
                                        
                                                             valueChanged: () {},
                                                           ),
                                   ),

                                ],
                                
                              ),
                               Text("₹2400.20", style: TextStyle(color: Colors.red),),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    RatingBar.builder(
                                        itemSize: 15,
                                        initialRating: 4.8,
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
                                       Text("4.2")
                                  ],
                                ),
                                   SizedBox(height: 4,),
                                   Container(
                                     height: 80,
                                     width: 180,
                                    child: Text("A resort is a space, similar to a hotel, that offers relaxation and or recreation to its patrons"))

                            ],
                          ),
                        )

                    ],
                  ) 

              ,
             ),
              SizedBox(height: 30,),
              Container(
               height: 200,
                width: double.infinity,
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13), 
                   border: Border.all(color: Colors.grey),
                 
                 ),
                  child:Row(
                    children: [
                       

                       Padding(
                         padding: const EdgeInsets.all(7.0),
                         child: Container(
                           height: 180,
                            width: 100,
                             
                          child: Image.network("https://cdn.pixabay.com/photo/2014/12/16/22/25/woman-570883__480.jpg",fit: BoxFit.cover,)),
                       ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: SingleChildScrollView(
                             scrollDirection: Axis.horizontal,
                            child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Row(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                
                                  children: [
                                    Text("Baga Beach",style: TextStyle( fontSize: 20),),
                                     FavoriteButton(
                                                             valueChanged: () {},
                                                           ),
                          
                                  ],
                                  
                                ),
                                 Text("₹15009.20", style: TextStyle(color: Colors.red),),
                                  SizedBox(height: 8,),
                                  Row(
                                    children: [
                                      RatingBar.builder(
                                          itemSize: 15,
                                          initialRating: 4.8,
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
                                         Text("4")
                                    ],
                                  ),
                                     SizedBox(height: 4,),
                                     Container(
                                       height: 80,
                                       width: 180,
                                      child: Text("A resort is a space, similar to a hotel, that offers relaxation and or recreation to its patrons"))
                          
                              ],
                            ),
                          ),
                        )

                    ],
                  ) 

              ,
             )
          ]),
        ),
      ),
    );
  }
}
 