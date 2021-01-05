import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'cards.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Inicio(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
//gJson
//retrofit

  List data;

  Future<String> getData() async {
    http.Response response = await http.get(
      Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
      headers: {
        "Accept": "application/json"
      }
    );
    print(response.body);
  }

  final List<String> _listItem = [
    'assets/img/ambulance.png',
    'assets/img/cartera.png',
    'assets/img/dra.png',
    'assets/img/logo.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/ic_launcher.png'),  
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                      ),
                      child: Text(
                              'MEDICARE',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 50, color: Colors.black,)
                            )
                    ),
                    SizedBox(height: 30),
                    
                  ],
                )
            ),
            Expanded(
               child: GridView.count(
                      crossAxisCount: 2,
                      padding: EdgeInsets.all(10),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: _listItem.map((item) => Card(
                        child: new InkWell(
                          onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>  MainPage()
                            ));
                          },
                        child: Image.asset(item, height: 30, width: 30,),
                        )),).toList(),  
                    ) 
            ),
            SizedBox(height: 30,),
          Center(
            child: new RaisedButton(
              child: new Text("Obtener Datos"),
              onPressed: getData,
            ),
          )
          ],
        ),
        
      ),
      
      ),  
    );
  }
}

