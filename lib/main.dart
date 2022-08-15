import 'package:flutter/material.dart';
import 'package:testef/dev.dart';
import 'package:testef/configUser.dart';
import 'home.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffb252526)),
      color: Pallete.white,
      //remove o banner de debug
      debugShowCheckedModeBanner: false,
      home: home(),
    ),
  );
}

class Pallete {
  static const Color dark = Color(0xffb252526);
  static const Color primary = Color(0xffb42257C);
  static const Color second = Color(0xffb5666F6);
  static const Color white = Color(0xffbEFEFEF);
  static const Color green = Color(0xffb00DA87);
  static const Color gradientDark = Color(0x212121);
  static const Color gradientWhite = Color(0xffb000000);
  static const Color whiteGrey = Color(0xffbC9C9C9);
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Pallete.dark,
      //   title: const Text('Resilience Muscle'),
      //   centerTitle: true,
      // ),
      //o Text.rich ele possibilita conseguir dar style no texto
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Seja bem vindo!',
              style: TextStyle(
                  color: Pallete.white,
                  fontSize: 20,
                  fontFamily: 'Jura',
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(height: 30),
            Image.asset(
              'assets/images/logo.png',
              width: 100,
            ),
            SizedBox(height: 30),
            const Text.rich(
              TextSpan(
                  text: 'Vamos começar a mudar o\n'
                      'modo como vê sua\n',
                  style: TextStyle(
                      color: Pallete.white,
                      fontSize: 20,
                      fontFamily: 'Jura',
                      fontWeight: FontWeight.w600),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'evolução?!\n',
                        style: TextStyle(
                            color: Pallete.green,
                            fontSize: 20,
                            fontWeight: FontWeight.w700)),
                  ]),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return configUser();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Pallete.primary,
                    alignment: Alignment.centerLeft,
                  ),
                  child: const Text('Começar!')),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return dev();
              }),
            );
          },
          child: const Text(
            'Todos os direitos reservados © Copyrigth 2022',
            style: TextStyle(
              color: Pallete.white,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
