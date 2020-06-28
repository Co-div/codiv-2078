import 'package:flutter/material.dart';
import 'package:codiv_2078/components/item_card.dart';

class StorePage extends StatelessWidget {
  static const String id = 'store-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store'),

      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ItemCard(title: 'title', image: 'assets/Shop1.jpg', coins: 2500,),
                ItemCard(title: 'title', image: 'assets/Shop1.jpg', coins: 2500,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ItemCard(title: 'title', image: 'assets/Shop1.jpg', coins: 2500,),
                ItemCard(title: 'title', image: 'assets/Shop1.jpg', coins: 2500,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ItemCard(title: 'title', image: 'assets/Shop1.jpg', coins: 2500,),
                ItemCard(title: 'title', image: 'assets/Shop1.jpg', coins: 2500,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}