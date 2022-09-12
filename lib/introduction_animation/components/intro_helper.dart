import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class IntroText extends StatelessWidget {
  final String text;
  const IntroText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return  Center(
      child: Container(
        //color: Colors.red,
        width:kIsWeb?width*.5: width*.8,
        height: height*.15,
        child:  Text(
          text

          ,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: height*.016),
          // maxLines: 5,
          overflow: TextOverflow.fade,


        ),
      ),
    );
  }
}



class IntroTitle extends StatelessWidget {
  final String title;
  const IntroTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return  Padding(
      padding:  EdgeInsets.only(top:  height*.03, bottom: height*.03),
      child: Text(
        title,
        style:  TextStyle(fontSize:  height*.035, fontWeight: FontWeight.bold),
      ),
    );
  }
}



//[1]IntroImage not support IntroScreen1

class IntroImage extends StatelessWidget {
  final String image;
  const IntroImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      constraints: const BoxConstraints(maxWidth: 350, maxHeight: 250),
      child: Image.asset('assets/introduction_animation/intro$image.png', fit: BoxFit.contain,),
     // Image.network(image),

    );
  }
}


