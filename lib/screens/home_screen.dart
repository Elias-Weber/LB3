import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:lb3/screens/screen_2.dart";
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lb3/TicketLib.dart';
import 'package:lb3/ticket.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final _Auftrag = Hive.box("myAuftrag");
  final _AuftragNR = Hive.box("myAuftragNR");

  String? kunde = listKunde();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Startseite"),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: _Auftrag.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(""),
                ),
              );
            }),
      ),
    );
  }

  String listKunde() {
    var myList = _Auftrag.get(1);
    String kunde = myList[1];
    return kunde;
  }

}
