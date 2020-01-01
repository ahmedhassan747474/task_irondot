import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_irondot/home.dart';

import 'package:task_irondot/provider1.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 
        ChangeNotifierProvider.value(
           value: Datas(),
      
      
    
     
      child: 
       
          MaterialApp(
         
            title: 'Flutter Demo',
            theme: ThemeData(
             accentColor: Colors.green,
            //  primarySwatch: Colors.blueAccent,
              backgroundColor: Colors.blueAccent,
              buttonColor:Colors.blueAccent,
            ),
            home: MyHomePage(),
            // home:ProductsOverviewScreen() ,
            //  home: auth.isAuth ? CatgoryScreen() : AuthScreen(),
            // home: HomeCategory(),
            // home: SplashScreen1(
            //   auth.isAuth ? HomeCategory() : AuthScreen(),
            // ),
            routes: {
            MyHomePage.routeName: (c) => MyHomePage(),
          //    AdminDatailsUser.routeName: (c) => AdminDatailsUser(),
            },
          )
      //   },
    //  );
    );
    
    // MaterialApp(
    //   title: 'Flutter Demo',
    //   home: MyHomePage(),
    //   // home: Discribtion(),
    // );
  }
}

