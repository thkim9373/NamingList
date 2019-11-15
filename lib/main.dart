import 'package:english_words/english_words.dart';
import 'package:english_words/english_words.dart' as prefix0;
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Startup Name Generator', home: new RandomWords());
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RandWordsState();
  }
}

class RandWordsState extends State<RandomWords> {
  final List<WordPair> _suggestions = <WordPair>[];
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
//    final WordPair wordPair = new WordPair.random();
//    return new Text(wordPair.asPascalCase);

  return new ListView.builder(
    padding: const EdgeInsets.all(16.0),

    itemBuilder: (BuildContext _context, int i) {

      if(i.isOdd) {
        return new Divider();
      }

      final int index = i ~/ 2;

      if(index >= _suggestions.length) {
        _suggestions.addAll(prefix0.generateWordPairs().take(10));
      }
      return _buildRow(_suggestions[index]);
    },
  );
  }

  Widget _buildRow(prefix0.WordPair pair) {
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}