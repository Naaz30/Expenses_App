import 'package:expenses/controllers/appdata.dart';
import 'package:expenses/models/event.dart';


int returnAmount() {
   int a =0;
    for(var i=0;i<AppData.eventList.length;i++)
      {
          a+=AppData.eventList[i].cost;
      }
     return a;

  }
