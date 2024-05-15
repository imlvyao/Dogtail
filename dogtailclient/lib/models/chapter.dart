class Chapter {
  String chapterUuid;
  String parentChapterUuid;
  String chapterInfo;
  String bookUuid;
  String chapterContent;
  List<String> subChapterUuids; // 新增的成员变量

  Chapter({
    required this.chapterUuid,
    required this.parentChapterUuid,
    required this.chapterInfo,
    required this.bookUuid,
    required this.chapterContent,
    required this.subChapterUuids, // 更新构造函数
  });

  factory Chapter.fromMap(Map<String, dynamic> map) {
    return Chapter(
      chapterUuid: map['chapterUuid'],
      parentChapterUuid: map['parentChapterUuid'],
      chapterInfo: map['chapterInfo'],
      bookUuid: map['bookUuid'],
      chapterContent: map['chapterContent'],
      subChapterUuids: List<String>.from(map['subChapterUuids']), // 更新工厂方法
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'chapterUuid': chapterUuid,
      'parentChapterUuid': parentChapterUuid,
      'chapterInfo': chapterInfo,
      'bookUuid': bookUuid,
      'chapterContent': chapterContent,
      'subChapterUuids': subChapterUuids, // 更新转换方法
    };
  }
}
