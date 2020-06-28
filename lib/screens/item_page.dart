import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  static const String id = 'item-page';
  ItemPage({this.image, this.title, this.coins, this.desc});
  final String image;
  final String title;
  final int coins;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Something'),
        ),
        backgroundColor: Color(0xFF120458),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Image(
                  image: AssetImage(image),
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Color(0xFFFF184C),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(title,
                          style: TextStyle(
                            fontSize: 30.0,
                            fontFamily: "Orbitron-bold",
                          )),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Color(0xFFFF2A6D),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
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
                                    fontSize: 25.0,
                                    fontFamily: "Orbitron-bold",
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Color(0xFFFF2A6D),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Buy ',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: "Orbitron-bold",
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // FlatButton(
                  //   onPressed: () {},
                  //   child: Text(
                  //         'Buy Now',
                  //         style: TextStyle(fontSize: 40.0),
                  //       ),
                  // ),
                ],
              ),
              SizedBox(height: 10.0),
              Text(desc)
            ],
          ),
        ),
      ),
    );
  }
}
