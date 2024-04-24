import 'package:challenge/widgets/create_private_group.dart';
import 'package:challenge/widgets/create_public_group.dart';
import 'package:flutter/material.dart';

class AddGroup {
  static Future<void> getSheet(context) async {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SizedBox(
          width: double.infinity,
          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                title: Text('Create Group',
                    style: Theme.of(context).textTheme.titleLarge),
                leading: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                bottom: TabBar(
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        'Public Group',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    Tab(
                      child: Text('Private Group',
                          style: Theme.of(context).textTheme.titleLarge),
                    )
                  ],
                ),
              ),
              body: const TabBarView(
                children: <Widget>[
                  Center(child: SingleChildScrollView(child: CreatePubGroup())),
                  Center(
                      child:
                          SingleChildScrollView(child: CreatePrivateGroup())),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
