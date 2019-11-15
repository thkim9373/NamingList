import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'welcome to coding papa',
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text("Best app"),
        ),
        body: new Center(
          child: new RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new RandWordsState();
  }
}

class RandWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final WordPair wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }
}