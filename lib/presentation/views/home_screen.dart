import 'package:english_vocab_app_ui/constants.dart';
import 'package:english_vocab_app_ui/models/discovery_vocabs.dart';
import 'package:english_vocab_app_ui/presentation/widgets/home/best_of_week_bar.dart';
import 'package:english_vocab_app_ui/presentation/widgets/home/custom_heading_text.dart';
import 'package:english_vocab_app_ui/presentation/widgets/home/custom_sub_title_text.dart';
import 'package:english_vocab_app_ui/presentation/widgets/home/target_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: LayoutBuilder(builder: (context, constraints) {
          return SizedBox(
            height: constraints.maxHeight,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: CustomHeadingText(text: "Discover"),
                    ),
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        itemCount: DiscoveryVocabs.vocabsList.length,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          DiscoveryVocabs discoveryVocab = DiscoveryVocabs.vocabsList[index];
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
                                    height: 40,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    child: CustomSubTitleText(text: discoveryVocab.topic, color: kOrangeColor),
                                  ),
                                CustomHeadingText(text: discoveryVocab.title, fontSize: 21, color: Colors.white),
                                CustomSubTitleText(text: '${discoveryVocab.numberOfWords} vocabulary words', color: kLightWhiteColor)
                              ],))
                            ],
                          ),
                        );
                        },
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 24),
                      child: CustomHeadingText(text: "Best of Week"),
                    ),
                    const BestOfWeekBar(),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Column(
                        children: List.generate(3, (index) => Container(
                          width: double.infinity,
                          height: 80,
                          margin: const EdgeInsets.symmetric(vertical: 12),
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(width: 1, color: kBorderColor),
                          ),
                          child: const TargetCard(
                            title: "Monthly Target",
                            subTitle: "1.523 vocabulary words",
                          ),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}


