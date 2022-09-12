import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'intro_helper.dart';
class IntroScreen2 extends StatelessWidget {
  final AnimationController animationController;
  final String title;
  final String text;
  final String image;

  const IntroScreen2({Key? key, required this.animationController, required this.title, required this.text, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firstAnimation = Tween<Offset>(begin: const Offset(0, 2), end: const Offset(0, 0)).animate(CurvedAnimation(parent: animationController, curve: const Interval(0.0, 0.2, curve: Curves.fastOutSlowIn,),),);
    final secondAnimation = Tween<Offset>(begin:  const Offset(0, 0), end: const Offset(-2, 0)).animate(CurvedAnimation(parent: animationController, curve: const Interval(0.2, 0.4, curve: Curves.fastOutSlowIn,),),);
    final textAnimation = Tween<Offset>(begin: const Offset(0, 0), end: const Offset(-2, 0)).animate(CurvedAnimation(parent: animationController, curve: const Interval(0.2, 0.4, curve: Curves.fastOutSlowIn,),),);
    final imageAnimation = Tween<Offset>(begin: const Offset(0, 0), end: const Offset(-4, 0)).animate(CurvedAnimation(parent: animationController, curve: const Interval(0.2, 0.4, curve: Curves.fastOutSlowIn,),),);
    final titleAnimation = Tween<Offset>(begin: const Offset(0, -2), end: const Offset(0, 0)).animate(CurvedAnimation(parent: animationController, curve: const Interval(0.0, 0.2, curve: Curves.fastOutSlowIn,),),);



    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Center(
      child: SlideTransition(
        position: firstAnimation,
        child: SlideTransition(
          position: secondAnimation,
          child: Padding(
            padding:  EdgeInsets.only(bottom: height*.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SlideTransition(position: titleAnimation, child:  IntroTitle(title: title),),
                SlideTransition(position: textAnimation, child:   IntroText(text: text),),
                SlideTransition(position: imageAnimation, child:IntroImage(image: image),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
