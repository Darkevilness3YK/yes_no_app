import 'package:dio/dio.dart';
import 'package:yes_no_app/models/message.dart';
import 'package:yes_no_app/models/yes_no_model.dart';

class ApiYesNoWtf {
  final _dio = Dio();

  Future<Message> GetYesNoAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
    final yesNoModel = YesNoModel.fromJson(response.data);

    return Message(
      text: yesNoModel.answer,
      fromWho: FromWho.friend,
      imageUrl: yesNoModel.image,
    );
  }
}
