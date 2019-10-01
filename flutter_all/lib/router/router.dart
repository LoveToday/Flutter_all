import 'package:flutter/material.dart';
import '../setting/customNavBar.dart';
import '../setting/input.dart';
final customRoutes = {
  "/setting/customNavBar": (context, {arguments}) => CustomNavBar(arguments: arguments),
};

final onGenerateRoute = (RouteSettings settings){
  String name = settings.name;
  Function pageContentBuilder = customRoutes[name];
  print("12345678");
  print(settings.arguments);
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(builder: (context)=>pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route = MaterialPageRoute(builder: (context)=>pageContentBuilder(context));
      return route;
    }
  }
  return null;
};