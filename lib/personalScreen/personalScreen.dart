import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class PersonalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your name',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your Father name',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: DropdownSearch<String>(
            popupProps: PopupProps.menu(
              showSelectedItems: true,
              // disabledItemFn: (String s) => s.startsWith('I'),
            ),
            items: [
              "Brazil",
              "Italia (Disabled)",
              "India",
              "Iran",
              "Tunisia",
              'Canada'
            ],
            dropdownDecoratorProps: DropDownDecoratorProps(
              dropdownSearchDecoration: InputDecoration(
                labelText: "Menu mode",
                hintText: "country in menu mode",
              ),
            ),
            onChanged: print,
            selectedItem: "Brazil",
          ),
        )
      ],
    );
  }
}
