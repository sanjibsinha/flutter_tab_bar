import 'package:flutter/material.dart';

import 'dash_board_home.dart';

/// this is first branch
/// we'll develop from here
///
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'A Custom Home Page',

      /// ignore: todo
      ///TODO: we'll make a custom global theme later
      ///

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashBoardHome(),
    );
  }
}
