import 'package:challenge/data/dummy.dart';
import 'package:challenge/model/group.dart';
import 'package:challenge/widgets/add_group.dart';
import 'package:flutter/material.dart';

class PublicGroup extends StatelessWidget {
  PublicGroup({super.key, required this.getSingleData});
  void Function(Challenge) getSingleData;
  Dummy dummy = Dummy();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: dummy.dummyList.length,
            itemBuilder: (context, index) {
              return profileBuilder(context, index);
            },
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
            AddGroup.getSheet(context);
          },
          icon: const CircleAvatar(
            child: Icon(Icons.add),
          ),
        )
      ],
    );
  }

  Widget profileBuilder(context, index) {
    return InkWell(
      onTap: () {
        getSingleData(dummy.dummyList[index]);
      },
      child: SizedBox(
        height: 70,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.amber,
              backgroundImage: AssetImage(dummy.dummyList[index].image),
            ),
            Positioned(
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.red,
                child: Text(
                  '2',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
