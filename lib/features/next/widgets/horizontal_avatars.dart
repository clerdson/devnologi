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
    return ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, i) {
          return CircleAvatar(
              radius: 40.0,
              backgroundColor: Colors.transparent,
              child: Column(
                children: [
                  Image.asset('avatar.png'),
                  const SizedBox(height: 10,),
                  const Text('Shoes',style: TextStyle(color: Colors.black),),
                ],
              ));
        });
  }
}
