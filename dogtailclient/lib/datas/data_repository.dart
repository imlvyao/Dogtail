import '../models/book.dart';
import '../models/chapter.dart';

class DataRepository {
  // 私有构造函数，防止外部实例化
  DataRepository._();

  // 创建单例实例
  static final DataRepository _instance = DataRepository._();

  // 获取单例实例
  factory DataRepository() => _instance;

  // 书目UUID对应的书目
  final Map<String, Book> _books = {};

  // 章节UUID对应的章节
  final Map<String, Chapter> _chapters = {};

  // 添加书目到全局可用的Map中
  void addBook(Book book) {
    _books[book.bookUuid] = book;
  }

  // 添加章节到全局可用的Map中
  void addChapter(Chapter chapter) {
    _chapters[chapter.chapterUuid] = chapter;
  }

  // 根据UUID获取书目
  Book? getBookByUuid(String uuid) {
    return _books[uuid];
  }

  // 根据UUID获取章节
  Chapter? getChapterByUuid(String uuid) {
    return _chapters[uuid];
  }
}