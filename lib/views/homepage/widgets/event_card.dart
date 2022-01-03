import 'package:expenses/controllers/appdata.dart';
import 'package:expenses/models/amount.dart';
import 'package:expenses/models/event.dart';
import 'package:flutter/material.dart';


class EventCard extends StatefulWidget {
  final Event event;

  const EventCard({
    Key? key,
    required this.event,

  }) : super(key: key);

  @override
  State<EventCard> createState() => _EventCardState();
}


class _EventCardState extends State<EventCard> {
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 50,
      decoration: const BoxDecoration(
        color: Color(0xfff1f4f6),
        border: Border(
          left: BorderSide(
            width: 3.0,
            color: Colors.black,
          ),
        ),
      ),

      child: Table(
        children: [
          TableRow(
              children: [
                Column(children:[Text(widget.event.data, style: TextStyle(fontSize: 20.0))]),
                Column(children:[Text('Rs ' + widget.event.cost.toString(), style: TextStyle(fontSize: 20.0))]),

                Column(
                  children: [
                    GestureDetector(

                        onTap:(){
                           AppData.deleteEvent(Event(data: widget.event.data, cost: widget.event.cost));
                        },
                      child: const Icon(
                      Icons.delete,
                      color: Colors.black,
                    ),
                    ),
                  ],
                )





              ]
          )
        ],
      ),

    );



  }
}