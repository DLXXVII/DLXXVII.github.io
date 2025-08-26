import 'package:flutter/material.dart';
import 'package:portfolio_page/modules/porfolio.view.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desmond Ngwuta - Portfolio',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Inter'),
      home: PortfolioPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
