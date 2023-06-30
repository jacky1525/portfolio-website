import 'package:flutter/material.dart';
import 'package:web_portfolio/pages/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final PageStorageBucket bucket = PageStorageBucket();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HFIDAN.DEV',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageStorage(
        bucket: bucket,
        child: const DashBoard(),
      ),
    );
  }
}
