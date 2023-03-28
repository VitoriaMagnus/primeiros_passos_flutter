import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/botoes_rotacao_texto/botoes_rotacoes_texto_page.dart';
import 'package:flutter_primeiro_projeto/pages/bottom_navigator_bar/bottom_navigator_bar_page.dart';
import 'package:flutter_primeiro_projeto/pages/cidades/cidades_page.dart';
import 'package:flutter_primeiro_projeto/pages/circle_avatar/circle_avatar_page.dart';
import 'package:flutter_primeiro_projeto/pages/container/container_page.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialogs_pages.dart';
import 'package:flutter_primeiro_projeto/pages/forms/forms_page.dart';
import 'package:flutter_primeiro_projeto/pages/home/home_page.dart';
import 'package:flutter_primeiro_projeto/pages/layout_builder/layout_builder_page.dart';
import 'package:flutter_primeiro_projeto/pages/midia_query/media_query_page.dart';
import 'package:flutter_primeiro_projeto/pages/rows_columns/rows_column_page.dart';
import 'package:flutter_primeiro_projeto/pages/scrolls/listview_page.dart';
import 'package:flutter_primeiro_projeto/pages/scrolls/singlechildscrollview_page.dart';
import 'package:flutter_primeiro_projeto/pages/snackbar/snackbar_page.dart';
import 'package:flutter_primeiro_projeto/pages/stack/stack_page.dart';
import 'package:flutter_primeiro_projeto/pages/stack/stack_page2.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false, //!kReleaseMode,
      builder: (_) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.amber,
        primarySwatch: Colors.blue,
        primaryColorLight: Colors.purple,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.amber,
        ),
      ),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routes: {
        '/': (context) => const HomePage(),
        '/container': (context) => const ContainerPage(),
        '/rows_columns': (context) => const RowsColumnPage(),
        '/media_query': (context) => const MediaQueryPage(),
        '/layout_builder': (context) => const LayoutBuilderPage(),
        '/botoes_rotacao_text': (context) => const BotoesRotacoesTextoPage(),
        '/scrolls/single_child': (context) => const SinglechildscrollviewPage(),
        '/scrolls/list_view': (context) => const ListviewPage(),
        '/dialogs': (context) => const DialogsPages(),
        '/snackbars': (context) => const SnackbarPage(),
        '/forms': (context) => const FormsPage(),
        '/cidades': (context) => const CidadesPage(),
        '/stack': (context) => const StackPage(),
        '/stack/pageDois': (context) => const StackPage2(),
        '/bottomnavigatorbar': (context) => const BottomNavigatorBarPage(),
        '/circle_avatar': (context) => const CircleAvatarPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
