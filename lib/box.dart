import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final double boxSize;

  const Box({Key? key, required this.boxSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (row) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (col) {
            return Container(
              width: boxSize/3 -1,
              height: boxSize/3 -1,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 0.3),
              ),
            );
          }),
        );
      }),
    );
  }
}