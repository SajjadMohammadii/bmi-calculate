import 'package:flutter/material.dart';

class Rightshape extends StatelessWidget {
  final double width;
  const Rightshape({super.key, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: width,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
