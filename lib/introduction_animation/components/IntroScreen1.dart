import 'package:flutter/material.dart';
import 'intro_helper.dart';
class IntroScreen1 extends StatefulWidget {
  final AnimationController animationController;
  final String title;
  final String text;
  final String image;

  const IntroScreen1({Key? key, required this.animationController, required this.title, required this.text, required this.image})
      : super(key: key);

  @override
  State<IntroScreen1> createState() => _IntroScreen1State();
}

class _IntroScreen1State extends State<IntroScreen1> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    final introductionAnimation = Tween<Offset>(begin: const Offset(0, 0), end: const Offset(0.0, -1.0)).animate(CurvedAnimation(parent: widget.animationController, curve: const Interval(0.0, 0.2, curve: Curves.fastOutSlowIn,),));



    return SlideTransition(
      position: introductionAnimation,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
             // width: width,
              //height: height,
              child:
              Image.asset('assets/introduction_animation/intro1.png', fit: BoxFit.cover,height: height*.5,)
              //Image.network(widget.image,height: height*.5,fit: BoxFit.cover),
            ),
            IntroTitle(title: widget.title),
            IntroText(text: widget.text),
             SizedBox(height: height*.07,),


            FirstScreenButton(animationController: widget.animationController),//  Let's begin  button todo [**]
          ],
        ),
      ),
    );
  }
}

class FirstScreenButton extends StatelessWidget {
  final AnimationController animationController;
  const FirstScreenButton({Key? key, required this.animationController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return  Padding(
      padding:  EdgeInsets.only(bottom: height*.1),
      child: UnconstrainedBox(
        child: InkWell(
          onTap: () {
            animationController.animateTo(0.2);
          },
          child: Container(
            height: height*.07,
            alignment: Alignment.center,
            padding:  EdgeInsets.symmetric(horizontal: width*.08,vertical: 10),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(38.0),
              color: const Color(0xff132137),
            ),
            child:  Text(
              "Let's begin",
              style:  TextStyle(
                fontSize: height*.03,
                color: Colors.white,

              ),textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

