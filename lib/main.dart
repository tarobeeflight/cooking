import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cooking/myWidget_1.dart';
import 'package:cooking/myWidget_2.dart';
import 'package:cooking/myWidget_3.dart';
import 'package:cooking/myWidget_4.dart';
import 'package:cooking/presentation/pages/riverpod_sample.dart';

main(){
  // const app = MaterialApp(home: Sample(),);  // nickname用
  const app = MyApp();
  const scope = ProviderScope(child: app);

  runApp(scope);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: MyWidget4()),
      ),
    );
  }
}

