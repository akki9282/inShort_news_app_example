import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
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
      required imageUrl}) async {
    // var response = await dio.request(
    //   'https://static.inshorts.com/inshorts/images/v1/variants/jpg/m/2023/11_nov/6_mon/img_1699254202109_375.jpg?',
    //   options: Options(
    //     method: 'GET',
    //   ),
    // );
    // Uint8List imageBytes = Uint8List(8);

    // if (response.statusCode == 200) {
    //   // final Uint8List imageBytes = response.bodyBytes;
    // } else {
    //   print(response.statusMessage);
    // }
    Uint8List bytes =
        (await NetworkAssetBundle(Uri.parse(imageUrl)).load(imageUrl))
            .buffer
            .asUint8List();
    await SQLQuery().addNews(
        title: title,
        content: content,
        imageUrl: imageUrl,
        id: id,
        image: bytes);

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
