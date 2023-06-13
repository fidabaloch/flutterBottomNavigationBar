import 'package:flutter/material.dart';

class UniversityScreen extends StatelessWidget {
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
    'Item 11',
    'Item 12',
    'Item 13',
    'Item 14',
    'Item 15',
    'Item 16',
    'Item 17',
    'Item 18',
    'Item 19',
    'Item 20',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.star),
          title: Text(items[index]),
          trailing:
              index % 2 == 0 ? Icon(Icons.favorite) : Icon(Icons.settings),
          onTap: () {
            print('Tapped: ${items[index]}');
          },
        );
      },
    );
  }
}
