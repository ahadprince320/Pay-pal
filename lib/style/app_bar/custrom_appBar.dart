import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget custromAppbar({
  String ? title,
  List<Widget>?action,
  Widget ? isLeading, required BuildContext context
}){

return AppBar(
centerTitle: true,
automaticallyImplyLeading: false,
leading:isLeading?? IconButton(onPressed: () {
  Navigator.pop(context);
}, icon: Icon(Icons.arrow_back)),
title:title!=null? Text(title):null,
  actions:action,
);
}