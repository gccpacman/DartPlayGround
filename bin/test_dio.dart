import 'package:dio/dio.dart';

class Road {
  final int _id;
  final String name_chs;
  final String des_html;
  final String place_name;
  final int architectures_count;
  final List architectures_list;

  Road(this._id, this.name_chs, this.des_html, this.place_name, this.architectures_count, this.architectures_list);

  Road.fromJson(Map<String, dynamic> json)
    : _id = json['_id'],
      name_chs = json['name_chs'],
      des_html = json['des_html'],
      place_name = json['place_name'],
      architectures_list = json['architectures_list'],
      architectures_count = json['architectures_count'];

  Map<String, dynamic> toJson() => {
      '_id': _id,
      'name_chs': name_chs,
      'place_name': place_name,
      'architectures_list': architectures_list,
      'architectures_count': architectures_count,
  };
}

// class Polyline {
//   final Map center_bmap;
//   final Map polyline_bmap;

// }

void main(List<String> arguments) {
  getHttp();
}

void getHttp() async {
  try {
    var response = await Dio().get('https://api2.datadude.xyz/api/road/1312/');
    // print(response);
    // print(response.data['_id']);
    var road = Road.fromJson(response.data);
    print(road.toJson());
  } catch (e) {
    print(e);
  }
}