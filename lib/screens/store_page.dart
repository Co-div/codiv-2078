import 'package:flutter/material.dart';
import 'package:codiv_2078/components/item_card.dart';

class StorePage extends StatelessWidget {
  static const String id = 'store-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Store'),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ItemCard(
                  title: 'Helmet',
                  image: 'assets/Shop1.jpg',
                  coins: 2500,
                  desc: 'random',
                ),
                ItemCard(
                  title: 'title',
                  image: 'assets/Shop1.jpg',
                  coins: 2500,
                  right: true,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ItemCard(
                  title: 'title',
                  image: 'assets/Shop1.jpg',
                  coins: 2500,
                ),
                ItemCard(
                  title: 'title',
                  image: 'assets/Shop1.jpg',
                  coins: 2500,
                  right: true,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ItemCard(
                  title: 'title',
                  image: 'assets/Shop1.jpg',
                  coins: 2500,
                ),
                ItemCard(
                  title: 'title',
                  image: 'assets/Shop1.jpg',
                  coins: 2500,
                  right: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
