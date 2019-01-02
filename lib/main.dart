import 'package:flutter/material.dart';
import 'package:january1_folding_cell/data/data.dart';
import 'package:january1_folding_cell/widget/ice_cream_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String appTitle = 'FoldingCell';
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: appTitle,
        theme: ThemeData(
          primaryColor: Colors.deepOrange,
          buttonColor: Colors.white,
          primaryTextTheme: TextTheme(
            caption: Theme.of(context).primaryTextTheme.caption.copyWith(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
          ),
        ),
        home: MainPage(appTitle: appTitle),
      );
}

class MainPage extends StatelessWidget {
  final String appTitle;

  const MainPage({this.appTitle});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: ListView(
            children: iceCream
                .map((iceCream) => IceCreamWidget(iceCream: iceCream))
                .toList()),
      );
}
