import 'package:flutter/material.dart';

class SemanticsFix extends StatelessWidget {
  final Widget _child;
  final String _semanticsLabel;

  const SemanticsFix({
    Key key,
    Widget child,
    String semanticsLabel,
  })  : _child = child,
        _semanticsLabel = semanticsLabel,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            color: Colors.amber,
            child: Semantics(label: _semanticsLabel),
          ),
        ),
        _child,
      ],
    );
  }
}
