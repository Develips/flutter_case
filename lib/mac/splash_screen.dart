import 'package:flutter/material.dart';
import 'package:flutter_case/mac/main/main_page.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

  AnimationController _controller;
  Animation _animation;

  void initState() {
    super.initState();
    _controller = AnimationController(vsync:this,duration:Duration(milliseconds:3000));
    _animation = Tween(begin: 0.0,end:1.0).animate(_controller);
    /*动画事件监听器，
    它可以监听到动画的执行状态，
    我们这里只监听动画是否结束，
    如果结束则执行页面跳转动作。 */
    _animation.addStatusListener((status){
      if(status == AnimationStatus.completed){
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context)=>MainPage()),
                (route)=> route==null);
      }
    });
    //播放动画
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network(
          'https://pic3.zhimg.com/v2-5af460972557190bd4306ad66f360d4a.jpg',
          scale: 2.0,
          fit:BoxFit.cover
      ),
    );
  }
}