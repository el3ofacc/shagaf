// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shagaf2/core/constants/colors.dart';
// import 'package:shagaf2/core/functions/navigate.dart';
// import 'package:shagaf2/features/shagaf/data/repositories/onboardinglist.dart';
// import 'package:shagaf2/features/shagaf/presentation/bloc/shagaf_bloc.dart';
// import 'package:shagaf2/features/shagaf/presentation/pages/homepage.dart';
// import 'package:shagaf2/features/shagaf/presentation/pages/login.dart';
// import 'package:shagaf2/features/shagaf/presentation/widgets/mylistgenerate.dart';
// import 'package:shagaf2/features/shagaf/presentation/widgets/mypageview.dart';

// class Onboarding1 extends StatelessWidget {
//   const Onboarding1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor: Color(0xff146356),
//       body: SafeArea(
//         child: Stack(
//           children: [
//             Mypageview(),
//             Positioned(
//                 top: size.height / 1.26,
//                 left: size.width / 2.37,
//                 child: Mylistgenerate()),
//             Positioned(
//                 top: size.height / 1.18,
//                 left: size.width / 2.2,
//                 child: BlocBuilder<ShagafBloc, ShagafState>(
//                   builder: (context, state) {
//                     return CircleAvatar(
//                         radius: size.height / 26,
//                         child: InkWell(
//                           onTap: () {
//                             int newindex = 0;
//                             if (state is changeindexstate) {
//                               newindex = state.index + 1;
//                               if (newindex < onboardinglist.length) {
//                                 context
//                                     .read<ShagafBloc>()
//                                     .add(changeindexevent(newindex));
//                                 context
//                                     .read<ShagafBloc>()
//                                     .pageController
//                                     .animateToPage(newindex,
//                                         duration: Duration(microseconds: 300),
//                                         curve: Curves.easeIn);
//                               } else {
//                                 navigate(context, () => Login());
//                               }
//                             }
//                           },
//                           child: Icon(
//                             Icons.arrow_forward,
//                             color: Colors.white,
//                           ),
//                         ),
//                         backgroundColor: green);
//                   },
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shagaf2/core/constants/colors.dart';
import 'package:shagaf2/core/functions/navigate.dart';
import 'package:shagaf2/features/shagaf/data/repositories/onboardinglist.dart';
import 'package:shagaf2/features/shagaf/presentation/bloc/shagaf_bloc.dart';
import 'package:shagaf2/features/shagaf/presentation/pages/login.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/mylistgenerate.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/mypageview.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff146356),
      body: SafeArea(
        child: Stack(
          children: [
            Mypageview(),
            Positioned(
              top: size.height / 1.26,
              left: size.width / 2.37,
              child: Mylistgenerate(),
            ),
            Positioned(
              top: size.height / 1.18,
              left: size.width / 2.2,
              child: BlocBuilder<ShagafBloc, ShagafState>(
                builder: (context, state) {
                  return CircleAvatar(
                    radius: size.height / 26,
                    child: InkWell(
                      onTap: () {
                        if (state is changeindexstate) {
                          int newIndex = state.index + 1;
                          if (newIndex < onboardinglist.length) {
                            context.read<ShagafBloc>().add(changeindexevent(newIndex));
                          } else {
                            navigate(context, () => Login());
                          }
                        }
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: green,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
