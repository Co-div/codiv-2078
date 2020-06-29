import 'package:codiv_2078/components/item_card.dart';
import 'package:flutter/material.dart';

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
                  title: 'Spiked' "\n" 'Helmet',
                  image: 'assets/Shop1.jpg',
                  coins: 2500,
                  desc:
                      'Gotta instill fear in your enemies then go for this spiky helm, with a built-in HUD display and night vision. Your enemies will surely remember your name.',
                ),
                ItemCard(
                  title: 'Shadow' "\n" 'Helmet',
                  image: 'assets/shop2.jpg',
                  coins: 3500,
                  desc:
                      'Become a master of stealth by putting on this helm that lets you go off the radar and be invisible using the best cloaking tech. ',
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
                  title: 'Raider' "\n" ' Helmet',
                  image: 'assets/shop3.jpg',
                  coins: 3000,
                  desc:
                      'Let us go on a raid riding our bikes under the neon city lights showing everyone who is the boss around here.',
                ),
                ItemCard(
                  title: 'Stun' "\n" 'Shock',
                  image: 'assets/shopgun.jpg',
                  coins: 5000,
                  desc:
                      'Comes with Aim-Assist that links with your HUD display so you never miss your aim. It is time to rain down thunder.',
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
                  title: 'Raider' "\n" ' 9000',
                  image: 'assets/shopbike.jpg',
                  coins: 10000,
                  desc:
                      'Need a ride to go crusing around then this baby right here is the best choice with them curves leting you reach speeds you have never before.',
                ),
                ItemCard(
                  title: 'Hover' "\n" 'Tron',
                  image: 'assets/shopcar.jpg',
                  coins: 18000,
                  desc:
                      'Off road will never be the same as before, because in the sky there are no roads. So let go of your limits and hit the pedal.',
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
