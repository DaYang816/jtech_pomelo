import 'package:flutter/material.dart';
import 'package:jtech_pomelo/jtech_pomelo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'JTech Pomelo Example',
      home: MyHomePage(title: 'JTech Pomelo Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("弹窗测试"),
          onPressed: () {
            JDialogUtil.showInLoading(
              context,
              onLoading: () async {
                await Future.delayed(Duration(milliseconds: 2000));
                return "aaaaa";
              },
            ).then((value) {
              print(value);
              // Navigator.pop(context);
            });
          },
        ),
      ),
    );
  }
}
