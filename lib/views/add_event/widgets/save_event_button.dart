import 'package:expenses/controllers/appdata.dart';
import 'package:expenses/models/event.dart';
import 'package:expenses/views/homepage/event_list_page.dart';
import 'package:flutter/material.dart';






class SaveEventFAB extends StatelessWidget {
  final String eventLabel ;
  final int num;


   SaveEventFAB({
    Key? key,
    required this.eventLabel,
    required this.num,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.black,
      onPressed: () {
        if(eventLabel.isNotEmpty && !num.isNaN){

          AppData.addEvent(Event(data: eventLabel, cost: num));
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => const EventListPage()));




        }
      },
      child: const Icon(
        Icons.check,
        color: Colors.white,
      ),
    );
  }
}