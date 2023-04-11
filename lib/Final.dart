import 'package:flutter/material.dart';
import 'package:ui_order_list/services.dart';

class Order_Confirmation extends StatefulWidget {
  const Order_Confirmation({Key? key}) : super(key: key);

  @override
  State<Order_Confirmation> createState() => _Order_ConfirmationState();
}

class _Order_ConfirmationState extends State<Order_Confirmation> {
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
    'فرش تفصيل جلد الماني رينو',
    'R15 /215/75/15 27.7"x 8.5"',
    'فرش تفصيل جلد الماني هوند',
    'R18/225/90/16 29.7"x 8.1"',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Order Confirmation ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  alignment: Alignment.topCenter,
                  child: const Image(
                    image: AssetImage('images/order-complete1.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              ' Hi Mohamed Samy,',
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              ' Thanks for purchasing',
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              ' Order Details',
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
          ),
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
                                      '3',
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
          Stack(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  color: Colors.black,
                ),
              ),
              Expanded(
                child:  Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>  const Services()));
                    },
                    child: const Image(
                      image: AssetImage('images/Back_to_main_page.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
