import 'package:english_vocab_app_ui/presentation/views/home_screen.dart';
import 'package:english_vocab_app_ui/presentation/widgets/home/custom_heading_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Screen Width --> ${MediaQuery.sizeOf(context).width}\n Screen Height --> ${MediaQuery.sizeOf(context).height}");
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/on_boarding_.png"))
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: MediaQuery.sizeOf(context).height * 0.56,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    width: 275,
                    height: 180,
                    child: Text("Easy Way to Improve Your English Vocab", style: TextStyle(fontSize: 38, fontFamily: 'JosefinSans', fontWeight: FontWeight.w700),)),

                SizedBox(
                  width: 70.71,
                  height: 70.71,
                  child: IconButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const HomeScreen()));
                      },
                      mouseCursor: MouseCursor.defer,
                      padding: EdgeInsets.zero,
                      icon: SvgPicture.asset("assets/icons/arrow_right.svg")),
                ),
                const CustomHeadingText(text: "Best of Week"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
