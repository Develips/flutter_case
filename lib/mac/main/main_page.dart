import 'package:flutter/material.dart';
import 'package:flutter_case/mac/pages/home_page.dart';

class MainPage extends StatefulWidget {
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}
class _BottomAppBarDemoState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        },
        tooltip: 'Increment',
        child: Icon(
          Icons.color_lens,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color:Colors.blueAccent,
        shape:CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
                icon:Icon(Icons.extension),
                color:Colors.white,
                onPressed:(){
                }
            ),
            IconButton(
                icon:Icon(Icons.whatshot),
                color:Colors.white,
                onPressed:(){
                }
            ),
          ],
        ),
      ),
      body: HomePage()
    );
  }
}