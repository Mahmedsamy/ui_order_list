import 'package:flutter/material.dart';

import 'cart.dart';

class Tires extends StatefulWidget {
  const Tires({Key? key}) : super(key: key);

  @override
  State<Tires> createState() => _TiresState();
}

class _TiresState extends State<Tires> {
  final List<String> names = <String>[
    'brilly',
    'BridgeStone',
    'FireStone',
    'Michlan',
    'Hankok',
  ];

  final List<String> images = <String>[
    'images/tiro.png',
    'images/tiro.png',
    'images/tiro.png',
    'images/tiro.png',
    'images/tiro.png',
  ];

  final List<int> price = <int>[
    1000,
    2000,
    3000,
    4000,
    5000,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    height: 140.0,
                    child: Row(
                      children: [
                        Container(
                          width: 140.0,
                          child: Image.asset(
                            images[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                names[index],
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                style: const TextStyle(color: Colors.orange),
                                price[index].toString(),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Container(
                                width: 140.0,
                                color: Colors.grey.shade200,
                                height: 40.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    const Text(
                                      '1',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.orange),
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    Container(
                                      padding:
                                          const EdgeInsets.only(bottom: 30.0),
                                      child: const Icon(
                                        Icons.minimize,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: names.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 14.0,
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 39.0, right: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      'Count',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      '4',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  height: 100.0,
                  width: 130.0,
                  child: InkWell(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Cart()));
                      },
                      child: const Text(
                        'Done',
                        style: TextStyle(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
