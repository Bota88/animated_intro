
import 'package:flutter/material.dart';

import 'components/IntroScreen1.dart';
import 'components/IntroScreen2.dart';
import 'components/IntroScreen3.dart';
import 'components/IntroScreen4.dart';
import 'components/IntroScreen5.dart';
import 'components/center_next_button.dart';
import 'components/top_back_skip_view.dart';


class IntroductionAnimationScreen extends StatefulWidget {
  const IntroductionAnimationScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionAnimationScreen> createState() => _IntroductionAnimationScreenState();
}

class _IntroductionAnimationScreenState
    extends State<IntroductionAnimationScreen> with TickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 6));
    _animationController?.animateTo(0.0);
    super.initState();
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  var image1='1';
  var image2='2';
  var image3='3';
  var image4='4';
  var image5='5';

  var text1='Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore  dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor in  dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor in';
  var text2='Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore eiusmod tempor incididunt ut labore';
  var text3='Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore eiusmod tempor incididunt ut labore eiusmod tempor incididunt ut labore';
  var text4='Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore eiusmod tempor incididunt ut labore eiusmod tempor incididunt ut labore eiusmod tempor incididunt ut labore';
  var text5='Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore eiusmod tempor incididunt ut labore eiusmod tempor incididunt ut labore eiusmod tempor incididunt ut labore eiusmod tempor incididunt ut labore';

  var title1=' First Screen';
  var title2='Second Screen';
  var title3='Third Screen';
  var title4='Fourth Screen';
  var title5='Fifth Screen';

  @override
  Widget build(BuildContext context) {
    debugPrint(_animationController?.value.toString());
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(

      backgroundColor:
      const Color(0xffF7EBE1)
     // Colors.lightGreen
      //Colors.yellow
      ,
      body: SafeArea(

        child: ClipRect(
          child: Stack(
           // alignment: Alignment.center,
            children: [
              SizedBox(width: width,height: height,),

              IntroScreen1(
                animationController: _animationController!,
                title: title1,image: image1,text: text1,
              ),
              IntroScreen2(
                animationController: _animationController!,
                title: title2,image: image2,text: text2,
              ),
              IntroScreen3(
                animationController: _animationController!,
                title: title3,image: image3,text: text3,
              ),
              IntroScreen4(
                animationController: _animationController!,
                title: title4,image: image4,text: text4,
              ),
              IntroScreen5(
                animationController: _animationController!,
                title: title5,image: image5,text: text5,
              ),
              TopBackSkipView(
                onBackClick: _onBackClick,
                onSkipClick: _onSkipClick,
                animationController: _animationController!,
              ),
              CenterNextButton(
                animationController: _animationController!,
                onNextClick: _onNextClick,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onSkipClick() {
    _animationController?.animateTo(0.8,
        duration: Duration(milliseconds: 2000));
  }

  void _onBackClick() {
    if (_animationController!.value >= 0 &&
        _animationController!.value <= 0.2) {
      _animationController?.animateTo(0.0);
    } else if (_animationController!.value > 0.2 &&
        _animationController!.value <= 0.4) {
      _animationController?.animateTo(0.2);
    } else if (_animationController!.value > 0.4 &&
        _animationController!.value <= 0.6) {
      _animationController?.animateTo(0.4);
    } else if (_animationController!.value > 0.6 &&
        _animationController!.value <= 0.8) {
      _animationController?.animateTo(0.6);
    } else if (_animationController!.value > 0.8 &&
        _animationController!.value <= 1.0) {
      _animationController?.animateTo(0.8);
    }
  }

  void _onNextClick() {
    if (_animationController!.value >= 0 &&
        _animationController!.value <= 0.2) {
      _animationController?.animateTo(0.4);
    } else if (_animationController!.value > 0.2 &&
        _animationController!.value <= 0.4) {
      _animationController?.animateTo(0.6);
    } else if (_animationController!.value > 0.4 &&
        _animationController!.value <= 0.6) {
      _animationController?.animateTo(0.8);
    } else if (_animationController!.value > 0.6 &&
        _animationController!.value <= 0.8) {
      _signUpClick();
    }
  }

  void _signUpClick() {

    _animationController?.animateTo(0.0,
        duration: Duration(milliseconds: 2000));
  }
}
