import 'package:flutter/material.dart';

class OwnGroup extends StatelessWidget {
  const OwnGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 6),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.amber,
          ),
          Positioned(
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.red,
              child: Text(
                '12',
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
