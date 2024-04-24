import 'package:challenge/widgets/public_card.dart';
import 'package:flutter/material.dart';

class Feeds extends StatelessWidget {
  const Feeds({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  'Public Groups',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Theme.of(context).colorScheme.primary),
                ),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PublicCard(
                      imageLink: 'assets/car.jpg',
                    ),
                    PublicCard(
                      imageLink: 'assets/code.jpg',
                    ),
                    PublicCard(
                      imageLink: 'assets/entertain.jpg',
                    ),
                  ],
                ),
              ),
              Center(
                child: Text(
                  'Suggested for you',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Theme.of(context).colorScheme.primary),
                ),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PublicCard(
                      imageLink: 'assets/home.jpg',
                    ),
                    PublicCard(
                      imageLink: 'assets/health.png',
                    ),
                    PublicCard(
                      imageLink: 'assets/home.jpg',
                    ),
                  ],
                ),
              ),
              Center(
                child: Text(
                  'Categories',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Theme.of(context).colorScheme.primary),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 70,
                      child: const Card(
                        elevation: 5,
                        child: Column(
                          children: [
                            Text(
                              'Sport',
                              textAlign: TextAlign.center,
                            ),
                            Icon(Icons.sports_soccer_sharp)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 70,
                      child: const Card(
                        elevation: 5,
                        child: Column(
                          children: [
                            Text(
                              'Foods',
                              textAlign: TextAlign.center,
                            ),
                            Icon(Icons.no_food_sharp)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 70,
                      child: const Card(
                        elevation: 5,
                        child: Column(
                          children: [
                            Text(
                              'News',
                              textAlign: TextAlign.center,
                            ),
                            Icon(Icons.newspaper)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 70,
                      child: const Card(
                        elevation: 5,
                        child: Column(
                          children: [
                            Text(
                              'Entertain',
                              textAlign: TextAlign.center,
                            ),
                            Icon(Icons.tv)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 70,
                      child: const Card(
                        elevation: 5,
                        child: Column(
                          children: [
                            Text(
                              'Kids',
                              textAlign: TextAlign.center,
                            ),
                            Icon(Icons.baby_changing_station_outlined)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Text(
                  'Most visited',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Theme.of(context).colorScheme.primary),
                ),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PublicCard(
                      imageLink: 'assets/home.jpg',
                    ),
                    PublicCard(
                      imageLink: 'assets/code.jpg',
                    ),
                    PublicCard(
                      imageLink: 'assets/entertain.jpg',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
