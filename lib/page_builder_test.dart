import 'package:flutter/widgets.dart';

class PageViewBuilderExample extends StatelessWidget {
  const PageViewBuilderExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController();

    const pages = [
      Center(
        child: Text('First Page'),
      ),
      Center(
        child: Text('Second Page'),
      ),
      Center(
        child: Text('Third Page'),
      ),
    ];

    return PageView.builder(
      controller: controller,
      
      itemBuilder: (context, index) {
        return pages[index];
      },
    );
  }
}
