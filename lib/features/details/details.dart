import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 90),
      child: Scaffold(
       
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                'Lorem Ipsum is simplyronic  essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset('note.png'),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15)),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'price:',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'R\$ 1,519.99',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'About this item:',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text('Lorem Ipsum is simplyronic  essentially unchanged.'),
                  Text('Lorem Ipsum is simplyronic  essentially unchanged.'),
                  Text('Lorem Ipsum is simplyronic  essentially unchanged.'),
                  Text('Lorem Ipsum is simplyronic  essentially unchanged.'),
                  Text('Lorem Ipsum is simplyronic  essentially unchanged.'),
                  Text('Lorem Ipsum is simplyronic  essentially unchanged.'),
                  Text('Lorem Ipsum is simplyronic  essentially unchanged.'),
                ],
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    height: 100,
                    color: Colors.grey[700],
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Container(
                              padding: EdgeInsets.only(top: 7, left: 15),
                              width: 150,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: [
                                 const Text('SHARED THIS',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold)),
                                 const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset('Vector.png'),
                                ],
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/car');
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
                                 const Text('ADD TO CART',
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
        ),
      ),
    );
  }
}
