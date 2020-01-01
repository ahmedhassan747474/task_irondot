import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_irondot/json.dart';
import 'package:task_irondot/mainItems.dart';
import 'package:task_irondot/provider1.dart';

class MyHomePage extends StatefulWidget {
  static const routeName = '/catogryscreen';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // final selectedMeal = Dootas.firstWhere((meal) => meal.id == meal);
    // final catDats = Provider.of<Datas>(context).fetchAndSetProducts();
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Discover',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                new Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                            "https://engineering.unl.edu/images/staff/Kayla_Person-small.jpg")),
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 3,
              itemBuilder: (c, i) => ItemsMain(Dootas[i])),
        ],
      ),
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        //  BorderRadius.all(B),
        // only(
        //   topLeft: Radius.circular(30),
        //   topRight: Radius.circular(30),
        //   bottomLeft: Radius.circular(30),
        //   bottomRight: Radius.circular(30),
        // ),
        child: Container(
          height: 60,
          // decoration: new BoxDecoration(
          //   shape: BoxShape.circle,
          //  borderRadius: BorderRadius.all(BorderRadius.circular(10)),

          // ),
          margin: EdgeInsets.symmetric(horizontal: 10),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  Icons.home,
                  color: Colors.blueAccent,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  Icons.bookmark,
                  color: Colors.blueAccent,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  Icons.chat,
                  color: Colors.blueAccent,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.blueAccent,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
