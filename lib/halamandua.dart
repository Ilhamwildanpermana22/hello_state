import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hello_state/main.dart';

class MyWidget extends StatelessWidget {
  final String parameter;
  final String parameter2;

  const MyWidget({
    super.key,
    required this.parameter,
    required this.parameter2,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("halaman 2")),
        body: Column(
          children: [
            const Text("login berhasil"),
            Text(parameter),
            ElevatedButton(
              child: const Text("kembali"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              child: const Text("Logout"),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const MyApp(),
                  ),
                );
              },
            )
          ],
        ));
  }
}
