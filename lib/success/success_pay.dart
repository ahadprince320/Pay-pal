import 'package:flutter/material.dart';

import '../navbar_screen/home_screen/home_screen.dart';
import '../style/custrom_button/custrom_button.dart';
class SuccessPAy extends StatefulWidget {
  const SuccessPAy({super.key});

  @override
  State<SuccessPAy> createState() => _SuccessPAyState();
}

class _SuccessPAyState extends State<SuccessPAy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,

         children: [
           Icon(Icons.check_circle_outline,size: 120,color: Colors.green,),
           Text('Success',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
           Text('\$150.00 USD',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
           Text('Has been sent to friend@email.com from your wallet',),
           SizedBox(height: 50,),
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: CustromButtom(
               name: 'Done',
               onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                 print('sorry');
               },
             ),
           ),
         ],
               ),
       ),
    );
  }
}
