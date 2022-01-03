class Event{
  String data;
  int cost;

  Event({
    required this.data,
    required this.cost,


  });



  String getData() {
    return data;
  }

  int getCost() {
    return cost;
  }

  factory Event.fromJson(Map<String, dynamic> json) => Event(
    data: json['data'],
    cost: json['cost'],


  );


  Map<String, dynamic> toJson() => {
    'data': data,
    'cost': cost,

  };





}