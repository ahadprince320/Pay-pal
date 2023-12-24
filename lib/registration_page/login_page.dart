import 'package:flutter/material.dart';
import 'package:pay_pal/registration_page/signup_page.dart';
import 'package:pay_pal/style/custrom_button/custrom_button.dart';
import 'package:pay_pal/style/custrom_textForm/text_from_field.dart';

import '../profile_view/profile_view_page.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/pay_pal.png',
                      height: 250,
                      width: 400,

                    ),
                  ],
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
                CustromButtom(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => ProfileView() ,));
                  },
                  name: 'Login',

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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
                        },
                          child: Text('Sign up')),
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
