import 'package:flutter/material.dart';
import 'package:shagaf2/core/constants/colors.dart';
import 'package:shagaf2/core/constants/imagelinks.dart';
import 'package:shagaf2/core/functions/navigate.dart';
import 'package:shagaf2/features/shagaf/presentation/pages/signup.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/login/imagelogin.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/login/mymaterialbutton.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/login/mytextform.dart';
import 'package:shagaf2/features/shagaf/presentation/widgets/mytext.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phonecontroller = TextEditingController();

  TextEditingController passwordcotroller = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    phonecontroller.dispose();
    passwordcotroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formstate,
        child: ListView(
          children: [
            Imagelogin(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: yellow,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Mytext(
                            textdata: "Phone number",
                            size: 14,
                            color: null,
                            fontWeight: null),
                      ],
                    ),
                    Mytextform(
                        controller: phonecontroller,
                        hinttext: "Enter your phone number",
                        iconData: Icons.phone),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Mytext(
                            textdata: "Password",
                            size: 14,
                            color: null,
                            fontWeight: null),
                      ],
                    ),
                    Mytextform(
                        controller: passwordcotroller,
                        hinttext: "Enter your password",
                        iconData: Icons.lock),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Mytext(
                            textdata: "Forget Password ?",
                            size: 14,
                            color: Color(0xff363636),
                            fontWeight: FontWeight.bold)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Mymaterialbutton(
                      textdata: 'login',
                      myfun: () {
                        if(formstate.currentState!.validate()){ 

                        navigate(context, () => Signup());
                        }
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Mytext(
                            textdata: "don't have an account ?",
                            size: 14,
                            color: null,
                            fontWeight: null),
                        TextButton(
                            onPressed: () {},
                            child: Mytext(
                                textdata: "Sign up",
                                size: 15,
                                color: Colors.red,
                                fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
