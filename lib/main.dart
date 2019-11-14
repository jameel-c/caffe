
import 'package:english_words/english_words.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:sample_work/cart.dart';
import 'package:sample_work/item_details.dart';
import 'package:sample_work/menu.dart';
import 'package:sample_work/profile.dart';
import 'package:sample_work/profile_edit.dart';
import 'package:sample_work/search.dart';

import 'login.dart';
import 'navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final wordpair = WordPair.random();

    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),

      home: Login(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {


  final List<WordPair> _suggestions = <WordPair>[];
  final Set<prefix0.WordPair> _saved = Set<prefix0.WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return Divider(); /*2*/

          final index = i ~/ 2; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return _buildRow(_suggestions[index]);
        });
  }
  // #enddocregion _buildSuggestions

  // #docregion _buildRow
  Widget _buildRow(WordPair pair) {
    final bool alreadySaved = _saved.contains(pair);
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: (){
        setState(() {
          if (alreadySaved){
            _saved.remove(pair);
          }else{
            _saved.add(pair);
          }
        });
      },
    );
  }
  // #enddocregion _buildRow

  // #docregion RWS-build

  void _pushSaved(){

    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context){

          final Iterable<ListTile> tiles = _saved.map(
              (WordPair pair){
                return ListTile(
                  title: Text(
                    pair.asPascalCase
                  //  style: _biggerFont,
                  ),
                );
              },
          );
          final List<Widget> divided = ListTile
          .divideTiles(tiles: tiles,
          context: context)
          .toList();

          return Scaffold(
            appBar: AppBar(
              title: Text('saved suggestions'),
            ),
            body: ListView(children: divided),
          );
        },
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Names Generator'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),
    );
  }
// #enddocregion RWS-build
// #docregion RWS-var
}
