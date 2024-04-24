import 'package:flutter/material.dart';

class DetailClass extends StatelessWidget {
  const DetailClass({super.key, required this.width});
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: width * 0.5,
          child: const CircleAvatar(
            radius: 55,
            backgroundColor: Colors.red,
          ),
        ),
        Text(
          'Group name',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(
          width: width * 0.5,
          child: Text(
            'Description, this is set to test the group oaky mes is testing',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: Text(
            'Leave Group',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.red),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Theme.of(context)
                    .iconTheme
                    .copyWith(color: Colors.red)
                    .color,
              ),
              label: Text(
                'Delete Group',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.red),
              ),
            ),
          ),
        ),
        const Spacer(),
        OutlinedButton.icon(
          icon: const Icon(Icons.send),
          onPressed: () {},
          label: Text(
            'Send Message',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
