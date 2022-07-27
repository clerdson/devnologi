import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HStack3 extends StatefulWidget {
  const HStack3({Key? key}) : super(key: key);

  @override
  State<HStack3> createState() => _HStackState3();
}

class _HStackState3 extends State<HStack3> {
  @override
  Widget build(BuildContext context) {
    return
     ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (ctx,i){
      return  Container(
        width: 140,
        height: 300,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Image.asset('Group.png'),);
    });
  }
}