import 'package:devnology_test/core/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
               Navigator.of(context).pushNamed('/home');
});
  }
  @override
  Widget build(BuildContext context) {
   return Container(
    color: color,
    child: Image.asset("Logo.png"),
    );
  }
}