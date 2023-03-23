import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    print('Largura ${mediaQuery.size.width}');
    print('Altura ${mediaQuery.size.height}');
    print('Padding top ${mediaQuery.padding.top}');
    print('Orientacao ${mediaQuery.orientation}');
    print('Tamanho AppBarDefault $kToolbarHeight');

    var appBar = AppBar(
      title: const Text('Media Query'),
    );

    final statusBar = mediaQuery.padding.top;
    final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight;

    print('Tamanho AppBar ${appBar.preferredSize.height}');

    return Scaffold(
      appBar: appBar,
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: mediaQuery.size.width * .50,
            height: heightBody * .5,
            color: Colors.red,
          ),
          Container(
            width: mediaQuery.size.width,
            height: heightBody * .5,
            color: Colors.blue,
          ),
        ],
      )),
    );
  }
}
