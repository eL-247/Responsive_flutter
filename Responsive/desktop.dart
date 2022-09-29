import 'package:flutter/material.dart';
import 'package:newer/const/navigation_items.dart';
import 'package:newer/widget/Autocomplete.dart';

class DesktopVer extends StatefulWidget {
  const DesktopVer({Key? key}) : super(key: key);

  @override
  State<DesktopVer> createState() => _DesktopVerState();
}

class _DesktopVerState extends State<DesktopVer> {
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NavigationRail(
            selectedIndex: _selectedItem,
            labelType: NavigationRailLabelType.selected,

            onDestinationSelected: (value) {
              setState(() {
                _selectedItem = value;
              });
            },

            // constents for navigation rail
            destinations: navItems.entries
                .map((destinations) => NavigationRailDestination(
                    icon: Icon(destinations.key),
                    label: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(destinations.value),
                    )))
                .toList(),
          ),
          Expanded(
            child: Autocompletes(),
          ),
        ],
      ),
    );
  }
}
