class Question {
  int soruId;
  List<String> secenekler;
  String dogruCevap;
  String konu;
  String imgUrl;
  String soru;

  Question(
      {this.soruId,
      this.secenekler,
      this.dogruCevap,
      this.konu,
      this.imgUrl,
      this.soru});
}
