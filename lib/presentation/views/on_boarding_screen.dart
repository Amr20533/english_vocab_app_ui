import 'package:english_vocab_app_ui/constants.dart';
import 'package:english_vocab_app_ui/presentation/widgets/on_boarding/bottom_rectangle.dart';
import 'package:flutter/material.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Screen Width --> ${MediaQuery.sizeOf(context).width}\n Screen Height --> ${MediaQuery.sizeOf(context).height}");
    return Scaffold(
      backgroundColor: kBgColor,
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
        child: Stack(
          children: [
            Image.asset("assets/images/Group 10.png", ),
            Positioned(
                top: MediaQuery.sizeOf(context).height * 0.06,
                left: -46,
                child: Image.asset("assets/images/character.png")),

            Positioned(
              left: 0,
              right: 0,
              top: MediaQuery.sizeOf(context).height * 0.50,
              child: const BottomRectangle(),

            ),
            Positioned(
                bottom: 6,
                right: -85,
                child: Image.asset("assets/images/headphone.png")),

            Positioned(
                bottom: MediaQuery.sizeOf(context).height * 0.142,
                left: -22,
                child: Image.asset("assets/images/pen.png")),


          ],
        ),
      ),
    );
  }
}


