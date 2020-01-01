import 'dart:convert';
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

// import 'package:shop_app/providers/user_info.dart';
// import '../models/http_exception.dart';
// import 'package:shared_preferences/shared_preferences.dart';
class Features with ChangeNotifier {
  String key;
  String value;
  Features(this.key, this.value);
}

class Dota with ChangeNotifier {
  String id;
  String price;
  String name;
  String address;
  String numBed;
  String numBath;
  String numParking;
  String coverPhoto;
  String descrption;
  List<Features> features;
  List<List<String>> images;

  Dota(
      {this.id,
      this.price,
      this.name,
      this.address,
      this.numBed,
      this.numBath,
      this.numParking,
      this.coverPhoto,
      this.descrption,
      this.features,
      this.images});
}

class Datas with ChangeNotifier {
  List<Dota> _items = [
    // Product(
    //   id: 'p1',
    //   title: 'Red Shirt',
    //   description: 'A red shirt - it is pretty red!',
    //   price: 29.99,
    //   imageUrl:
    //       'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    // ),
  ];

  List<Dota> get items {
    // return [..._items];
    return _items;
  }

  Dota findById(String id) {
    return _items.firstWhere((pro) => pro.id == id);
  }

  Future<void> fetchAndSetProducts() async {
    var url = 'http://http://irondot.com/admin/api/getData';

    try {
      final respond = await http.get(
        url,
      );

      final extractedData = json.decode(respond.body) as List;
      List<Dota> loadData = [];
      //print(extractedData);
      extractedData.forEach(
        (prodData) {
          loadData.add(
            Dota(
              id: prodData['id'],
              price: prodData['price'],
              name: prodData['name'],
              address: prodData['address'],
              numBed: prodData['numBed'],
              numBath: prodData['numBath'],
              numParking: prodData['numParking'],
              coverPhoto: prodData['coverPhoto'],
              descrption: prodData['descrption'],
              // features: prodData['features']
              //     .map((f) => {"key": f['key'], "value": f["value"]})
              //     .toList(),
              // images: prodData['images'], //.toList(),
            ),
          );
        },
      );

      print(extractedData);
      print(respond.body);
      // print(loadData[0].id);
      _items = loadData;
    } catch (e) {
      throw e;
    }
  }
}
