import 'package:animate_do_app/src/pages/pagina1_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' Animate_do',
      initialRoute: '/',
      routes: {'/': (_) => Pagina1Page()},
    );
  }
}
