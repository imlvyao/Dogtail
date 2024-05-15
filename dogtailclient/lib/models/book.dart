class Book {
  // 书目uuid
  String bookUuid;
  // 首章节uuid
  String firstChapterUuid;
  // 所有章节uuid的列表
  List<String> allChapterUuids;
  // 书目信息
  String bookInfo;

  // 构造函数
  Book({
    required this.bookUuid,
    required this.firstChapterUuid,
    required this.allChapterUuids,
    required this.bookInfo,
  });

  // 从Map创建Book对象的工厂方法
  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      bookUuid: map['bookUuid'],
      firstChapterUuid: map['firstChapterUuid'],
      allChapterUuids: List<String>.from(map['allChapterUuids']),
      bookInfo: map['bookInfo'],
    );
  }

  // 将Book对象转换为Map的方法
  Map<String, dynamic> toMap() {
    return {
      'bookUuid': bookUuid,
      'firstChapterUuid': firstChapterUuid,
      'allChapterUuids': allChapterUuids,
      'bookInfo': bookInfo,
    };
  }
}
