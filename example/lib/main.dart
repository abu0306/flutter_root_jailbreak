import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';

// import 'package:flutter/services.dart';
import 'package:flutter_root_jailbreak/flutter_root_jailbreak.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _result= true;

  @override
  void initState() {
    super.initState();
    isRooted();
  }

  Future<void> isRooted() async {
   try {
     bool result = Platform.isAndroid ? await FlutterRootJailbreak.isRooted : await FlutterRootJailbreak.isJailBroken;
     _result = result;
   }catch (e){
     debugPrint("=====error: isRooted======");
   }

    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rooted || JailBroken'),
        ),
        body: Center(
          child: Platform.isAndroid
              ? Text('Android is rooted : $_result\n')
              : Text('iOS is is jailbroken : $_result\n'),
        ),
      ),
    );
  }
}
