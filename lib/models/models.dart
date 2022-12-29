import 'package:flutter/widgets.dart';

class ThemeModel {
  final Color accentColor;
  final Color backgroundColor;
  final Color textColor;
  final Color syspnosisColor;
  final Color iconColor;

  ThemeModel({
    required this.accentColor,
    required this.backgroundColor,
    required this.textColor,
    required this.syspnosisColor,
    required this.iconColor,
  });
}

class ChapterModel {
  final String title;
  final int number;
  final AssetImage image;

  ChapterModel({
    required this.title,
    required this.number,
    required this.image,
  });
}

class MostPopularModel {
  final String title;
  final AssetImage image;
  final String sinpses;
  final double score;
  final String view;
  final int chapterCount;
  final List<ChapterModel> chapters;

  MostPopularModel({
    required this.title,
    required this.image,
    required this.sinpses,
    required this.score,
    required this.view,
    required this.chapterCount,
    required this.chapters,
  });
}

class ResentReleaseModel {
  final String title;
  final AssetImage image;

  ResentReleaseModel({
    required this.title,
    required this.image,
  });
}

class CommingSoonModel {
  final String title;
  final AssetImage image;

  CommingSoonModel({
    required this.title,
    required this.image,
  });
}
