import "package:flutter/material.dart";

class Ticket {
  late String _Kunde;

  String get Kunde => _Kunde;

  set Kunde(String value) {
    _Kunde = value;
  }
  late String _KurzBeschreibung;

  String get KurzBeschreibung => _KurzBeschreibung;

  set KurzBeschreibung(String value) {
    _KurzBeschreibung = value;
  }
  late String _NeuerPC;

  String get NeuerPC => _NeuerPC;

  set NeuerPC(String value) {
    _NeuerPC = value;
  }
  late String _VorhandeneSoftware;

  String get VorhandeneSoftware => _VorhandeneSoftware;

  set VorhandeneSoftware(String value) {
    _VorhandeneSoftware = value;
  }
  late String _SoftwareZumUebernehmen;

  String get SoftwareZumUebernehmen => _SoftwareZumUebernehmen;

  set SoftwareZumUebernehmen(String value) {
    _SoftwareZumUebernehmen = value;
  }
  late String _SoftwareZumNeuKaufen;

  String get SoftwareZumNeuKaufen => _SoftwareZumNeuKaufen;

  set SoftwareZumNeuKaufen(String value) {
    _SoftwareZumNeuKaufen = value;
  }
  late String _DatenZumUebernehmen;

  String get DatenZumUebernehmen => _DatenZumUebernehmen;

  set DatenZumUebernehmen(String value) {
    _DatenZumUebernehmen = value;
  }
  late String _ErwarteteArbeitszeit;

  String get ErwarteteArbeitszeit => _ErwarteteArbeitszeit;

  set ErwarteteArbeitszeit(String value) {
    _ErwarteteArbeitszeit = value;
  }
  late String _GebrauchteArbeitszeit;

  String get GebrauchteArbeitszeit => _GebrauchteArbeitszeit;

  set GebrauchteArbeitszeit(String value) {
    _GebrauchteArbeitszeit = value;
  }

  Ticket() {

  }
}