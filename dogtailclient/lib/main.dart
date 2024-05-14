import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    HomePage(), // 推荐页面
    CategoryPage(), // 分类页面
    CreatePage(), // 创作页面
    SettingPage(), // 设置页面
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '底部导航示例',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("开始界面"),
        // ),
        body: IndexedStack(
          index: _selectedIndex,
          children: _widgetOptions,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: '推荐',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: '分类',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.create_outlined),
              label: '创作',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: '设置',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

// 示例页面，已添加背景色
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container( // 添加Container包裹页面内容，并设置背景色
      color: Colors.blue[50], // 示例颜色，你可以自定义
      child: Center(child: Text('推荐页面')),
    );
  }
}

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[50],
      child: Center(child: Text('分类页面')),
    );
  }
}

class CreatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[50],
      child: Center(child: Text('创作页面')),
    );
  }
}

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[50],
      child: Center(child: Text('设置页面')),
    );
  }
}