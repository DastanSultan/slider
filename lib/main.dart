import 'package:flutter/material.dart';

void main() => runApp(MyDev());

class MyDev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

int san = 0;

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

List<String> menu = [
  'animal-984573_1920.jpg',
  'horses-430441_1920.jpg',
  'lemurs-1010643_1920.jpg',
  'iceland-1979445_1920.jpg',
  'leopard-1647940_1920.jpg'
];

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Слайдер')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Слайдер',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Row(children: [
                  GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          if (san <= 0) {
                            san = menu.length - 1;
                          } else {
                            san--;
                          }
                        },
                      );
                    },
                    child: Container(
                      child: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: Image.asset(
                        'assets/${menu[san]}',
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (san >= menu.length - 1) {
                          san = 0;
                        } else {
                          san++;
                        }
                      });
                    },
                    child: Container(
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ]),
              )
            ],
          ),
        ],
      ),
    );
  }
}
