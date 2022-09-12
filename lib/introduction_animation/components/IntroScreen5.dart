
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'intro_helper.dart';

class IntroScreen5 extends StatelessWidget {
  final AnimationController animationController;
  final String title;
  final String text;
  final String image;
  const IntroScreen5({Key? key, required this.animationController, required this.title, required this.text, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firstAnimation = Tween<Offset>(begin: const Offset(4, 0), end: const Offset(0, 0)).animate(CurvedAnimation(parent: animationController, curve: const Interval(0.6, 0.8, curve: Curves.fastOutSlowIn,),),);
    final secondAnimation = Tween<Offset>(begin:  const Offset(0, 0), end: const Offset(-2, 0)).animate(CurvedAnimation(parent: animationController, curve: const Interval(0.8, 1.0, curve: Curves.fastOutSlowIn,),),);
    final titleFirstHalfAnimation = Tween<Offset>(begin: const Offset(2, 0), end: const Offset(0, 0)).animate(CurvedAnimation(parent: animationController, curve: const Interval(0.6, 0.8, curve: Curves.fastOutSlowIn,),));
    final imageAnimation = Tween<Offset>(begin: const Offset(4, 0), end: const Offset(0, 0)).animate(CurvedAnimation(parent: animationController, curve: const Interval(0.6, 0.8, curve: Curves.fastOutSlowIn,),));


    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Center(
      child: SlideTransition(
        position: firstAnimation,
        child: SlideTransition(
          position: secondAnimation,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SlideTransition(position: imageAnimation, child: IntroImage(image: image),),
                SlideTransition(position: titleFirstHalfAnimation, child:   IntroTitle(title: title),),
                IntroText(text: text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
