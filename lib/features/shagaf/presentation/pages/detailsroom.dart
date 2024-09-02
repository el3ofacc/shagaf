import 'package:flutter/material.dart';
import 'package:shagaf2/core/constants/imagelinks.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/detailsroomproperties.dart';

class Detailsroom extends StatelessWidget {
    Detailsroom({super.key, required this.thetitle});
final String thetitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, 
      body: Detailsroomproperties(title: thetitle,)
    );
  }
}