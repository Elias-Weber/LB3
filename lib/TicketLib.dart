import "package:flutter/material.dart";
import "package:lb3/ticket.dart";

class TicketLib {
  List<Ticket> _ticketList = <Ticket>[];

  List<Ticket> get ticketList => _ticketList;


  void addTicket(Ticket t) {
    ticketList.add(t);
  }
}
