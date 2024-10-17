class WeekActivities{
  final String title;
  final String iconPath;
  WeekActivities({required this.title, required this.iconPath});

  static List<WeekActivities> vocabsList = [
    WeekActivities(title: "Listen", iconPath: "assets/icons/headphone.png"),
    WeekActivities(title: "Read", iconPath: "assets/icons/book.png"),
    WeekActivities(title: "Write", iconPath: "assets/icons/paper.png"),
    WeekActivities(title: "Speak", iconPath: "assets/icons/chats.png"),
  ];
}