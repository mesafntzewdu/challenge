import 'package:challenge/model/group.dart';

enum Category { food, electronics, sport, news, kids, entertainment, non }

class Dummy {
  List<Challenge> dummyList = [
    Challenge(
      name: 'Mesafint',
      description: 'Private Group for business',
      category: Category.non,
      image: 'assets/entertain.jpg',
    ),
    Challenge(
      name: 'Mothers Group',
      description: 'In this group we will discus about our kids',
      category: Category.kids,
      image: 'assets/code.jpg',
    ),
    Challenge(
      name: 'Sport for Fun',
      description: 'You will find tips about Soccer, and other games',
      category: Category.sport,
      image: 'assets/health.png',
    ),
  ];
}
