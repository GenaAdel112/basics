
import 'package:flutter/material.dart';

class HotelName extends StatelessWidget {
  String hotelName;
  double radius;
  double verticalPadding;
  double margin;
  HotelName({required this.hotelName,
  this.radius=40, this.verticalPadding=8,this.margin=0.0});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: verticalPadding),
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: Color(0xFF024383),
      ),
      //alignment: Alignment.center,
      width: double.infinity,
      child: Text(
        hotelName,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w700,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
