import 'package:flutter/material.dart';
import './mac/splash_screen.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
          title:'​​​ᏰᏝᏬᎬ  ᎰᎯᎨᏒᎽ',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor:Colors.blueAccent
          ),
          home:SplashScreen()
      ),
    );
  }
}