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
      // Make the container full screen
      width: double.infinity,
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
            ListView10Days(),
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
                Icons.mode_night,
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
                Icons.mode_night,
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
                Icons.mode_night,
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
                Icons.mode_night,
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

class ListView10Days extends StatelessWidget {
  const ListView10Days({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<List<String>> days = [
      ['Today', 'Sunny', '28°/9°'],
      ['Tomorrow', 'Cloudy', '18°/7°'],
      ['Wednesday', 'Sunny', '15°/6°'],
      ['Thursday', 'Sunny', '23°/4°'],
      ['Friday', 'Rainy', '18°/4°'],
      ['Saturday', 'Sunny', '28°/9°'],
      ['Sunday', 'Cloudy', '28°/9°'],
      ['Monday', 'Sunny', '28°/9°'],
      ['Tuesday', 'Sunny', '28°/9°']
    ];
    return ListView.builder(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 9,
      itemBuilder: (context, index) {
        return DayCard(day: days[index]);
      },
    );
  }
}

class DayCard extends StatelessWidget {
  final List<String> day;

  const DayCard({
    super.key,
    required this.day,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Show a toast message when the card is tapped
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            SnackBar(
              content: Text('Temperature for ${day[0]}: ${day[2]}'),
            ),
          );
      },
      child: Card(
        margin: const EdgeInsets.all(3.0),
        // Corners of the card are square
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(0))),
        color: const Color.fromARGB(255, 0, 17, 43),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  day[0],
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 14),
                ),
              ),
              Icon(
                (day[1] == 'Sunny')
                    ? Icons.wb_sunny
                    : (day[1] == 'Cloudy')
                        ? Icons.wb_cloudy
                        : Icons.beach_access,
                color: Colors.yellow,
                size: 23,
              ),
              const SizedBox(
                width: 40,
              ),
              Text(
                day[2],
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
        ),
      ),
    );
  }
}
