import 'package:flutter/material.dart';
import 'package:task_irondot/d.dart';
import 'package:task_irondot/provider1.dart';

class ItemsMain extends StatefulWidget {
  final Dota ido; 
   ItemsMain(this.ido);
  @override
  _ItemsMainState createState() => _ItemsMainState();
}

class _ItemsMainState extends State<ItemsMain> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Discribtion(widget.ido))),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Hero(
                        tag: 'dash${widget.ido.id}1',
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                     widget.ido.coverPhoto),
                                  fit: BoxFit.fill,
                                )),
                            child: Padding(
                              padding: EdgeInsets.only(top: 10, left: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 10, bottom: 10, left: 15, right: 15),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(20)),
                                        color: Colors.black38),
                                    child: Text(
                                     "Furnitured",
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "Roboto",
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 10, bottom: 10, left: 15, right: 15),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(20)),
                                        color: Colors.black38),
                                    child: Text(
                                      "Pet Friendly",
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "Roboto",
                                        color: Colors.white,
                                        decoration: TextDecoration.none,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.28,
                      ),
                      Positioned(
                          top: 10,
                          right: 10,
                          child: Icon(
                            Icons.bookmark_border,
                            color: Colors.white,
                          )), Positioned(
                        bottom: 1,
                       // right: 1,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.width * 0.20,
                          child: Container(
                            color: Colors.white,
                           // elevation: 5,
                           
                            child:Column(
                              children: <Widget>[
                                 Row(
                    children: <Widget>[
                      Text(
                        "\$ 23,456",
                        style: TextStyle(fontSize: 20),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Text("Studio Apartment"),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("23 Cross, HRBR Layout, Bangalore"),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            Icons.beach_access,
                            color: Colors.blue,
                          ),
                          Padding(padding: EdgeInsets.only(left: 5)),
                          Text("3 beds"),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.beach_access,
                            color: Colors.blue,
                          ),
                          Padding(padding: EdgeInsets.only(left: 5)),
                          Text("3 beds"),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.beach_access,
                            color: Colors.blue,
                          ),
                          Padding(padding: EdgeInsets.only(left: 5)),
                          Text("3 beds"),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                    ],
                  )
                              ],
                            )
                          ),
                        ),
                      ),
                     
                      Positioned(
                        bottom: 50,
                        right: 1,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.13,
                          height: MediaQuery.of(context).size.width * 0.13,
                          child: Card(
                            elevation: 5,
                            shape: CircleBorder(
                                side: BorderSide(width: 1, color: Colors.white)),
                            child: Icon(
                              Icons.near_me,
                              color: Colors.blue,
                              size: 25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                 
                ],
              ),
            ),
          ),
        );
  }
}