import 'package:english_vocab_app_ui/constants.dart';
import 'package:english_vocab_app_ui/models/discovery_vocabs.dart';
import 'package:english_vocab_app_ui/presentation/widgets/home/custom_heading_text.dart';
import 'package:english_vocab_app_ui/presentation/widgets/home/custom_sub_title_text.dart';
import 'package:flutter/material.dart';

class DiscoveryVocabCard extends StatelessWidget {
  const DiscoveryVocabCard({
    super.key,
    required this.discoveryVocab,
    required this.index,
  });

  final DiscoveryVocabs discoveryVocab;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Stack(
        children: [
          Image.asset("assets/images/card_$index.png"),
          Positioned(
              top: 20,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 110,
                    height: 35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: CustomSubTitleText(text: discoveryVocab.topic, color: kOrangeColor),
                  ),
                  const SizedBox(height: 10,),
                  CustomHeadingText(text: discoveryVocab.title, fontSize: 21, color: Colors.white),
                  CustomSubTitleText(text: '${discoveryVocab.numberOfWords} vocabulary words', color: kLightWhiteColor)
                ],))
        ],
      ),
    );
  }
}
