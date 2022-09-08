import 'package:flutter/material.dart';

class ChessBoard extends StatefulWidget {
  // const ChessBoard({Key? key}) : super(key: key);

  @override
  State<ChessBoard> createState() => _ChessBoardState();
}

class _ChessBoardState extends State<ChessBoard> {
  final List<Square> squares = [];

  @override
  void initState() {
    // super.initState();
    for (var x = 0; x < 8; x++) {
      for (var y = 0; y < 8; y++) {
        squares.add(new Square(x: x, y: y));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: buildAppBar(
        context: context,
        title: "Chess",
        backgroudColor: Colors.blue,
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.zero,
        child: buildBody(),
      ),
    );
  }

  Widget buildBody() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(25),
        child: GridView.count(
          crossAxisCount: 8,
          children: squares,
          shrinkWrap: true,
        ),
      ),
    );
  }
}

class Square extends StatelessWidget {
  final int x;
  final int y;

  Color getColor() {
    if (x % 2 == y % 2) {
      return Colors.black;
    }
    return Colors.grey;
  }

  Square({Key? key, required this.x, required this.y}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Tọa độ: ${x + 1} , ${y + 1}');
      },
      child: Container(
        color: getColor(),
      ),
    );
  }
}

AppBar buildAppBar({
  required BuildContext context,
  required String title,
  List<Widget>? actions,
  Color? backgroudColor,
}) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
    ),
    backgroundColor: backgroudColor ?? Colors.pinkAccent,
    actions: actions,
    centerTitle: true,
  );
}
