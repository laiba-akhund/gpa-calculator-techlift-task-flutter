import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  const CustomText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, top: 0.0),
      child: Text(text,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.lightGreen),
      ),
    );
  }
}
