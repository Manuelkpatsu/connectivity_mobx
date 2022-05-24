import 'package:connectivity_mobx/store/connectivity_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'connectivity_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<ConnectivityStore>(
      create: (_) => ConnectivityStore(),
      dispose: (_, store) => store.dispose(),
      child: Consumer<ConnectivityStore>(
        builder: (_, store, __) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: ConnectivityScreen(store),
        ),
      ),
    );
  }
}
