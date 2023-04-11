import 'package:flutter/material.dart';

import 'Car_brushes.dart';
import 'tires.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Services',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>  const Tires()));
                    },
                    child: const Image(
                      image: AssetImage('images/tiro.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                 Column(
                   children: [
                     Container(
                       child: const Text(
                          'Tirres',
                        // textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 60.0,
                          color: Colors.orange,
                        ),
                ),
                     ),
                   ],
                 ),
              ],
            ),

          ),
          Expanded(
            child: Container(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const CarBrushes()));
                },
                child: const Image(
                  width: 10000.0,
                  image: AssetImage('images/far4.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
