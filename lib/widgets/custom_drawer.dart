import 'package:challenge/data/dummy.dart';
import 'package:challenge/model/group.dart';
import 'package:challenge/screens/group_chat.dart';
import 'package:challenge/widgets/public_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomDrawer extends StatefulWidget {
  CustomDrawer({
    super.key,
  });

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  Challenge? challenge;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Drawer(
        child: Row(
          children: [
            Container(
              color: Theme.of(context).colorScheme.primary,
              width: constraints.maxWidth * 0.2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: PublicGroup(
                  getSingleData: (model) {
                    setState(() {
                      challenge = model;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: SafeArea(
                child: challenge == null
                    ? Container()
                    : Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(challenge!.image),
                            radius: 50,
                          ),
                          Text(
                            challenge!.name.toUpperCase(),
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              challenge!.description.toLowerCase(),
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            child: challenge!.category != Category.non
                                ? Container()
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      IconButton.outlined(
                                        icon: Icon(
                                          Icons.delete,
                                          color: Theme.of(context)
                                              .iconTheme
                                              .copyWith(color: Colors.red)
                                              .color,
                                        ),
                                        onPressed: deleteConfirm,
                                      ),
                                      Text('Delete Group'),
                                    ],
                                  ),
                          ),
                          OutlinedButton.icon(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (_) {
                                return const GroupChat();
                              }));
                            },
                            label: Text(
                              'Open group message',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            icon: const Icon(
                              Icons.open_in_browser,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void deleteConfirm() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('The group will be deleted permanently'),
        action: SnackBarAction(label: 'Delete', onPressed: () {}),
      ),
    );
  }
}
