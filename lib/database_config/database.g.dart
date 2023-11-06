// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $NewsTable extends News with TableInfo<$NewsTable, New> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NewsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _image_urlMeta =
      const VerificationMeta('image_url');
  @override
  late final GeneratedColumn<String> image_url = GeneratedColumn<String>(
      'image_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _read_more_urlMeta =
      const VerificationMeta('read_more_url');
  @override
  late final GeneratedColumn<String> read_more_url = GeneratedColumn<String>(
      'read_more_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<Uint8List> image = GeneratedColumn<Uint8List>(
      'image', aliasedName, false,
      type: DriftSqlType.blob, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, content, image_url, read_more_url, image];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'news';
  @override
  VerificationContext validateIntegrity(Insertable<New> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(_image_urlMeta,
          image_url.isAcceptableOrUnknown(data['image_url']!, _image_urlMeta));
    } else if (isInserting) {
      context.missing(_image_urlMeta);
    }
    if (data.containsKey('read_more_url')) {
      context.handle(
          _read_more_urlMeta,
          read_more_url.isAcceptableOrUnknown(
              data['read_more_url']!, _read_more_urlMeta));
    } else if (isInserting) {
      context.missing(_read_more_urlMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  New map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return New(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      image_url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_url'])!,
      read_more_url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}read_more_url'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}image'])!,
    );
  }

  @override
  $NewsTable createAlias(String alias) {
    return $NewsTable(attachedDatabase, alias);
  }
}

class New extends DataClass implements Insertable<New> {
  final String id;
  final String title;
  final String content;
  final String image_url;
  final String read_more_url;
  final Uint8List image;
  const New(
      {required this.id,
      required this.title,
      required this.content,
      required this.image_url,
      required this.read_more_url,
      required this.image});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['content'] = Variable<String>(content);
    map['image_url'] = Variable<String>(image_url);
    map['read_more_url'] = Variable<String>(read_more_url);
    map['image'] = Variable<Uint8List>(image);
    return map;
  }

  NewsCompanion toCompanion(bool nullToAbsent) {
    return NewsCompanion(
      id: Value(id),
      title: Value(title),
      content: Value(content),
      image_url: Value(image_url),
      read_more_url: Value(read_more_url),
      image: Value(image),
    );
  }

  factory New.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return New(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      image_url: serializer.fromJson<String>(json['image_url']),
      read_more_url: serializer.fromJson<String>(json['read_more_url']),
      image: serializer.fromJson<Uint8List>(json['image']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'image_url': serializer.toJson<String>(image_url),
      'read_more_url': serializer.toJson<String>(read_more_url),
      'image': serializer.toJson<Uint8List>(image),
    };
  }

  New copyWith(
          {String? id,
          String? title,
          String? content,
          String? image_url,
          String? read_more_url,
          Uint8List? image}) =>
      New(
        id: id ?? this.id,
        title: title ?? this.title,
        content: content ?? this.content,
        image_url: image_url ?? this.image_url,
        read_more_url: read_more_url ?? this.read_more_url,
        image: image ?? this.image,
      );
  @override
  String toString() {
    return (StringBuffer('New(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('image_url: $image_url, ')
          ..write('read_more_url: $read_more_url, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, content, image_url, read_more_url,
      $driftBlobEquality.hash(image));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is New &&
          other.id == this.id &&
          other.title == this.title &&
          other.content == this.content &&
          other.image_url == this.image_url &&
          other.read_more_url == this.read_more_url &&
          $driftBlobEquality.equals(other.image, this.image));
}

class NewsCompanion extends UpdateCompanion<New> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> content;
  final Value<String> image_url;
  final Value<String> read_more_url;
  final Value<Uint8List> image;
  final Value<int> rowid;
  const NewsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.image_url = const Value.absent(),
    this.read_more_url = const Value.absent(),
    this.image = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NewsCompanion.insert({
    required String id,
    required String title,
    required String content,
    required String image_url,
    required String read_more_url,
    required Uint8List image,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        title = Value(title),
        content = Value(content),
        image_url = Value(image_url),
        read_more_url = Value(read_more_url),
        image = Value(image);
  static Insertable<New> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? content,
    Expression<String>? image_url,
    Expression<String>? read_more_url,
    Expression<Uint8List>? image,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (content != null) 'content': content,
      if (image_url != null) 'image_url': image_url,
      if (read_more_url != null) 'read_more_url': read_more_url,
      if (image != null) 'image': image,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NewsCompanion copyWith(
      {Value<String>? id,
      Value<String>? title,
      Value<String>? content,
      Value<String>? image_url,
      Value<String>? read_more_url,
      Value<Uint8List>? image,
      Value<int>? rowid}) {
    return NewsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      image_url: image_url ?? this.image_url,
      read_more_url: read_more_url ?? this.read_more_url,
      image: image ?? this.image,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (image_url.present) {
      map['image_url'] = Variable<String>(image_url.value);
    }
    if (read_more_url.present) {
      map['read_more_url'] = Variable<String>(read_more_url.value);
    }
    if (image.present) {
      map['image'] = Variable<Uint8List>(image.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NewsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('image_url: $image_url, ')
          ..write('read_more_url: $read_more_url, ')
          ..write('image: $image, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $NewsTable news = $NewsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [news];
}
