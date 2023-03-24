import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rows_columns,
  media_query,
  layout_builder,
  botoes_rotacao_texto,
  scrolls_singlechildscrollview,
  scrolls_listview,
  dialogs,
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            // icon: const Icon(Icons.menu),
            onSelected: (PopupMenuPages valueSelected) {
              switch (valueSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;
                case PopupMenuPages.rows_columns:
                  Navigator.of(context).pushNamed('/rows_columns');
                  break;
                case PopupMenuPages.media_query:
                  Navigator.of(context).pushNamed('/media_query');
                  break;
                case PopupMenuPages.layout_builder:
                  Navigator.of(context).pushNamed('/layout_builder');
                  break;
                case PopupMenuPages.botoes_rotacao_texto:
                  Navigator.of(context).pushNamed('/botoes_rotacao_text');
                  break;
                case PopupMenuPages.scrolls_singlechildscrollview:
                  Navigator.of(context).pushNamed('/scrolls/single_child');
                  break;
                case PopupMenuPages.scrolls_listview:
                  Navigator.of(context).pushNamed('/scrolls/list_view');
                  break;
                case PopupMenuPages.dialogs:
                  Navigator.of(context).pushNamed('/dialogs');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                // ignore: prefer_const_constructors
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.container,
                  child: const Text('Container'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.rows_columns,
                  child: Text('Rows & Columns'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.media_query,
                  child: Text('Media Query'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.layout_builder,
                  child: Text('Layout Builder'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.botoes_rotacao_texto,
                  child: Text('Botões e Rotações de Texto'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.scrolls_singlechildscrollview,
                  child: Text('Scroll Single Child'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.scrolls_listview,
                  child: Text('Scroll ListView'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.dialogs,
                  child: Text('Dialogs'),
                ),
              ];
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Primeiros passos em Flutter',
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
