import 'package:flutter/material.dart';
import 'package:testef/main.dart';

import 'developerInformation.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Pallete.gradientDark.withOpacity(0.95),
              Pallete.gradientWhite.withOpacity(0.7),
            ], begin: Alignment.topCenter),
          ),
          child: Container(
            margin: EdgeInsets.only(left: 30),
            child: Column(
              children: [
                Spacer(flex: 1),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Bem-vindo(a)!',
                              style: TextStyle(
                                color: Pallete.white,
                                fontFamily: 'JuraBold',
                                fontSize: 36,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: const Text(
                                'vamos mudar o modo como'
                                '\n vê seus resultados!',
                                style: TextStyle(
                                  color: Pallete.whiteGrey,
                                  fontFamily: 'JuraMedium',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 150),
                        width: 150,
                        height: 45,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Pallete.primary,
                            onPrimary: Pallete.primary,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Continuar',
                            style:
                                TextStyle(color: Pallete.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
