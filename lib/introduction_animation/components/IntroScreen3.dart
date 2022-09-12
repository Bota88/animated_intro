

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'intro_helper.dart';
class IntroScreen3 extends StatelessWidget {
  final AnimationController animationController;
  final String title;
  final String text;
  final String image;

  const IntroScreen3({Key? key, required this.animationController, required this.title, required this.text, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firstAnimation = Tween<Offset>(begin: const Offset(2, 0), end: const Offset(0, 0)).animate(CurvedAnimation(parent: animationController, curve: const Interval(0.2, 0.4, curve: Curves.fastOutSlowIn,),));
    final secondAnimation = Tween<Offset>(begin: const Offset(0, 0), end: const Offset(-2, 0)).animate(CurvedAnimation(parent: animationController, curve: const Interval(0.4, 0.6, curve: Curves.fastOutSlowIn,),));
    final titleFirstAnimation = Tween<Offset>(begin: const Offset(2, 0), end: const Offset(0, 0)).animate(CurvedAnimation(parent: animationController, curve: const Interval(0.2, 0.4, curve: Curves.fastOutSlowIn,),));
    final titleSecondAnimation = Tween<Offset>(begin: const Offset(0, 0), end: const Offset(-2, 0)).animate(CurvedAnimation(parent: animationController, curve: const Interval(0.4, 0.6, curve: Curves.fastOutSlowIn,),));
    final imageFirstAnimation = Tween<Offset>(begin: const Offset(4, 0), end: const Offset(0, 0)).animate(CurvedAnimation(parent: animationController, curve: const Interval(0.2,       0.4,       curve: Curves.fastOutSlowIn,),));
    final imageSecondAnimation = Tween<Offset>(begin: const Offset(0, 0), end: const Offset(-4, 0)).animate(CurvedAnimation(parent: animationController, curve: const Interval(0.4, 0.6, curve: Curves.fastOutSlowIn,),));


    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Center(
      child: SlideTransition(
        position: firstAnimation,
        child: SlideTransition(
          position: secondAnimation,
          child: Padding(
            padding:  EdgeInsets.only(bottom:  height*.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SlideTransition(position: imageFirstAnimation, child: SlideTransition(position: imageSecondAnimation, child: IntroImage(image: image),),),
                SlideTransition(position: titleFirstAnimation, child: SlideTransition(position: titleSecondAnimation, child:   IntroTitle(title: title),),),
                IntroText(text: text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
