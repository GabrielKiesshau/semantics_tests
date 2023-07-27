import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  const Hello({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: '1',
      explicitChildNodes: true,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 22.5, vertical: 18),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('2'),
            const SizedBox(height: 13),
            Semantics(
              container: true,
              child: const ListTile(
                leading: Icon(
                  Icons.calendar_month,
                ),
                title: Text(
                  '3',
                  semanticsLabel: '4',
                ),
                subtitle: Text(
                  '5',
                  semanticsLabel: '6',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
