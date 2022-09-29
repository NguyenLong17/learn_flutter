import 'package:button_navigation_bar/button_navigation/provider/first_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {

  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage>  {

  // @override
  // bool get wantKeepAlive => true;

  @override
  void initState() {
    print('_SecondPageState.initState');
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Page',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            'Count: ${context.read<CounterProvider>().counter}',
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.w600),
          ),





          // child: Consumer<CounterProvider>(
          //   builder: (context, model, _) {
          //     return Text(
          //       'Count: ${context.read<CounterProvider>().counter}',
          //       style: const TextStyle(
          //           fontSize: 30, fontWeight: FontWeight.w600),
          //     );
          //   },
          // ),
        ),
      ),
    );
  }


}
