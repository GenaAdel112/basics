import 'package:basics/hotel.dart';
import 'package:basics/hotel/hotel_name.dart';
import 'package:basics/hotel/hotel_widget.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  List<Hotel> hotelsList = [];
  void addHotel(){
    for(int i = 1; i<=1000;i++){
      hotelsList.add(Hotel(name: 'Hotel Num$i', image: 'assets/images/Sharm_image.png'));
      hotelsList.add(Hotel(name: 'Hotel Num$i', image: 'assets/images/Alex _image.png'));
      hotelsList.add(Hotel(name: 'Hotel Num$i', image: 'assets/images/Aswan_image.png'));
      hotelsList.add(Hotel(name: 'Hotel Num$i', image: 'assets/images/Dahab_image.png'));
      hotelsList.add(Hotel(name: 'Hotel Num$i', image: 'assets/images/Nile_image.png'));
      hotelsList.add(Hotel(name: 'Hotel Num$i', image: 'assets/images/Marasy_image.png'));
    }
  }
  HomeScreen(){
    addHotel();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('Home Screen',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(padding: EdgeInsetsGeometry.all(16),
        child: GridView.builder(itemBuilder: (context, index) {
          return HotelWidget(hotelName: hotelsList[index].name, hotelImage: hotelsList[index].image
          );
        },
        itemCount: hotelsList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:
        2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
           ),

      ),
      ),
      ),
              );
              }
               HotelWidget mapToHotel(Hotel hotel){
               return HotelWidget(hotelName: hotel.name, hotelImage: hotel.image);
              }
              HotelWidget builtItemInlist(BuildContext context,int index){
              return HotelWidget(hotelName: hotelsList[index].name, hotelImage: hotelsList[index].image);

              }
              }









