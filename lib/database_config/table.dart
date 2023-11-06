import 'package:drift/drift.dart';

class News extends Table {
  Set<Column> get primaryKey => {id};
  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get content => text()();
  TextColumn get image_url => text()();
}
