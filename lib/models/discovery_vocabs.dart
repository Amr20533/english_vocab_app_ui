class DiscoveryVocabs{
  final String topic;
  final String title;
  final String numberOfWords;

  DiscoveryVocabs({required this.topic, required this.title, required this.numberOfWords});

  
  static List<DiscoveryVocabs> vocabsList = [
    DiscoveryVocabs(topic: "Health care", title: "Hospital Vocab", numberOfWords: "1,236"),
    DiscoveryVocabs(topic: "Technology", title: "Emerging AI Trends", numberOfWords: "1,320"),
  ];
}