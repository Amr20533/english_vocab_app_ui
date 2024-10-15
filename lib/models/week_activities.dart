class WeekActivities{
  final String title;
  final String iconPath;
  WeekActivities({required this.title, required this.iconPath});

  static List<WeekActivities> vocabsList = [
    WeekActivities(title: "Listen", iconPath: "assets/icons/headphone.svg"),
    WeekActivities(title: "Read", iconPath: "assets/icons/books.svg"),
    WeekActivities(title: "Write", iconPath: "assets/icons/papers.svg"),
    WeekActivities(title: "Speak", iconPath: "assets/icons/chats.svg"),
  ];
}