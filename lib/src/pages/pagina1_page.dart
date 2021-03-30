import 'package:animate_do/animate_do.dart';
import 'package:animate_do_app/src/pages/navegacion_page.dart';
import 'package:animate_do_app/src/pages/twiter_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FadeIn(
            duration: Duration(milliseconds: 1000), child: Text('Animate_do')),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) => TwiterPage()));
              },
              icon: FaIcon(FontAwesomeIcons.twitter)),
          SlideInLeft(
            from: 50,
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => Pagina1Page()));
                },
                icon: Icon(Icons.navigate_next)),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeInDown(
              delay: Duration(milliseconds: 200),
              child: _contenido('FadeInDown'),
            ),
            SizedBox(
              height: 10.0,
            ),
            BounceInDown(
              delay: Duration(milliseconds: 800),
              child: _contenido('BounceInDown'),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElasticIn(
              delay: Duration(milliseconds: 800),
              child: _contenido('ElasticIn'),
            ),
            SizedBox(
              height: 10.0,
            ),
            JelloIn(
              delay: Duration(milliseconds: 800),
              child: _contenido('JelloIn'),
            ),
            SizedBox(
              height: 10.0,
            ),
            SlideInDown(
              delay: Duration(milliseconds: 800),
              child: _contenido('SlideInDown'),
            ),
            SizedBox(
              height: 10.0,
            ),
            FlipInX(
              delay: Duration(milliseconds: 800),
              child: _contenido('FlipInX'),
            ),
            SizedBox(
              height: 10.0,
            ),
            ZoomIn(
              delay: Duration(milliseconds: 800),
              child: _contenido('ZoomIn'),
            ),
          ],
        ),
      ),
      floatingActionButton: ElasticInRight(
        child: FloatingActionButton(
          child: FaIcon(FontAwesomeIcons.play),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => NavegacionPage()));
          },
        ),
      ),
    );
  }

  Widget _contenido(String titulo) {
    return Text(
      titulo,
      style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent),
    );
  }
}
