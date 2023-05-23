import 'package:flutter/material.dart';
import 'package:hello_state/halamandua.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var judul = "Halaman login";
  var body = "ini isi body";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          const ListTile(
            leading: Icon(Icons.adjust),
            title: Text("home"),
          ),
          ListTile(
            leading: const Icon(Icons.adjust),
            title: const Text("peminjaman"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MyWidget(
                    parameter: "A",
                    parameter2: "B",
                  ),
                ),
              );
            },
          ),
          const ListTile(
            leading: Icon(Icons.adjust),
            title: Text("pengembalian"),
          ),
        ],
      )),
      appBar: AppBar(title: Text(judul)),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          judul = "ini judul yang berubah";
          body = "ini adalah body yang berubah";
        });
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const MyWidget(
              parameter: "A",
              parameter2: "B",
            ),
          ),
        );
      }),
      body: Text(body),
    );
  }
}
