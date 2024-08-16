import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
    Mytext({super.key, required this.textdata, required this.size, required this.color, required this.fontWeight});
  final String textdata;
final   double size;
final Color? color;
final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(textdata,
        style: TextStyle(fontSize: size,
        color: color,
        fontWeight:fontWeight ),),
    );
  }
}
