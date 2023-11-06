import 'dart:typed_data';

import 'package:inshorts_news_app/database_config/table.dart';

import 'database.dart';

class SQLQuery {
  final database = AppDatabase();

  Future<List<New>> getNews() async {
    return await database.select(database.news).get();
  }

  addNews(
      {required String title,
      required String id,
      required String content,
      required String imageUrl,
      required Uint8List image}) async {
    await database.into(database.news).insert(NewsCompanion.insert(
        title: title,
        content: content,
        image_url: imageUrl,
        id: id,
        image: image));
  }

  deleteNews(String id) async {
    await (database.delete(database.news)..where((tbl) => tbl.id.equals(id)))
        .go();
  }
}
