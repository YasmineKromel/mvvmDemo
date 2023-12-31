import 'package:flutter/material.dart';
import 'package:mvvm_demo/EligibilityModule/viewModel/EligiblityScreenProvider.dart';

import 'EligibilityModule/view/EligiblityScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EligibilityScreenProvider>(
      create: (context) => EligibilityScreenProvider(),
      child: Builder(builder: (context) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const EligibilityScreen(),
        );
      }),
    );
  }
}
