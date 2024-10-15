import 'package:english_vocab_app_ui/presentation/widgets/home/custom_heading_text.dart';
import 'package:english_vocab_app_ui/presentation/widgets/on_boarding/rotated_arrow_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomRectangle extends StatelessWidget {
  const BottomRectangle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset('assets/images/rectangle.svg'),
        Positioned(
            left: 47,
            top: MediaQuery.sizeOf(context).height * 0.132,
            child: SvgPicture.asset("assets/icons/selectt_frame.svg")),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
                width: 275,
                height: 180,
                child: CustomHeadingText(text: "Easy Way to Improve Your English Vocab", textAlign: TextAlign.center, fontSize: 38,)),
            Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset("assets/images/Rectangle 4.svg"),
                const RotatedArrowButton()
              ],
            ),
          ],
        )
      ],
    );
  }
}
