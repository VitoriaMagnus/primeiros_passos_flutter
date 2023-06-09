import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'model/cidade.dart';

class CidadesPage extends StatefulWidget {
  const CidadesPage({Key? key}) : super(key: key);

  @override
  State<CidadesPage> createState() => _CidadesPageState();
}

class _CidadesPageState extends State<CidadesPage> {
  var cidades = <Cidade>[];

  @override
  void initState() {
    super.initState();
    _loadCities();
  }

  Future<void> _loadCities() async {
    print('buscando cidades');
    final cidadesJson = await rootBundle.loadString('assets/cidades.json');

    setState(() {
      var cidadeList = json.decode(cidadesJson);
      cidades = cidadeList.map<Cidade>((city) => Cidade.fromMap(city)).toList();
      print(cidades);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cidades'),
      ),
      body: ListView.builder(
        itemCount: cidades.length,
        itemBuilder: (context, index) {
          var cidadeItem = cidades[index];
          return ListTile(
            title: Text(cidadeItem.cidade),
            subtitle: Text(cidadeItem.estado),
          );
        },
      ),
    );
  }
}
