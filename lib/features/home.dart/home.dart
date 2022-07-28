import 'package:devnology_test/features/car/car.dart';
import 'package:devnology_test/features/details/details.dart';
import 'package:devnology_test/features/next/next.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  late int selectedIndex =0;
   Home({Key? key,required this.selectedIndex}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  bool visible = true;
  bool visibleappbar = false;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
   // ignore: prefer_final_fields
   List<Widget> _widgetOptions = <Widget>[
    Next(),
    Detail(),
    Car(),
    Text('Menu')
  ];
  void _onItemTapped(int index) {
    setState(() {
    widget.selectedIndex = index;
      if(widget.selectedIndex ==1){
        visible = false;
      }
    
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Image.asset(
            'Logo.png',
            width: 200,
          ),
          actions: widget.selectedIndex == 0
              ? [
                  IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.notification_add,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ]
              : [
                  IconButton(
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ]),
      body: Center(
        child: _widgetOptions.elementAt(widget.selectedIndex),
      ),
      bottomNavigationBar: AnimatedContainer(
        
          duration: Duration(milliseconds: 500),
          child: visible
              ?  BottomNavigationBar(
              
                
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                      ),
                      label: 'Home',
                      backgroundColor: Color.fromARGB(255, 34, 32, 45),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.business),
                      label: 'Business',
                    ),
                    BottomNavigationBarItem(
                      icon: Stack(
                        children: <Widget>[
                          Icon(Icons.shopping_cart),
                          Positioned(
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              constraints: BoxConstraints(
                                minWidth: 12,
                                minHeight: 12,
                              ),
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                      label: 'Notifications',
                        backgroundColor: Color.fromARGB(255, 34, 32, 45),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.menu),
                      label: 'School',
                    ),
                  ],
                  currentIndex: widget.selectedIndex,
                  selectedItemColor: Colors.white,
                  onTap: _onItemTapped,
                )
              : const Detail()),
    );
  }
}
