class YesNoModel {
  String answer;
  bool forced;
  String image;

  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoModel.fromJson(Map<String, dynamic> json) {
    return YesNoModel(
      answer: json['answer'],
      forced: json['force'],
      image: json['image'],
    );
  }
  //! The above factory is another way to write this static method:
  // static fromJson(Map<String, dynamic> json) {
  //   return YesNoModel(
  //     answer: json['answer'],
  //     forced: json['force'],
  //     image: json['image'],
  //   );
  // }
}
