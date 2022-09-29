import 'package:button_navigation_bar/button_navigation/flutter_bloc/count.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage>
    with AutomaticKeepAliveClientMixin<ProductPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    print('_FirstPageState.initState');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'First Page',
        ),
      ),
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                Text(
                  'Count: ${counterCubit.counter}',
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w600),
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
                              counterCubit.inCrease();
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
                              counterCubit.deCrease();
                            },
                            icon: const Icon(Icons.remove)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
