import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class configUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        actions: const [
          // IconButton(
          //
          //   icon: const Icon(Icons.arrow_back),
          //   color: Pallete.white,
          //   onPressed: () {
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (context) => Home()));
          //   },
          // ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            /*
          Foto perfil
         */
            Expanded(
              flex: 3,
              child: Center(
                child: Container(
                  child: Column(
                    // lembre do flexbox do html

                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text(
                          'Perfil',
                          style: TextStyle(
                              color: Pallete.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.8,
                                color: Colors.white,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(6)),
                          width: 100,
                          height: 90,
                          child: const Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 70,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Text(
                          '{user.name}',
                          style: TextStyle(
                            color: Pallete.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            /*
          Buttons com onPressed
         */
            Expanded(
              flex: 4,
              child: Center(
                child: Container(
                  width: 350,
                  height: 200,
                  //color: Colors.white,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 300,
                        height: 47,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            elevation: 0,
                            side: BorderSide(color: Colors.white),
                          ),
                          icon: const Icon(Icons.account_circle_rounded),
                          label: const Text('Dados cadastrados'),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        height: 47,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            elevation: 0,
                            side: BorderSide(color: Colors.white),
                          ),
                          icon: const Icon(Icons.account_circle_rounded),
                          label: const Text('Configurações'),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(flex: 3, child: Container()),
            /*
         Rodape
          */
            Expanded(
              flex: 1,
              child: Center(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Precisa de ajuda ?',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        'Entre em contato',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'lincoln.carmo@sptech.school',
                        style: TextStyle(color: Colors.lightBlue),
                      )
                    ],
                  ),
                  // color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
