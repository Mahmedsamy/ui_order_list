import 'package:flutter/material.dart';

import 'Final.dart';

class Cart extends StatelessWidget {
   Cart({Key? key}) : super(key: key);

  final List<String> names = <String>[
    'Tires',
    'Far4',
    'Tires',
    'Far4',
    'Tires',
  ];

  final List<String> images = <String>[
    'images/tiro.png',
    'images/FAR42.jpeg',
    'images/tiro.png',
    'images/FAR44.jpg',
    'images/tiro.png',
  ];

  final List<int> price = <int>[
    100,
    200,
    300,
    400,
    500,
  ];

   final List<String> details = <String>[
     'R13 /185/75/15 27.7"x 8.5"',
     'Red',
     'R15 /215/75/15 27.7"x 8.5"',
     'gray',
     'R18/225/90/16 29.7"x 8.1"',
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
      ),
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
                              Text(
                                style: const TextStyle(color: Colors.orange),
                                details[index].toString(),
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
                                      padding: const EdgeInsets.only(bottom: 30.0),
                                      child:  const Icon(
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
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      'Total',
                      style: TextStyle(fontSize: 20.0, color: Colors.orange,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      '2000',
                      style: TextStyle(fontSize: 20.0, color: Colors.orange,fontWeight: FontWeight.bold),
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
                                builder: (BuildContext context) => Order_Confirmation()));
                      },
                      child: const Text('CHECKOUT',
                        style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),
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
