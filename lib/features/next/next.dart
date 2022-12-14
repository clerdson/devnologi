import 'package:devnology_test/features/next/widgets/horizontal_avatars.dart';
import 'package:devnology_test/features/next/widgets/horizontal_cards.dart';
import 'package:devnology_test/features/next/widgets/horizontal_notebook.dart';
import 'package:flutter/material.dart';



class Next extends StatefulWidget {
  const Next({Key? key}) : super(key: key);

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30,right: 30),
  child:  SingleChildScrollView(
    child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SizedBox(
              height: 30,
            ),
              const Text(
                'Categories',
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),
              ),
               const SizedBox(
              height: 20,
            ),
            
            SizedBox(
              width: 400,
              height: MediaQuery.of(context).size.height*0.15,
              child: HStack(),
            ),
                 const SizedBox(
              height: 35,
            ),
            
              const Text(
              'Latest',
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),
            ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 1.65,
              height: 200,
              child: HStack2(),
            ),
               SizedBox(
              width:  MediaQuery.of(context).size.width * 1.65,
              height: 150,
              child: HStack3(),
            )])));
 
  }
}