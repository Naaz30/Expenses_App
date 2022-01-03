import 'package:flutter/material.dart';
import 'package:expenses/controllers/appdata.dart';

import 'views/homepage/event_list_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppData.initEvent();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expenses App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const EventListPage(),
    );
  }
}