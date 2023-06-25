import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: const Bhuwan(),
  ));
}

class Bhuwan extends StatefulWidget {
  const Bhuwan({super.key});

  @override
  State<Bhuwan> createState() => _BhuwanState();
}

class _BhuwanState extends State<Bhuwan> {
  int power = 0;
  List<Quotes> names = [
    Quotes(text: 'Give Me More Shake', author: 'Roronoa Zoro'),
    Quotes(text: 'Give me more meat', author: 'Monkey D Luffy'),
    Quotes(text: 'Nami swaan', author: 'Black Leg Sanji'),
    Quotes(text: 'Show me Your panties', author: 'Soul King Brook'),
    Quotes(text: 'toney toney choppa', author: 'Tony Chopper'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'One Piece',
          style: TextStyle(
            color: Colors.red[400],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0.0,
      ),
      body: Column(
        children: names
            .map((e) => QuoteCard(
                  quote: e,
                  delete: () {
                    setState(() {
                      names.remove(e);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
