import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("分类"),
        ),
        body: Container(
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
            // control: new SwiperControl(),
          ),
        ),
      ),
    );
  }
}
