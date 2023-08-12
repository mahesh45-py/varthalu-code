import 'package:flutter/material.dart';
import 'package:varthalu/utils/post1.dart';
import 'package:varthalu/utils/post2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Varthalu'),
        ),
        body: PageView(
          scrollDirection: Axis.vertical,
          controller: _pageController,
          children: [Post1(), Post2()],
        ));
  }
}
