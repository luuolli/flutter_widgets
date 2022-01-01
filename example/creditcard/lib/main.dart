import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lucas_widgets/lucas_widgets.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: kDebugMode,
      theme: ThemeData.dark(),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        middle: Text('Lucas Design'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LCreditCard(
              holderName: 'Lucas P Oliveira'.toUpperCase(),
              cardNumber: '**** ***** **** 1234',
              labelValidThru: 'valid thru',
              validThru: '03/35',
              labelCvv: 'cvv',
              cvv: '123',
              backgroundGradient: const LinearGradient(
                colors: [
                  Colors.redAccent,
                  Colors.blueGrey,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              headerWidget: CupertinoButton(
                child: const Text('Trocar'),
                onPressed: () {},
              ),
              bottomWidget: const Text('VISA'),
            ),
          ],
        ),
      ),
    );
  }
}
