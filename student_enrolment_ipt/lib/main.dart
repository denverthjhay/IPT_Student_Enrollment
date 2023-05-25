import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'frontend/provider/accountprovider.dart';
import 'frontend/screens/getstarted.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => AdminProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: '/',
      routes: {'/': (context) => GetstartedscreenWidget()},
    );
  }
}
