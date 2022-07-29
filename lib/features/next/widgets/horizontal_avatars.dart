import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HStack extends StatefulWidget {
  const HStack({Key? key}) : super(key: key);

  @override
  State<HStack> createState() => _HStackState();
}

class _HStackState extends State<HStack> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
 CircleAvatar(
              radius: 40.0,
              backgroundColor: Colors.transparent,
              child: Column(
                children: [
                  Image.asset('Group1.png'),
                  const SizedBox(height: 10,),
                  const Text('Shoes',style: TextStyle(color: Colors.black),),
                ],
              )),
              CircleAvatar(
              radius: 40.0,
              backgroundColor: Colors.transparent,
              child: Column(
                children: [
                  Image.asset('Group3.png'),
                  const SizedBox(height: 10,),
                  const Text('Shoes',style: TextStyle(color: Colors.black),),
                ],
              )),
              CircleAvatar(
              radius: 40.0,
              backgroundColor: Colors.transparent,
              child: Column(
                children: [
                  Image.asset('Group2.png'),
                  const SizedBox(height: 10,),
                  const Text('Shoes',style: TextStyle(color: Colors.black),),
                ],
              )),
              CircleAvatar(
              radius: 40.0,
              backgroundColor: Colors.transparent,
              child: Column(
                children: [
                  Image.asset('Group4.png'),
                  const SizedBox(height: 10,),
                  const Text('Shoes',style: TextStyle(color: Colors.black),),
                ],
              ))
      ],
       
    ); 
      
  }
}
