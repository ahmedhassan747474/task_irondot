import 'package:flutter/material.dart';

class Discribtion extends StatefulWidget {
  @override
  _DiscribtionState createState() => _DiscribtionState();
}

class _DiscribtionState extends State<Discribtion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ass"),
        ),
        body: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 20)),
            Column(
              children: <Widget>[
                Hero(
                  tag: 'dash',
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        child: Image.network(
                          "http://irondot.com/admin/images/img/cover1.png",
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                       Positioned(
                            bottom: 40,
                            right: 1,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.13,
                              height: MediaQuery.of(context).size.width * 0.13,
                              child: Card(
                                elevation: 5,
                                shape: CircleBorder(
                                    side: BorderSide(
                                        width: 1, color: Colors.white)),
                                child: Icon(
                                  Icons.near_me,
                                  color: Colors.blue,
                                  size: 25,
                                ),
                              ),
                            ),
                          ),
                      // Positioned(
                      //   top: 140,
                      //   bottom: 10,
                      //   right: 10,
                      //   child: Container(
                      //     width: 50,
                      //     child: FloatingActionButton(
                      //       onPressed: () {},
                      //       tooltip: 'Increment',
                      //       backgroundColor: Colors.white,
                      //       child: Icon(
                      //         Icons.near_me,
                      //         color: Colors.blue,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Positioned(
                        top: 140,
                        // bottom: 0,
                        // right: 10,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  // text: 'This item costs ',

                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '\$23.456',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                        )),
                                    TextSpan(
                                      text: '  ',
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 18,
                                        // decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Studio Apartment',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        // decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 170,
                        // bottom: 0,
                        // right: 10,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  // text: 'This item costs ',

                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "23 cross ,Alex, Egypt",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        // decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 210,
                        bottom: 0,
                        right: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    // Image(image: AssetImage('image/bath.png')),
                                    // Image.asset('image/bath.png'),
                                    Icon(
                                      Icons.directions_car,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '3 Bed',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Row(
                                  children: <Widget>[
                                    //  Image.asset('image/bed.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Icon(
                                      Icons.directions_car,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '2 Bath',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Icon(
                                      Icons.directions_car,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      '2 parking',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // Container(
                  //     width: MediaQuery.of(context).size.width * 0.9,
                  //     height: MediaQuery.of(context).size.height * 0.35,
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.only(
                  //           topLeft: Radius.circular(15),
                  //           topRight: Radius.circular(15),
                  //         ),
                  //         image: DecorationImage(
                  //           image: NetworkImage("https://www.thedump.com/images/thumbs/0013154_pulaski-cordoba-european-traditional-queen-mansion-bedroom_1200.jpeg"),
                  //           fit: BoxFit.fill,
                  //         )
                  //     ),
                  // ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 100,
                    child: ListView(
                      // shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              child: Container(
                                child: Image.network(
                                    "http://irondot.com/admin/images/img/image1.png"),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              child: Container(
                                child: Image.network(
                                    "http://irondot.com/admin/images/img/image1.png"),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              child: Container(
                                child: Image.network(
                                    "http://irondot.com/admin/images/img/image1.png"),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              child: Container(
                                child: Image.network(
                                  "http://irondot.com/admin/images/img/image4.png",
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              child: Container(
                                child: Image.network(
                                    "http://irondot.com/admin/images/img/image3.png"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Features',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '2 Movie Theatre',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                '2Km',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Descriptions',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    " is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
