import 'package:dala_dev_design_system/dd_design_system.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ExampleView(),
    );
  }
}

class ExampleView extends StatelessWidget {
  const ExampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DdText.primary(text: 'ewhfdbw'),
          DdButton.primary(
            label: 'afasasf',
            size: DdButtonSize.l,
            onPressed: () {},
          ),
          DdButton.secondary(
            label: 'afasasf',
            size: DdButtonSize.m,
            onPressed: () {},
          ),
          DdButton.tertiary(
            label: 'afasasf',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
