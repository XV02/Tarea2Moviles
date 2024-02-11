import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      // The background is a gradient from blue to black
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(255, 19, 51, 100),
            Colors.black,
          ])),
      child: const Padding(
        padding: EdgeInsets.all(9.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Hourly forecast',
              style: TextStyle(
                  color: Color.fromARGB(255, 172, 189, 205), fontSize: 18),
            ),
            TodayCard(),
            SizedBox(
              height: 8,
            ),
            Text(
              '10-day forecast',
              style: TextStyle(
                  color: Color.fromARGB(255, 172, 189, 205), fontSize: 18),
            ),
          ],
        ),
      ),
    ));
  }
}

class TodayCard extends StatelessWidget {
  const TodayCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      // Dark blue color
      color: Color.fromARGB(255, 0, 17, 43),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Column(
            children: [
              Text(
                '16°',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 15,
              ),
              Icon(
                Icons.wb_shade,
                color: Colors.blue,
                size: 30,
              ),
              Text(
                'Now',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w200),
              )
            ],
          ),
          Column(
            children: [
              Text(
                '14°',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 15,
              ),
              Icon(
                Icons.wb_shade,
                color: Colors.blue,
                size: 30,
              ),
              Text(
                '12 AM',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w200),
              )
            ],
          ),
          Column(
            children: [
              Text(
                '13°',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 15,
              ),
              Icon(
                Icons.wb_shade,
                color: Colors.blue,
                size: 30,
              ),
              Text(
                '1 AM',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w200),
              )
            ],
          ),
          Column(
            children: [
              Text(
                '12°',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 15,
              ),
              Icon(
                Icons.wb_shade,
                color: Colors.blue,
                size: 30,
              ),
              Text(
                '2 AM',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w200),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
