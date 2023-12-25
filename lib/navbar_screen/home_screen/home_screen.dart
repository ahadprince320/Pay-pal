import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pay_pal/navbar_screen/home_screen/Activity/activity_page.dart';
import 'package:pay_pal/navbar_screen/home_screen/Sent_maney/sent_money.dart';
import 'package:pay_pal/style/custrom_list_title/list_title.dart';

import '../../controller/image_controller.dart';
import '../../style/app_bar/custrom_appBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ProfileSetupController profileSetupController =
      Get.put(ProfileSetupController());
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.sizeOf(context);
    return Scaffold(
      
      appBar: custromAppbar(
        backgroundColor: Color(0xff001FB8),
        isLeading: Padding(
          padding: const EdgeInsets.only(left: 12.0, top: 8.0, bottom: 8.0),
          child: Image(
            image: AssetImage('assets/images/icon_p.png'),
          ),
        ),
        action: [
          GetBuilder<ProfileSetupController>(
            builder: (controller) {
              return Container(
                child: profileSetupController.pickedImage == null
                    ? CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDtAJSO01-u8cV6hUbdBn1WIEqd1pQURT_WydQXKGejZqmk1U4UoKybT_llB0gcT6niYU&usqp=CAU'))
                    : CircleAvatar(
                        radius: 60,
                        backgroundImage:
                            FileImage(profileSetupController.pickedImage!),
                      ),
              );
            },
          )
        ],
        context: context,
      ),
      body: Column(
        children: [
          Container(
            height: Size.height * .30,
            width: Size.width,
            decoration: BoxDecoration(
                color: Color(0xff001FB8),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(50))),
            child: Column(
              children: [
                Container(
                  height: Size.height * .30,
                  width: Size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Hello, Prince !',
                            style: TextStyle(color: Colors.white30)),
                        SizedBox(
                          height: 40,
                        ),
                        Text('\$250.00',
                            style:
                                TextStyle(color: Colors.white, fontSize: 40)),
                        SizedBox(
                          height: 7.0,
                        ),
                        Text('Your Balance',
                            style:
                                TextStyle(color: Colors.white, fontSize: 17.0)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SentMoney(),));
                          },
                          child: Container(
                            height: 120,
                            width: Size.width * .30,
                            decoration: BoxDecoration(
                                color: Color(0xff001FB8),
                                borderRadius: BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Icon(Icons.upload, color: Colors.white),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text('Save\nmone',
                                      style: TextStyle(color: Colors.white)),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        Container(
                          height: 120,
                          width: Size.width * .30,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Icon(Icons.download_sharp,
                                    color: Color(0xff001FB8)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text('Add\nManey,',
                                    style: TextStyle(
                                        color: Color(0xff001FB8),
                                        fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Activity', style: TextStyle(fontSize: 19)),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ActivityPage(),));
                          },
                          child: Text(
                            'View all',
                            style: TextStyle(color: Color(0xff001FB8)),
                          ),
                        )
                      ],
                    ),
                   ListView.builder(
                     shrinkWrap: true,
                     primary: false,
                     itemCount: 10,
                     itemBuilder: (context, index) {
                     return CustromListTitle();
                   },)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
