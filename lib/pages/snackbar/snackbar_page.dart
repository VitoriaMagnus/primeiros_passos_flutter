import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBars'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  const snackbar = SnackBar(
                    content: Text('Usuário salvo com sucesso'),
                    backgroundColor: Colors.amber,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: const Text('Simple Snackbar')),
            ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    content: const Text('Usuário salvo com sucesso'),
                    backgroundColor: Colors.amber,
                    action: SnackBarAction(
                      label: 'Desfazer',
                      onPressed: () {
                        print('Clicado!!');
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },
                child: const Text('Action Snackbar')),
          ],
        ),
      ),
    );
  }
}
