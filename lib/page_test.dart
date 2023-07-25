import 'package:flutter/widgets.dart';

class PageViewExample extends StatelessWidget {
  const PageViewExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();

    return PageView(
      controller: controller,
      children: const [
        Center(
          child: Text('First Page'),
        ),
        Center(
          child: Text('Second Page'),
        ),
        Center(
          child: Text('Third Page'),
        ),
      ],
    );
  }
}
