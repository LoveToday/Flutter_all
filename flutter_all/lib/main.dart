import 'package:flutter/material.dart';
import './bars/tabs.dart';
import './router/router.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        routes: customRoutes,
        onGenerateRoute: (RouteSettings settings) {
          String name = settings.name;
          Function pageContentBuilder = customRoutes[name];
          if (pageContentBuilder != null) {
            if (settings.arguments != null) {
              Route route = MaterialPageRoute(
                  builder: (context) => pageContentBuilder(context, 
                      arguments: {"id": 123}));
              return route;
            } else {
              Route route = MaterialPageRoute(
                builder: (context){
                  print("1234543212342");
                  AlertDialog(
                    title: Text("测试"),
                  );
                  return pageContentBuilder(context);
                }
              );
              return route;
              // Route route = MaterialPageRoute(
              //     builder: (context) => pageContentBuilder(context));
              // return route;
            }
          }
          print("1234543212342");
          return null;
        },
        debugShowCheckedModeBanner: false,
        home: TabsPage(),
      ),
    );
  }
}
