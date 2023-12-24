import 'package:flutter/material.dart';
import 'package:pay_pal/profile_view/profile_view_page.dart';
import 'package:pay_pal/registration_page/login_page.dart';
import 'package:pay_pal/style/app_bar/custrom_appBar.dart';

import '../style/custrom_button/custrom_button.dart';
import '../style/custrom_textForm/text_from_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custromAppbar(context: context),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, bottom: 15.0, right: 15.0),
        child: Center(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/pay_pal.png',
                ),
                SizedBox(
                  height: 10,
                ),
                TextFromField(hintText: 'Write here you email address'),
                SizedBox(
                  height: 10,
                ),
                TextFromField(
                    hintText: 'Password',
                    SuffixIcon: Icon(Icons.visibility),
                    secured: true),
                SizedBox(
                  height: 10,
                ),
                TextFromField(
                    hintText: 'Confirm Password',
                    SuffixIcon: Icon(Icons.visibility),
                    secured: true),
                SizedBox(
                  height: 10,
                ),
                CustromButtom(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => ProfileView() ,));
                  },
                  name: 'Sign Up',

                ),
                Container(
                  height: 150,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Having trouble logging in ?'),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => SignUp(),
                                ));
                          },
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Login_page(),
                                    ));
                              },
                              child: Text('Login'))),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
