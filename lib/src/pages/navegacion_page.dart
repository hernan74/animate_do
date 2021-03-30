import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class NavegacionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _NotificationModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pagina Notificacion'),
          centerTitle: true,
        ),
        body: Container(),
        floatingActionButton: BotonFlotante(),
        bottomNavigationBar: BotonNavigation(),
      ),
    );
  }
}

class BotonFlotante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<_NotificationModel>(context);
    return FloatingActionButton(
      onPressed: () {
        provider.numero += 1;
        if (provider.numero >= 2) {
          provider.bounceController.forward(from: 0.0);
        }
      },
      child: FaIcon(FontAwesomeIcons.play),
    );
  }
}

class BotonNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<_NotificationModel>(context);
    return BottomNavigationBar(currentIndex: 0, items: [
      BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.bone), label: 'Bones'),
      BottomNavigationBarItem(
          icon: Stack(
            children: [
              FaIcon(FontAwesomeIcons.bell),
              Positioned(
                  top: 0,
                  right: 0,
                  child: BounceInDown(
                    animate: provider.numero == 0 ? false : true,
                    from: 10,
                    child: Bounce(
                      from: 10,
                      controller: (controller) => provider.bounceController=controller,
                      child: Container(
                        width: 13,
                        height: 13,
                        child: Text(
                          '${provider.numero}',
                          style: TextStyle(color: Colors.white),
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.redAccent, shape: BoxShape.circle),
                      ),
                    ),
                  ))
            ],
          ),
          label: 'Notificaciones'),
      BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.dog), label: 'Mi Perro'),
    ]);
  }
}

class _NotificationModel extends ChangeNotifier {
  int _numero = 0;
  AnimationController _bounceController;

  int get numero => this._numero;

  AnimationController get bounceController => this._bounceController;

  set numero(int numero) {
    this._numero = numero;
    notifyListeners();
  }

  set bounceController(AnimationController bounceController) {
    this._bounceController = bounceController;
  }
}
