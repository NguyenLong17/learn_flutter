import 'package:flutter/material.dart';
import 'package:notification_app/auth/notificationmomo_page.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notification MoMo',
      theme: ThemeData(),
      home: NotificationMoMo(),
    );
  }
}
