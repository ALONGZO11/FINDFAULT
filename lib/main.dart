import 'package:findfault/XD_intro.dart';
import 'package:findfault/XDinput.dart';
import 'package:findfault/states/authen.dart';
import 'package:findfault/states/ceate_database.dart';
import 'package:findfault/states/require_data.dart';
import 'package:findfault/states/show_map.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

final Map<String, WidgetBuilder> map = {
  //  '/authen': (BuildContext context) => Authen(),
  '/requireData': (BuildContext context) => ReqireData(),
  '/createdatabase': (BuildContext context) => CreateDatabase(),
  '/intro': (BuildContext context) => XD_intro(),
  '/input' : (BuildContext context) => XDinput()
};

String? firstState;

void main() {
  firstState = '/input';
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
