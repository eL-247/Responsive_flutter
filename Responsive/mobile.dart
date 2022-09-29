// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newer/const/navigation_items.dart';
import 'package:newer/widget/Autocomplete.dart';

class MobileVer extends StatelessWidget {
  const MobileVer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: navItems.length,
      child: Scaffold(
        // body needs a little fixing but lets ist show container for now
        body: Autocompletes(),
        bottomNavigationBar: BottomAppBar(
          child: TabBar(
              indicator: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.blue,
                    width: 3.0,
                  ),
                ),
              ),
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.blueGrey,

              // contents for the tabBar
              tabs: navItems.entries
                  .map((tabs) => Tab(
                        icon: Icon(tabs.key),
                        text: tabs.value,
                      ))
                  .toList()),
        ),
      ),
    );
  }
}
