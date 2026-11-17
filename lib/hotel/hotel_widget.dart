import 'package:flutter/material.dart';
import 'hotel_name.dart';
class HotelWidget extends StatelessWidget{
  String hotelName;
  String hotelImage;
  HotelWidget({required this.hotelName,required this.hotelImage});
  @override
  Widget build(BuildContext context) {
  return  Expanded(
    flex: 1,

  child: Stack(
  alignment: Alignment.bottomCenter,
  children: [ClipRRect(
    borderRadius: BorderRadiusGeometry.circular(16),
    child: Image.asset(hotelImage,
    width: double.infinity,
    fit: BoxFit.cover)),
  HotelName(hotelName: hotelName,margin: 8,)

  ],
),
);
}
}