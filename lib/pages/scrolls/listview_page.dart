import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll ListView'),
      ),
      body: ListView.separated(
        itemCount: 100,
        itemBuilder: (context, index) {
          print('Carregando o index $index');
          return ListTile(
            title: Text('O item $index'),
            subtitle: const Text('Flutter é top'),
            leading: const CircleAvatar(
              maxRadius: 50,
              backgroundImage: NetworkImage(
                  'https://yt3.googleusercontent.com/ytc/AL5GRJVFUbrqLgTKs3qvoiGiZDvJHXkB_pzHwyussmGX=s900-c-k-c0x00ffffff-no-rj'),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
      ),
    );
  }
}
