//! Without using QuickType extension.
// import 'package:dio/dio.dart';
// import 'package:yes_no_app/models/message.dart';
// import 'package:yes_no_app/models/yes_no_model.dart';

// class ApiYesNoWtf {
//   final _dio = Dio();

//   Future<Message> GetYesNoAnswer() async {
//     final response = await _dio.get('https://yesno.wtf/api');
//     final yesNoModel = YesNoModel.fromJson(response.data);

//     return Message(
//       text: yesNoModel.answer,
//       fromWho: FromWho.friend,
//       imageUrl: yesNoModel.image,
//     );
//   }
// }

//! Using QuickType extension (or going to https://app.quicktype.io/)

// To parse this JSON data, do
//
//     final yesNoModel = yesNoModelFromJson(jsonString);

import 'dart:convert';

import 'package:yes_no_app/models/message.dart';

YesNoModel yesNoModelFromJson(String str) => YesNoModel.fromJson(json.decode(str));

String yesNoModelToJson(YesNoModel data) => json.encode(data.toJson());

class YesNoModel {
  final String answer;
  final bool forced;
  final String image;

  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoModel.fromJson(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

  Message toMessageEntity() {
    return Message(
      text: answer == 'yes' ? 'Sí' : 'No',
      fromWho: FromWho.friend,
      imageUrl: image,
    );
  }
}
