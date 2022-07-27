import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HStack2 extends StatefulWidget {
  const HStack2({Key? key}) : super(key: key);

  @override
  State<HStack2> createState() => _HStackState2();
}

class _HStackState2 extends State<HStack2> {
  @override
  Widget build(BuildContext context) {
    return
     ListView.builder(
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (ctx,i){
      return  Container(
        width: 330,
        height: 300,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Image.asset('banner.png'),);
    });
  }
}