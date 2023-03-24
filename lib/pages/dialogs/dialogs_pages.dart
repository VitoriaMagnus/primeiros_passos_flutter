import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialog_custom.dart';

class DialogsPages extends StatelessWidget {
  const DialogsPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) {
                    return DialogCustom(context);
                  },
                );
              },
              child: const Text('Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Simple Dialog'),
                      contentPadding: const EdgeInsets.all(10),
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('Titulo X'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('Fechar Dialog'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('SimpleDialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    if (Platform.isIOS) {
                      return CupertinoAlertDialog(
                        title: const Text('Alert Dialog'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text('Deseja realmente salvar?'),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('Cancelar')),
                          TextButton(
                              onPressed: () {}, child: const Text('Confirmar')),
                        ],
                      );
                    } else {
                      return AlertDialog(
                        title: const Text('Alert Dialog'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text('Deseja realmente salvar?'),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('Cancelar')),
                          TextButton(
                              onPressed: () {}, child: const Text('Confirmar')),
                        ],
                      );
                    }
                  },
                );
              },
              child: const Text('Alert Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                if (Platform.isIOS) {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return CupertinoTimerPicker(
                        onTimerDurationChanged: (value) {},
                      );
                    },
                  );
                } else {
                  final selectedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  print(
                      'Horario selecionado: ${selectedTime ?? 'Nenhum horario selecionado'}');
                }
              },
              child: const Text('Timer Picker'),
            ),
            ElevatedButton(
              onPressed: () async {
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                );
                print(
                    'Data selecionada ${selectedDate ?? 'Nenhuma data selecionada'}');
              },
              child: const Text('Date Picker'),
            ),
            ElevatedButton(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationIcon: const Icon(Icons.flutter_dash),
                );
              },
              child: const Text('About Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
