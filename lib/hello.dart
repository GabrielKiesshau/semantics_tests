import 'package:flutter/material.dart';
import 'package:semantics_tests/semantics_fix.dart';

class Hello extends StatelessWidget {
  const Hello({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SemanticsFix(
      semanticsLabel: 'página inteira',
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
              child: ListTile(
                leading: IconButton(
                  onPressed: () => debugPrint('a'),
                  icon: const Icon(
                    Icons.calendar_month,
                    semanticLabel: 'teste',
                  ),
                ),
                title: Semantics(
                  label: 'a',
                  child: const Text(
                    '3',
                    semanticsLabel: '4',
                  ),
                ),
                subtitle: const Text(
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
