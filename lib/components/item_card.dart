import 'package:flutter/material.dart';
import 'package:codiv_2078/screens/item_page.dart';

class ItemCard extends StatelessWidget {
  ItemCard({this.image, this.title, this.coins});
  final String image;
  final String title;
  final int coins;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.blue,
      ),
      width: 175.0,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage(image),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 35.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            coins.toString(),
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ItemPage(
                            image: image,
                            title: title,
                            coins: coins,
                          )));
            },
            child: Container(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Buy',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
