import 'package:codiv_2078/screens/item_page.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  ItemCard({this.image, this.title, this.coins, this.right = false, this.desc});
  final String image;
  final String title;
  final int coins;
  final bool right;
  final String desc;
  final List<Color> _colorsLeft = [Color(0xFF7A04EB), Color(0xFFFE75FE)];
  final List<Color> _colorsRight = [Color(0xFFFE75FE), Color(0xFF7A04EB)];

  List<double> _stops = [0.0, 1];
//  List<double> _stopsRight = [0.7, 0.0];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ItemPage(
                      image: image,
                      title: title,
                      coins: coins,
                      desc: desc,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
//          color: Colors.blue,
            gradient: LinearGradient(
              colors: right ? _colorsRight : _colorsLeft,
              stops: _stops,
            )),
        width: 175.0,
        //height: 350.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8),
              height: 175,
              child: Image(
                image: AssetImage(image),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.yellowAccent,
                  fontFamily: "Orbitron-semibold"),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/Currency.jpg'),
                  height: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  coins.toString(),
                  style: TextStyle(
//                      color: Colors.black,
//                      backgroundColor: Colors.,
                      fontSize: 20.0,
                      fontFamily: "Orbitron-bold",
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
//          GestureDetector(
//            onTap: () {
//
//            },
//            child: Container(
//              color: Colors.green,
//              child: Padding(
//                padding: const EdgeInsets.all(8.0),
//                child: Text(
//                  'Buy',
//                  style: TextStyle(
//                    fontSize: 25.0,
//                  ),
//                ),
//              ),
//            ),
//          ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
