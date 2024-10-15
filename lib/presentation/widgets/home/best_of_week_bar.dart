import 'package:english_vocab_app_ui/constants.dart';
import 'package:english_vocab_app_ui/models/week_activities.dart';
import 'package:english_vocab_app_ui/presentation/widgets/home/custom_heading_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BestOfWeekBar extends StatelessWidget {
  const BestOfWeekBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: List.generate(WeekActivities.vocabsList.length, (index) {
          WeekActivities vocab = WeekActivities.vocabsList[index];
          return Container(
            width: 71.75,
            height: 90,
            margin: index < WeekActivities.vocabsList.length - 1 ? const EdgeInsets.only(right: 21) : EdgeInsets.zero,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kBoxColor
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(vocab.iconPath),
                const SizedBox(height: 8,),
                CustomHeadingText(text: vocab.title, fontSize: 14,),
              ],
            ),
          );

        }),
      ),
    );
  }
}
