import 'package:flutter/material.dart';
import 'package:semantics_tests/semantics_fix.dart';

class Hello extends StatelessWidget {
  const Hello({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SemanticsFix(
      semanticsLabel: 'página inteira',
      child: Stack(
        children: [
          InkWell(
            onTap: () => debugPrint('inkwell'),
            child: Material(
              elevation: 5,
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.5, vertical: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('hello world'),
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
            ),
          ),
          Positioned(
            child: ElevatedButton(
              onPressed: () => debugPrint('elevated button'),
              child: const Text('elevated button'),
            ),
          ),
          Positioned(
            left: 200,
            child: ColoredBox(
              color: Colors.lime,
              child: InkWell(
                splashColor: Colors.amber,
                onTap: () => debugPrint('icon button'),
                child: const Icon(Icons.favorite_border, size: 10),
              ),
            ),
          ),
          const Positioned(
            left: 300,
            top: 20,
            child: Icon(
              Icons.abc,
              semanticLabel: 'abc',
              size: 10,
            ),
          ),
        ],
      ),
    );
  }
}
