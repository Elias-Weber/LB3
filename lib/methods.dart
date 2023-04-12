import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import "package:lb3/screens/screen_2.dart";

class Method {
  final _Auftrag = Hive.box("myAuftrag");
  final _AuftragNR = Hive.box("myAuftragNR");


  String myKunde (int index)
  {
  var auftrag = _Auftrag.get(index);


  String a = auftrag[0];
  if (a == null) {
    a = "";
  }
  return a;
}

  String myBeschreibung (int index)
  {
    var auftrag = _Auftrag.get(index);

    String a = auftrag[1];
    if (a == null) {
      a = "";
    }
    return a;
  }
}