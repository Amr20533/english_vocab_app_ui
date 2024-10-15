import 'package:english_vocab_app_ui/constants.dart';
import 'package:english_vocab_app_ui/models/discovery_vocabs.dart';
import 'package:english_vocab_app_ui/presentation/widgets/home/best_of_week_bar.dart';
import 'package:english_vocab_app_ui/presentation/widgets/home/custom_heading_text.dart';
import 'package:english_vocab_app_ui/presentation/widgets/home/discovery_vocab_card.dart';
import 'package:english_vocab_app_ui/presentation/widgets/home/target_card.dart';
import 'package:flutter/material.dart';


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
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 80, bottom: 20),
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
                          return DiscoveryVocabCard(discoveryVocab: discoveryVocab, index: index,);
                        },
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 24),
                      child: CustomHeadingText(text: "Best of Week"),
                    ),
                    const BestOfWeekBar(),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, right: 20),
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



