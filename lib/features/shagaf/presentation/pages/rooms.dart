import 'package:flutter/material.dart';
import 'package:shagaf2/core/constants/imagelinks.dart';
import 'package:shagaf2/features/shagaf/data/models/roommodel.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/mytext.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/roomlistview.dart';

class Rooms extends StatelessWidget {
    Rooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Roomlistview()
    );
  }
}
