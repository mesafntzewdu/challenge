import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Select Category',
  'Electronics',
  'Food',
  'Entertainment',
  'News'
];

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() {
    return _DropDownState();
  }
}

String? dropVal = list.first;

class _DropDownState extends State<DropDown> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.circular(12),
        ),
        child: DropdownButton<String>(
          value: dropVal,
          items: list.map<DropdownMenuItem<String>>((val) {
            return DropdownMenuItem(
              child: Text(val),
              value: val,
            );
          }).toList(),
          onChanged: (val) {
            setState(() {
              dropVal = val;
            });
          },
        ),
      ),
    );
  }
}
