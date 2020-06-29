import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:codiv_2078/components/parts.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'landing_screen.dart';

class ItemPage extends StatefulWidget {
  static const String id = 'item-page';
  ItemPage({this.image, this.title, this.coins, this.desc});
  final String image;
  final String title;
  final int coins;
  final String desc;

  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
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
                '$money',
                style: TextStyle(
//                      color: Colors.black,
//                      backgroundColor: Colors.,
                    fontSize: 25.0,
                    fontFamily: "Orbitron-bold",
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                width: 50,
              ),
            ],
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Color(0xFF120458),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image(
                    image: AssetImage(widget.image),
                  ),
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
                      child: Text(widget.title,
                          style: TextStyle(
                            fontSize: 25.0,
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
                                widget.coins.toString(),
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
                            onTap: () {
                              setState(() {
                                money -= widget.coins;
                              });
                              Alert(
                                context: context,
                                style: alertStyle,
                                type: AlertType.success,
                                title: "Purchase Successful",
                                desc:
                                    "You got this Awesome Item, your stats might be on the rooftop",
                                buttons: [
                                  DialogButton(
                                    child: Text(
                                      "COOL",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                    onPressed: () {
//                                      Navigator.popUntil(
//                                          context, LandingScreen.id);
                                      Navigator.popUntil(
                                          context,
                                          ModalRoute.withName(
                                              "landing-screen"));
                                    },
                                    width: 120,
                                  )
                                ],
                              ).show();
                            },
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
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.purple,
                      ),
                      padding: EdgeInsets.all(30),
//                      color: Colors.purple,
                      child: Text(
                        widget.desc,
                        style: TextStyle(
                            fontSize: 25.0,
                            fontFamily: "Orbitron-bold",
                            fontStyle: FontStyle.italic),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
