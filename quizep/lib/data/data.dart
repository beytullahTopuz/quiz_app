import 'package:quizep/models/soru.dart';

final DUMMY_QUESTIONS = [
  Question(
      soruId: 1,
      secenekler: ["kuş", "balık", "inek"],
      dogruCevap: "aslan",
      konu: "hayvanlar",
      soru: "Resimdeki Hayvan hangisidir",
      imgUrl:
          "https://img.pixers.pics/pho_wat(s3:700/FO/65/70/93/86/700_FO65709386_1121e23ff41c83f51de152021ce23a30.jpg,700,647,cms:2018/10/5bd1b6b8d04b8_220x50-watermark.png,over,480,597,jpg)/cikartmalar-sevimli-aslan-karikatur.jpg.jpg"),
  Question(
      soruId: 2,
      secenekler: ["kuş", "balık", "inek"],
      dogruCevap: "kedi",
      konu: "hayvanlar",
      soru: "Resimdeki Hayvan hangisidir",
      imgUrl:
          "https://egitimgrafik.com/wp-content/uploads/2019/04/kedi-1024x1024.png"),
  Question(
      soruId: 3,
      secenekler: ["kuş", "balık", "inek"],
      dogruCevap: "köpek",
      konu: "hayvanlar",
      soru: "Resimdeki Hayvan hangisidir",
      imgUrl:
          "https://i.pinimg.com/originals/b6/8d/34/b68d34633affdd922c471f3c4fbcb298.png"),
];
