import 'dart:convert';
import 'package:expenses/models/event.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppData {
  static List<Event> eventList = [];
  static late SharedPreferences _sharedPreferences;
  static late List<String> _jsonEventList = [];

  static Future<void> initEvent() async {
    _sharedPreferences = await SharedPreferences.getInstance();

    final _tempJsonEventList = _sharedPreferences.getStringList('expenses');

    if(_tempJsonEventList != null){
      _jsonEventList = _tempJsonEventList;
      eventList = _tempJsonEventList.map((json) => Event.fromJson(jsonDecode(json))).toList();
    }
  }

  static Future<void> addEvent(event) async {
    eventList.add(event);
    _jsonEventList.add(jsonEncode(event));

    await _sharedPreferences.setStringList('expenses', _jsonEventList);
  }

  static Future<void> deleteEvent(event) async {
    eventList.remove(event);
    _jsonEventList.remove(jsonEncode(event));

    await _sharedPreferences.setStringList('expenses', _jsonEventList);
  }



  static List<Event> getEvents() {
    return eventList;
  }

  static Future<void> saveEvents() async {
    _jsonEventList = eventList.map((event) => jsonEncode(event)).toList();
    await _sharedPreferences.setStringList('expenses', _jsonEventList);
  }
}
