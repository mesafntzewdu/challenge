import 'package:flutter/material.dart';

class CreatePrivateGroup extends StatelessWidget {
  const CreatePrivateGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 50,
              ),
            ),
            Positioned(
              child: CircleAvatar(
                child: IconButton(
                  icon: const Icon(Icons.add_outlined),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
            child: TextField(
              maxLength: 25,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.people),
                  contentPadding: const EdgeInsets.symmetric(vertical: 2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Your group name',
                  label: Text(
                    'Your group name',
                    style: Theme.of(context).textTheme.bodySmall,
                  )),
            ),
          ),
        ),
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
            child: TextField(
              maxLines: 4,
              maxLength: 150,
              cursorHeight: 20,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.people),
                contentPadding: const EdgeInsets.symmetric(vertical: 2),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: 'Description',
                label: Text(
                  'Description',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
          ),
        ),
        OutlinedButton.icon(
          label: Text(
            'Create Group',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          onPressed: () {},
          icon: const Icon(Icons.add),
        )
      ],
    );
  }
}
