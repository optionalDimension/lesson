import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/region.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffECEEEC),
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xffECEEEC)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Named Tree"),
      ),
      body: Stack(
        children: [
          _body(),
          Align(
            alignment: Alignment.bottomCenter,
            child: _plantButton(),
          )
        ],
      ),
    );
  }

  _plantButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 44, left: 16, right: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const Regions();
          }));
        },
        child: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: const Text(
            'Plant a tree',
            style: TextStyle(color: Colors.white, fontSize: 22),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  _body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            width: double.maxFinite,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: const Column(
              children: [Text('Total planted'), Text('127')],
            ),
          ),
        ),
        const Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text('List of my trees')),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [_dataItem(), _dataItem()],
              )),
        )
      ],
    );
  }

  _dataItem() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
                color: Color(0xffECEEEC),
                borderRadius: BorderRadius.all(Radius.circular(30))),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        const Column(
          children: [Text('data'), Text('data'), Text('data')],
        )
      ],
    );
  }
}
