import 'package:flutter/material.dart';

class Leftshape extends StatelessWidget {
  final double width;
  const Leftshape({super.key, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
