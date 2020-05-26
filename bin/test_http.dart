import 'dart:convert';

import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  // var url = 'https://example.com/whatsit/create';
  // var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
  // print('Response status: ${response.statusCode}');
  // print('Response body: ${response.body}');
  // print(await http.read('https://example.com/foobar.txt'));
  var url = 'https://api2.datadude.xyz/api/road/1312/';
  var response = await http.get(url);
  // print('Response status: ${response.statusCode}');
  // print('Response body: ${response.body}');
  var foo = utf8.decode(response.bodyBytes);
  print(foo);
  var bar = jsonDecode(foo);
  print(bar["_id"]);
}