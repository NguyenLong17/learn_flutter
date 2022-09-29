
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage>
    with AutomaticKeepAliveClientMixin<FirstPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    print('_FirstPageState.initState');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'First Page',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Consumer<CounterProvider>(
              builder: (context,CounterProvider model, _) {
                return Text(
                  'Count: ${model.counter}',
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w600),
                );
              },
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                        onPressed: () {
                          context.read<CounterProvider>().inCrease();
                        },
                        icon: const Icon(Icons.add)),
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                        onPressed: () {
                          context.read<CounterProvider>().deCrease();
                        },
                        icon: const Icon(Icons.remove)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CounterProvider extends ChangeNotifier {
  int counter = 0;


  void inCrease() {
    counter = counter + 1;
    print('add');
    notifyListeners();
  }


  void deCrease() {
    counter = counter - 1;
    print('remove');
    notifyListeners();
  }

}
