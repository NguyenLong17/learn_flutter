import 'package:button_navigation_bar/button_navigation/flutter_bloc/count.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage>
    with AutomaticKeepAliveClientMixin<CartPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    print('_SecondPageState.initState');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Second Page',
        ),
      ),
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                'Count: ${counterCubit.counter}',
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
            ),
          );
        },
      ),
    );
  }
}
