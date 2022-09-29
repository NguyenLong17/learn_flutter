import 'package:button_navigation_bar/button_navigation/provider/first_page.dart';
import 'package:button_navigation_bar/button_navigation/provider/second_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({Key? key}) : super(key: key);

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage>
    with SingleTickerProviderStateMixin {
  final items = <BottomNavigationBarItem>[];
  int currentIndex = 2;
  final pages = <Widget>[];
  late TabController controller;

  @override
  void initState() {
    getWidget();

    controller = TabController(
        initialIndex: currentIndex, length: pages.length, vsync: this);

    controller.addListener(onChanged);
    getIconData();

    super.initState();
  }

  @override
  void dispose() {
    controller.removeListener(onChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: IndexedStack(
      //   index: currentIndex,
      // ),
      // body: TabBarView(
      //   controller: controller,
      //   children: pages,
      // ),
      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        items: items,
        onTap: (index) {
          print('index: $index');
          setState(
            () {
              currentIndex = index;
              controller.animateTo(index);
            },
          );
          // if(index == 1){
          //   var count;
          //   Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(key: count,) ));
          // }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.home),
        onPressed: () {
          print('Home');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  List<BottomNavigationBarItem> getIconData() {
    items.addAll([
      BottomNavigationBarItem(
          icon: Image.asset('assets/icons/tab_account.png'),
          activeIcon: Image.asset('assets/icons/tab_account_on.png'),
          label: 'Account'),
      BottomNavigationBarItem(
          icon: Image.asset('assets/icons/tab_history.png'),
          activeIcon: Image.asset('assets/icons/tab_history_on.png'),
          label: 'History'),
      const BottomNavigationBarItem(
          icon: Icon(
            Icons.add,
            color: Colors.transparent,
            size: 0,
          ),
          // icon: Image.asset('assets/icons/tab_home.png'),
          // activeIcon: Image.asset('assets/icons/tab_home_on.png'),
          label: ''),
      BottomNavigationBarItem(
          icon: Image.asset('assets/icons/tab_notify.png'),
          activeIcon: Image.asset('assets/icons/tab_notify_on.png'),
          label: 'Notify'),
      BottomNavigationBarItem(
          icon: Image.asset('assets/icons/tab_wallet.png'),
          activeIcon: Image.asset('assets/icons/tab_wallet_on.png'),
          label: 'Wallet'),
    ]);
    return items;
  }
  List<Widget> getWidget() {
    pages.addAll([
      ChangeNotifierProvider<CounterProvider>(
        create: (_) => CounterProvider(),
        lazy: true,
        child: FirstPage(),
      ),
      ChangeNotifierProvider<CounterProvider>(
        create: (context) => CounterProvider(),
        lazy: true,
        child: SecondPage(),
      ),
      Container(
        color: Colors.grey,
      ),
      Container(
        color: Colors.yellow,
      ),
      Container(
        color: Colors.blue,
      ),
    ]);
    return pages;
  }

  void onChanged() {
    setState(() {
      currentIndex = controller.index;
    });
  }
}
