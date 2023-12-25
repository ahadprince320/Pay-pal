import 'package:flutter/material.dart';
class CustromListTitle extends StatelessWidget {

  const CustromListTitle({super.key});



  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey.withOpacity(.60),
          child: Text('Mike Rine'[0],
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
          ),
                  ),
        title: Text('Mike Rine',style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('2 hours ago'),
        trailing: Text('+\$250',style: TextStyle(color: Colors.green,fontSize: 18)),
      ),
    );
  }
}
