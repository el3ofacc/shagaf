import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shagaf2/core/appthem.dart';
import 'package:shagaf2/features/shagaf/presentation/bloc/shagaf_bloc.dart';
import 'package:shagaf2/features/shagaf/presentation/pages/homepage.dart';
import 'package:shagaf2/features/shagaf/presentation/pages/splashscreen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ShagafBloc(),
        ),
      ],
      child: MaterialApp(home: Splashscreen(),
      theme: Appthem().themeData,
      debugShowCheckedModeBanner: false,),
    );
  }
}
