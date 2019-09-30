import 'package:flutter/material.dart';
import '../home/homePage.dart';
import '../catergory/category.dart';
import '../setting/setting.dart';
class TabsPage extends StatefulWidget {
  TabsPage({Key key}) : super(key: key);

  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  List tabs = [
    HomePage(),
    CategoryPage(),
    SettingPage()
  ];
  var selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         body: this.tabs[this.selectIndex],
         bottomNavigationBar: BottomNavigationBar(
           currentIndex: this.selectIndex,
           selectedItemColor: Colors.red,
           unselectedItemColor: Colors.grey,
           items: [
             BottomNavigationBarItem(
               icon: Icon(Icons.home),
               title: Text("首页"),
             ),
             BottomNavigationBarItem(
               icon: Icon(Icons.category),
               title: Text("分类"),
             ),
             BottomNavigationBarItem(
               icon: Icon(Icons.settings),
               title: Text("设置")
             )
           ],
           onTap: (index){
             setState(() {
               this.selectIndex = index;
             });
           },
         ),
       )
    );
  }
}