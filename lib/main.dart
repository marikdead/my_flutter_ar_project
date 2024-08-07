import 'package:flutter/material.dart';
import 'qr_scanner_page.dart';
import 'list_page.dart';
import 'ar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR Code Scanner',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/listPage',
      routes: {
        '/login': (context) => const MyHomePage(title: 'QR Code Scanner Home Page'),
        '/listPage': (context) => const ListPage(),
        '/arCameraPage': (context) => const ArCameraPage(),
      },
    );
  }
}
