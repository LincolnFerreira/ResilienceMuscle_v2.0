import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MudaEstado extends StatefulWidget {
  const MudaEstado({Key? key}) : super(key: key);

  @override
  State<MudaEstado> createState() => _MudaEstadoState();
}

class _MudaEstadoState extends State<MudaEstado> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'sla o pq $count',
                style: TextStyle(color: Colors.white),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count++;
                      print(count);
                    });
                  },
                  child: Text('Olá contador'))
            ],
          ),
        ),
      ),
    );
  }
}
