import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:random_words/random_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Temporary password generator',
     theme: new ThemeData(
       primaryColor: Colors.teal[500],
       scaffoldBackgroundColor: Colors.teal[50]
     ),
     home: RandomNames(),
   );
 }
}

class RandomNames extends StatefulWidget {
 @override
 RandomNamesState createState() => new RandomNamesState();

}

class RandomNamesState extends State<RandomNames> {
 final List<WordPair> _randomNames = <WordPair>[];

 @override
 Widget build(BuildContext context) {
   return new Scaffold(

     appBar: new AppBar(
       title: const Text('Temporary password generator'),
     ),
     body: _listContent(),
   );
 }

 Widget _listContent() {
   return new ListView.builder(

//Provide a builder function//

       itemBuilder: (context, int) {
         if (int >= _randomNames.length) {
           _randomNames.addAll(generateWordPairs().take(10));
         }
         return _buildRow(_randomNames[int]);
       });
 }
 Widget _buildRow(WordPair pair) {
   return new ListTile(
     title: new Text(
       faker.person.name(),

     ),

     subtitle: new Text('Your temp password is: ' +
         pair.asLowerCase),

   );

 }}