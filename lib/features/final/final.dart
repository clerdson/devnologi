
import 'package:flutter/material.dart';


class Final extends StatefulWidget {
  const Final({Key? key}) : super(key: key);

  @override
  State<Final> createState() => _FinalState();
}

class _FinalState extends State<Final> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 200,left: 30,right:30,),
          child: Center(
            
            child: Column(
              children: [
                Image.asset('Groupfinal.png'),
                   const SizedBox(height: 20,),
                const Text('Order Placed!',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold ,fontSize: 30),),
                const SizedBox(height: 40,),
                 const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and ',textAlign: TextAlign.center,),      
                
                  const SizedBox(width: 20,),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('/final');
                              },
                              child: Padding(
                                padding:const EdgeInsets.all(20),
                                child: Container(
                                  padding:const EdgeInsets.only(top: 7, left: 15),
                                  width: 150,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[800],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Row(
                                    children: [
                                     const Text('MY ORDERS',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                     const SizedBox(
                                        width: 10,
                                      ),
                                      Image.asset(
                                        'Vector2.png',
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                         
                    ],
            ),
          ),
        ),
      );
  }
}