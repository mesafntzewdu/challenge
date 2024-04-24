import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PublicCard extends StatelessWidget {
  const PublicCard({super.key, required this.imageLink});

  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        SizedBox(
          width: 300,
          height: 180,
          child: Card(
            elevation: 5,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                      width: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          fit: BoxFit.cover,
                          imageLink,
                          width: 120,
                          height: 120,
                        ),
                      ),
                    ),
                    Text(
                      'test data first'.toUpperCase(),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                const SizedBox(
                  width: 150,
                  child: Column(
                    children: [
                      Text('Some description about the group'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_outline),
              ),
              Text('Join'),
              IconButton.filled(
                icon: Icon(Icons.add),
                onPressed: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
