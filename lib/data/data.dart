import 'package:flutter/material.dart';
import 'package:webtoonapp/models/models.dart';

final theme = ThemeModel(
  accentColor: const Color(0xffDA0037),
  backgroundColor: const Color(0xff171717),
  textColor: const Color(0xffEDEDED),
  syspnosisColor: const Color(0xffEDEDED).withOpacity(0.5),
  iconColor: const Color(0xffEDEDED).withOpacity(0.75),
);

final List<MostPopularModel> mostPopular = [
  MostPopularModel(
    title: 'One Piece',
    image: const AssetImage('assets/img/onepiece.png'),
    sinpses:
        'Gold Roger was known as the Pirate King, the strongest and most infamous being to have sailed the Grand Line. The capture and death of Roger by the World Government brought a change throughout the world. His last words before his death revealed the location of the greatest treasure in the world, One Piece. It was this revelation that brought about the Grand Age of Pirates, men who dreamed of finding One Piece (which promises an unlimited amount of riches and fame), and quite possibly the most coveted of titles for the person who found it, the title of the Pirate King.\nEnter Monkey D. Luffy, a 17-year-old boy that defies your standard definition of a pirate. Rather than the popular persona of a wicked, hardened, toothless pirate who ransacks villages for fun, Luffy’s reason for being a pirate is one of pure wonder; the thought of an exciting adventure and meeting new and intriguing people, along with finding One Piece, are his reasons of becoming a pirate. Following in the footsteps of his childhood hero, Luffy and his crew travel across the Grand Line, experiencing crazy adventures, unveiling dark mysteries and battling strong enemies, all in order to reach One Piece.',
    score: 7.9,
    view: '89,200',
    chapterCount: 1067,
    chapters: [
      ChapterModel(
        title: 'Punk Records',
        number: 1067,
        image: const AssetImage(
          'assets/img/onepiece1067.png',
        ),
      ),
      ChapterModel(
        title: 'The Will of Ohara',
        number: 1066,
        image: const AssetImage(
          'assets/img/onepiece1066.png',
        ),
      ),
      ChapterModel(
        title: 'The 6 Vegapunks',
        number: 1065,
        image: const AssetImage(
          'assets/img/onepiece1065.png',
        ),
      ),
    ],
  ),
  MostPopularModel(
    title: 'Haikyuu!!',
    image: const AssetImage('assets/img/haikyuu.png'),
    sinpses: "Inspired after watching a volleyball ace nicknamed "
        'Little Giant'
        " in action, small-statured Shouyou Hinata revives the volleyball club at his middle school. The newly-formed team even makes it to a tournament; however, their first match turns out to be their last when they are brutally squashed by the "
        'King of the Court,'
        "Tobio Kageyama. Hinata vows to surpass Kageyama, and so after graduating from middle school, he joins Karasuno High School's volleyball team—only to find that his sworn rival, Kageyama, is now his teammate.\nThanks to his short height, Hinata struggles to find his role on the team, even with his superior jumping power. Surprisingly, Kageyama has his own problems that only Hinata can help with, and learning to work together appears to be the only way for the team to be successful. Based on Haruichi Furudate's popular shounen manga of the same name, Haikyuu!! is an exhilarating and emotional sports comedy following two determined athletes as they attempt to patch a heated rivalry in order to make their high school volleyball team the best in Japan.",
    score: 8.3,
    view: '24,000',
    chapterCount: 390,
    chapters: [],
  ),
];

final List<ResentReleaseModel> resentRelease = [
  ResentReleaseModel(
    title: 'Jujutsu Kaisen',
    image: const AssetImage(
      'assets/img/jujutsu.png',
    ),
  ),
  ResentReleaseModel(
    title: 'The God of High School',
    image: const AssetImage(
      'assets/img/godofhighschool.png',
    ),
  ),
  ResentReleaseModel(
    title: 'My Hero Academia',
    image: const AssetImage(
      'assets/img/bokunohero.png',
    ),
  ),
  ResentReleaseModel(
    title: 'Solo Leveling',
    image: const AssetImage(
      'assets/img/solo.png',
    ),
  ),
];

final List<CommingSoonModel> commingSoon = [
  CommingSoonModel(
    title: 'Dice',
    image: const AssetImage(
      'assets/img/dice.png',
    ),
  ),
  CommingSoonModel(
    title: 'Sweet Home',
    image: const AssetImage(
      'assets/img/sweet.png',
    ),
  ),
  CommingSoonModel(
    title: 'Tower of God',
    image: const AssetImage(
      'assets/img/towerofgod.png',
    ),
  ),
];
