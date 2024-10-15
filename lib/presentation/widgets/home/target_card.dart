import 'package:english_vocab_app_ui/presentation/widgets/home/custom_heading_text.dart';
import 'package:english_vocab_app_ui/presentation/widgets/home/custom_sub_title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TargetCard extends StatelessWidget {
  const TargetCard({
    super.key, required this.title, required this.subTitle,
  });
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomHeadingText(text: title, fontSize: 16,),
            const SizedBox(height: 5),
            CustomSubTitleText(text: subTitle),
          ],
        )),
        SvgPicture.asset('assets/icons/stars.svg')
      ],
    );
  }
}
