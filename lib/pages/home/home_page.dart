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
  snackbar,
  forms,
  cidades,
  stack,
  stackDois,
  bottom_navigator_bar,
  circle_avatar,
  colors,
  material_banner,
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
                case PopupMenuPages.snackbar:
                  Navigator.of(context).pushNamed('/snackbars');
                  break;
                case PopupMenuPages.forms:
                  Navigator.of(context).pushNamed('/forms');
                  break;
                case PopupMenuPages.cidades:
                  Navigator.of(context).pushNamed('/cidades');
                  break;
                case PopupMenuPages.stack:
                  Navigator.of(context).pushNamed('/stack');
                  break;
                case PopupMenuPages.stackDois:
                  Navigator.of(context).pushNamed('/stack/pageDois');
                  break;
                case PopupMenuPages.bottom_navigator_bar:
                  Navigator.of(context).pushNamed('/bottomnavigatorbar');
                  break;
                case PopupMenuPages.circle_avatar:
                  Navigator.of(context).pushNamed('/circle_avatar');
                  break;
                case PopupMenuPages.colors:
                  Navigator.of(context).pushNamed('/colors');
                  break;
                case PopupMenuPages.material_banner:
                  Navigator.of(context).pushNamed('/material_banner');
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
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.snackbar,
                  child: Text('SnackBars'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.forms,
                  child: Text('Forms'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.cidades,
                  child: Text('Cidades'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stack,
                  child: Text('Stack'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.stackDois,
                  child: Text('Stack Dois'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.bottom_navigator_bar,
                  child: Text('BottomNavigatorBar'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.circle_avatar,
                  child: Text('Circle Avatar'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.colors,
                  child: Text('Cores'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.material_banner,
                  child: Text('Material Banner'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.red,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Colors.purple,
            ),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Botão'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
