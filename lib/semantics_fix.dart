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
        Positioned.fill(
          child: Semantics(label: _semanticsLabel),
        ),
        _child,
      ],
    );
  }
}
