import 'package:english_vocab_app_ui/constants.dart';
import 'package:english_vocab_app_ui/presentation/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RotatedArrowButton extends StatelessWidget {
  const RotatedArrowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 0.785398,
      child: IconButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const HomeScreen()));
        },
        padding: EdgeInsets.zero,
        icon: Container(
          width: 52,
          height: 52,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: kLightBlueColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Transform.rotate(
            angle: -0.785398,
            child: SvgPicture.asset("assets/icons/right_arrow.svg"),
          ),
        ),
      ),
    );
  }
}
