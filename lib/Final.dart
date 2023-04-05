import 'package:flutter/material.dart';

class Order_Confirmation extends StatefulWidget {
 const  Order_Confirmation({Key? key}) : super(key: key);

  @override
  State<Order_Confirmation> createState() => _Order_ConfirmationState();
}

class _Order_ConfirmationState extends State<Order_Confirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Container(
          child: const Image(
            image: AssetImage('images/yourorder.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),

    );
  }
}
