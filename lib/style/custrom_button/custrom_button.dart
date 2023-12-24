import 'package:flutter/material.dart';

class CustromButtom extends StatelessWidget {
  final String? name;
  final void Function()?onPressed;
  const CustromButtom({super.key, this.name, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(name!,
            style: TextStyle(
                color: Colors.white,
                fontSize: 19.0,
                fontWeight: FontWeight.bold)),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
