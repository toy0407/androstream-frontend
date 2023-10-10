import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Androstream'),
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 36, fontWeight: FontWeight.w300),
        centerTitle: false,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(children: [
          CupertinoSearchTextField(),
        ]),
      ),
    );
  }
}
