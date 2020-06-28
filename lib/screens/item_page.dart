import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  static const String id = 'item-page';
  ItemPage({this.image, this.title, this.coins});
  final String image;
  final String title;
  final int coins;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.green,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Image(
                      image: AssetImage(image),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.blue,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              title,
                              style: TextStyle(fontSize: 40.0),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.blue,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              coins.toString(),
                              style: TextStyle(fontSize: 25.0),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.blue,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Buy Now',
                                style: TextStyle(fontSize: 40.0),
                              ),
                            ),
                          ),
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
                  ),
                ],
              ),
              SizedBox(height: 25.0),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sodales neque sodales ut etiam. Consectetur libero id faucibus nisl. Facilisi cras fermentum odio eu feugiat pretium nibh ipsum consequat. Quisque egestas diam in arcu cursus euismod quis viverra nibh. Penatibus et magnis dis parturient montes nascetur ridiculus mus. Facilisi etiam dignissim diam quis enim. Ut placerat orci nulla pellentesque dignissim. Congue eu consequat ac felis. Mauris a diam maecenas sed enim ut sem. In cursus turpis massa tincidunt dui ut. Enim eu turpis egestas pretium aenean pharetra magna ac. Rhoncus mattis rhoncus urna neque viverra. Quis hendrerit dolor magna eget est. Faucibus in ornare quam viverra orci. Ultrices in iaculis nunc sed. Massa enim nec dui nunc mattis enim ut tellus. Lacus suspendisse faucibus interdum posuere lorem.')
            ],
          ),
        ),
      ),
    );
  }
}
