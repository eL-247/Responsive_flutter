// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Autocompletes extends StatelessWidget {
  Autocompletes({Key? key}) : super(key: key);

  static List<String> items = [
    'apple',
    'banana',
    'pinapple',
    'strawberry',
    'orange',
    'rasberrry',
    'plum',
  ];

  @override
  Widget build(BuildContext context) {
    return Autocomplete(
      onSelected: (option) => debugPrint('selected ${option}'),
      optionsBuilder: (textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return items.where((element) {
          return element.contains(textEditingValue.text.toLowerCase());
        });
      },
      // optionsViewBuilder: (context, onSelected, options) => Material(
      //   child: Container(
      //     height: 100,
      //     decoration: BoxDecoration(
      //       border: Border.all(
      //           width: 0.1, color: Colors.transparent.withAlpha(200)),
      //       borderRadius: BorderRadius.circular(20),
      //       color: Colors.white,
      //     ),
      //     child: ListView.builder(
      //       itemCount: options.length,
      //       itemBuilder: (context, index) => Column(
      //         children: [
      //           ListTile(
      //             onTap: () => onSelected,
      //             title: Text(options.elementAt(index).toString()),
      //           ),
      //           Divider(
      //             color: Colors.transparent.withAlpha(10),
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      fieldViewBuilder:
          (context, textEditingController, focusNode, onFieldSubmitted) {
        return TextField(
          controller: textEditingController,
          focusNode: focusNode,
          onSubmitted: (value) => onFieldSubmitted,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 0),
                borderRadius: BorderRadius.circular(20),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 0, color: Colors.transparent),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 0, color: Colors.transparent.withAlpha(25)),
                borderRadius: BorderRadius.circular(20),
              ),
              hintText: 'hint text',
              helperText: null,
              // errorText: 'null',
              labelText: 'text',
              focusColor: Colors.amber,
              filled: true,
              contentPadding: EdgeInsets.only(left: 20)),
        );
      },
    );
  }
}
