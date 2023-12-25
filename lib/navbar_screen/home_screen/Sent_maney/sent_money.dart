import 'package:flutter/material.dart';

import '../../../style/app_bar/custrom_appBar.dart';
import '../../../style/custrom_button/custrom_button.dart';
import '../../../style/custrom_textForm/text_from_field.dart';
import '../../../success/success_pay.dart';
class SentMoney extends StatefulWidget {
  const SentMoney({super.key});

  @override
  State<SentMoney> createState() => _SentMoneyState();
}

class _SentMoneyState extends State<SentMoney> {
  @override
  Widget build(BuildContext context) {

    final Size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: custromAppbar(
          title: Text('Sent Money').data,
          action: [Padding(
            padding: const EdgeInsets.all(12.0),
          )],
          context: context
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(

          children: [
            ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Text('Prince Ahad'[0])),
              title: Text('To:'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text('Prince Ahad'),
                  Text('prince3020@gmail.com'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFromField(hintText: 'What is your amount'),
            ),
            Container(
              height: Size.height*.58,

              child: Padding(
                padding: const EdgeInsets.all(17.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustromButtom(
                      name: 'Sent',
                      onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessPAy(),));
                        print('sorry');
                      },
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
