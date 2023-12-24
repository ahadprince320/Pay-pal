import 'package:flutter/material.dart';
class TextFromField extends StatelessWidget {
  final String hintText;
  final TextInputType?keyboardType;
  final bool ?secured;
  final Widget?SuffixIcon;
  const TextFromField({super.key, required this.hintText, this.keyboardType, this.secured, this.SuffixIcon});


  @override
  Widget build(BuildContext context) {
    return  TextField(
      keyboardType: keyboardType,
      obscureText: secured??false,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
        filled: true,
       suffixIcon: SuffixIcon,
      ),
    );
  }
}
