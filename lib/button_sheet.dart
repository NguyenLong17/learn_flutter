import 'package:flutter/material.dart';

class ButtonSheet extends StatefulWidget {
  const ButtonSheet({Key? key}) : super(key: key);

  @override
  State<ButtonSheet> createState() => _ButtonSheetState();
}

class _ButtonSheetState extends State<ButtonSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Sheet'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 100,
          width: 100,
          color: Colors.grey,
          child: ShowDialog(),
          // child: ShowButtonSheet(),
        ),
      ),
    );
  }
}

class ShowButtonSheet extends StatefulWidget {
  const ShowButtonSheet({Key? key}) : super(key: key);

  @override
  State<ShowButtonSheet> createState() => _ShowButtonSheetState();
}

class _ShowButtonSheetState extends State<ShowButtonSheet> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            backgroundColor: Colors.transparent,
            isScrollControlled: true,
            builder: (context) {
              return Container(
                height: 200,
                width: 100,
                color: Colors.red,
              );
            },
          );
        },
        child: Text('Button Sheet'));
  }
}

class ShowDialog extends StatefulWidget {
  const ShowDialog({Key? key}) : super(key: key);

  @override
  State<ShowDialog> createState() => _ShowDialogState();
}

class _ShowDialogState extends State<ShowDialog> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showGeneralDialog(
            context: context,
            barrierDismissible: true,
            barrierColor: Colors.grey,
            barrierLabel:
                MaterialLocalizations.of(context).modalBarrierDismissLabel,
            pageBuilder: (_, __, ___) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 32),
                alignment: Alignment.center,
                child: Material(
                  color: Colors.white,
                  child: MyDialog(),
                ),
              );
            },
          );
        },
        child: Text('Show Dialog'));
  }
}

class MyDialog extends StatelessWidget {
  const MyDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'Noi Bai Taxi',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text('Xac nha dang xuat'),
          Expanded(
              child: Row(
            children: [
              SizedBox(
                width: 16,
              ),
              Expanded(
                  child: Container(
                      height: 32, color: Colors.yellow, child: Text('Cancel'))),
              SizedBox(
                width: 16,
              ),
              Expanded(
                  child: Container(
                      height: 32, color: Colors.green, child: Text('Yes'))),
              SizedBox(
                width: 16,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
