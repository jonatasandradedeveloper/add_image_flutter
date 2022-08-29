import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Adicionando Imagens no App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Adicionando Imagem da internet',
              ),
              SizedBox(
                width: 150,
                height: 100,
                child: Image.network(
                    "https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png"),
              ),
              const Text("Adicionando Imagem local"),
              SizedBox(
                width: 200,
                height: 100,
                child: Image.asset("assets/imagens/flutter.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
