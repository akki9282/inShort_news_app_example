import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get/get.dart';

import 'package:inshorts_news_app/database_config/sql_query.dart';
import 'package:inshorts_news_app/model/news_model.dart';

class NewsController extends GetxController {
  RxBool isBookmarkLoader = true.obs;
  var dio = Dio();
  Rx<NewsModel?>? newsModel = (null as NewsModel?).obs;

  RxList<dynamic> bookmarkNews = [].obs as RxList<dynamic>;

  Future<NewsModel?> getNews({required String category}) async {
    try {
      var response = await dio.request(
        'https://inshortsapi.vercel.app/news?category=${category}',
        options: Options(
          method: 'GET',
        ),
      );

      if (response.statusCode == 200) {
        newsModel?.value = NewsModel.fromJson(response.data);
      } else {
        print(response.statusMessage);
      }
    } catch (e) {
      Fluttertoast.showToast(msg: 'You have lost your network');
    }
  }

  addBookmarkNews(
      {required String title,
      required String id,
      required String content,
      required image_url}) async {
    await SQLQuery()
        .addNews(title: title, content: content, image_url: image_url, id: id);

    Fluttertoast.showToast(msg: 'Successfully bookmark news');
  }

  getBookmarkNews() async {
    bookmarkNews.value = await SQLQuery().getNews();
    isBookmarkLoader.value = false;
  }

  deletBookmarkNews(String id) async {
    await SQLQuery().deleteNews(id);
  }
}
