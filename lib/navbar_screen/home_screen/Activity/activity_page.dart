import 'package:flutter/material.dart';
import 'package:pay_pal/style/app_bar/custrom_appBar.dart';

import '../../../style/custrom_list_title/list_title.dart';
class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: custromAppbar(
         title: Text('Activity').data,
           action: [Padding(
             padding: const EdgeInsets.all(12.0),
             child: Icon(Icons.search),
           )],
           context: context
       ),
      body:  ListView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: 30,
        itemBuilder: (context, index) {
          return CustromListTitle();
        },),
    );
  }
}
