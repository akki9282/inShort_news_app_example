import 'package:dio/dio.dart';

import 'package:get/get.dart';
import 'package:inshorts_news_app/model/news_model.dart';

class ApiController extends GetxController {
  var dio = Dio();
  Rx<NewsModel?>? newsModel = (null as NewsModel?).obs;

  Future<NewsModel?> getNews({required String category}) async {
    var response = await dio.request(
      'https://inshortsapi.vercel.app/news?category=sports',
      options: Options(
        method: 'GET',
      ),
    );

    if (response.statusCode == 200) {
      newsModel?.value = NewsModel.fromJson(response.data);
    } else {
      print(response.statusMessage);
    }
  }
}
