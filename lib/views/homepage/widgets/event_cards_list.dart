import 'package:expenses/models/event.dart';
import 'package:expenses/views/homepage/widgets/event_card.dart';
import 'package:flutter/material.dart';








class EventCardsList extends StatelessWidget {
  const EventCardsList({
    Key? key,
    required this.eventList,
  }) : super(key: key);

  final List<Event> eventList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return EventCard(event: eventList[index],);
      },
      itemCount: eventList.length,
    );
  }
}
