import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 200,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return new Image.network(
                  "http://via.placeholder.com/350x150",
                  fit: BoxFit.fill,
                );
              },
              itemCount: 3,
              pagination: new SwiperPagination(),
              control: new SwiperControl(),
            ),
          ),
          Card(
            child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 9.0,
                  child: Image.network(
                    "http://wimg.spriteapp.cn/picture/2019/0205/20d9b284295b11e982f5842b2b4c75ab_wpd.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        "http://wimg.spriteapp.cn/picture/2017/0901/d26b472a-8eec-11e7-90f5-1866daeb0df1_wpd.jpg"),
                  ),
                  title: Text("这个是卡片Card"),
                  subtitle: Text(
                      "主要用了Column AspectRatio ListTile CircleAvatar NetworkImage"),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
