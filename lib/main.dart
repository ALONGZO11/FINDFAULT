import 'package:findfault/states/authen.dart';
import 'package:findfault/states/require_data.dart';
import 'package:findfault/states/show_map.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> map = {
 
  '/authen': (BuildContext context) => Authen(),
  '/requireData' :(BuildContext context)=> ReqireData()
};

String? firstState;

void main() {
  firstState = '/authen';
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: map,
      initialRoute: firstState,
    );
  }
}
