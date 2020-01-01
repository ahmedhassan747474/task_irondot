import 'package:flutter/material.dart';
import 'package:task_irondot/provider1.dart';

class Discribtion extends StatefulWidget {
  final Dota ido;
  Discribtion(this.ido);
  @override
  _DiscribtionState createState() => _DiscribtionState();
}

class _DiscribtionState extends State<Discribtion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 20)),
        Column(
          children: <Widget>[
            Hero(
              tag: 'dash${widget.ido.id}${widget.ido.id}88',
              child: Stack(
                children: <Widget>[
                  Container(
                    // ClipRRect(
                    // borderRadius: BorderRadius.only(
                    //   topLeft: Radius.circular(15),
                    //   topRight: Radius.circular(15),
                    // ),
                    child: Image.network(
                      widget.ido.coverPhoto,
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
                            side: BorderSide(width: 1, color: Colors.white)),
                        child: Icon(
                          Icons.near_me,
                          color: Colors.blue,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
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
                                    text: '\$${widget.ido.price}',
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
                                  text: "${widget.ido.address}",
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
                                  '${widget.ido.numBed} Bed',
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
                                  '${widget.ido.numBath} Bath',
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
                                  '${widget.ido.numParking} parking',
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
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  // shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.ido.images[0].length,
                  itemBuilder: (cc, i) => Padding(
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
                            widget.ido.images[0][i],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Features',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemBuilder: (c, i) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '2 Movie Theatre',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          '${i + 1} Km',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                )),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Descriptions',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.ido.descrption,
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
