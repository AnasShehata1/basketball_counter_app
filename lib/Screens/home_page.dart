import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter1 = 0;

  int counter2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'Points Counter',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Team A',
                    style: TextStyle(color: Colors.black, fontSize: 28),
                  ),
                  Text(
                    '$counter1',
                    style: const TextStyle(color: Colors.black, fontSize: 48),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter1 += 1;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.all(10)),
                    child: const Text('Add 1 Point'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter1 += 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.all(10)),
                    child: const Text('Add 2 Point'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter1 += 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.all(10)),
                    child: const Text('Add 3 Point'),
                  )
                ],
              ),
              const SizedBox(
                height: 350,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 10,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Team B',
                    style: TextStyle(color: Colors.black, fontSize: 28),
                  ),
                  Text(
                    '$counter2',
                    style: const TextStyle(color: Colors.black, fontSize: 48),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter2 += 1;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.all(10)),
                    child: const Text('Add 1 Point'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter2 += 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.all(10)),
                    child: const Text('Add 2 Point'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter2 += 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.all(10)),
                    child: const Text('Add 3 Point'),
                  )
                ],
              )
            ],
          ),
          const Spacer(
            flex: 5,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                counter1 = 0;
                counter2 = 0;
              });
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10)),
            child: const Text('Reset'),
          ),
          const Spacer(
            flex: 8,
          ),
        ],
      ),
    );
  }
}
