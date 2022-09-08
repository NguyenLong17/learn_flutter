import 'package:chessboard/chessboard/chessboard_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: true,
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      title: 'Chess',
      home: ChessBoard(),
    );
  }
}
