
import 'package:flutter/material.dart';


class Car extends StatefulWidget {
  const Car({Key? key}) : super(key: key);

  @override
  State<Car> createState() => _CarState();
}

class _CarState extends State<Car> {
 late int  conterCount=0;
   void _increment() {
    setState(() {
      conterCount++;
    
    });
  }

  void _dicrement() {
    setState(() {
     conterCount--;
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          const Text(
            'Cart',
            style: TextStyle(
              fontSize: 40,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Image.asset(
                'note.png',
                width: 150,
                height: 150,
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 250,
                height: 130,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                        'Lorem Ipsum is simplyronic  essentially unchanged. It was popularised in the 1960s with the'),
                    const Text(
                      'R\$ 1,519.99',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(children: [
                      GestureDetector(
                        onTap: (){
                          _increment();
                        },
                        child: Container(
                        width: 30,
                        height: 30,
                          decoration: BoxDecoration(
                              color: Colors.black,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(child: Icon(Icons.add,color: Colors.white,)),
                        ),
                      ),
                      Text(conterCount.toString()),
                          GestureDetector(
                            onTap: (){
                              _dicrement();
                            },
                            child: Container(
                                                width: 30,
                                                height: 30,
                                                  decoration: BoxDecoration(
                              color: Colors.black,
                            borderRadius: BorderRadius.circular(50)
                                                  ),
                                                  child:Center(child: Icon(Icons.remove,color: Colors.white,)),
                                                ),
                          )
                    ],)
                  ],
                ),
              )
              
            ],
          ),
          Row(children: [
            Image.asset(
              'note.png',
              width: 150,
              height: 150,
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 250,
              height: 130,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                      'Lorem Ipsum is simplyronic  essentially unchanged. It was popularised in the 1960s with the'),
                  Text(
                    'R\$ 1,519.99',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                         Row(children: [
                      GestureDetector(
                        onTap: (){
                          _increment();
                        },
                        child: Container(
                        width: 30,
                        height: 30,
                          decoration: BoxDecoration(
                              color: Colors.black,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(child: Icon(Icons.add,color: Colors.white,)),
                        ),
                      ),
                      Text(conterCount.toString()),
                          GestureDetector(
                            onTap: (){
                              _dicrement();
                            },
                            child: Container(
                                                width: 30,
                                                height: 30,
                                                  decoration: BoxDecoration(
                              color: Colors.black,
                            borderRadius: BorderRadius.circular(50)
                                                  ),
                                                  child:Center(child: Icon(Icons.remove,color: Colors.white,)),
                                                ),
                          )
                    ],)
                ],
              ),
            )
          ]),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                height: 100,
                color: Colors.grey[700],
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Total',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            'R\$ 1,519.99',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/final');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          padding: const EdgeInsets.only(top: 7, left: 15),
                          width: 150,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              const Text('CHECKOUT',
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
          ),
        ],
      ),
    );
  }
}
