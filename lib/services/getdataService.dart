//get data dari model getDataModels.dart
import 'package:crudapiphp/models/getdataModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GetDataServices{
  //menggunakan http untuk get data 
  //url localhost/apiphp/getdata.php

  final url = Uri.parse('http://localhost/apiphp/getdata.php'); // url untuk get data

  //method untuk get data
  Future<GetData> getData() async {
    final response = await http.get(url);
    
    if (response.statusCode == 200) {
      print(GetData.fromJson(jsonDecode(response.body)));
      return GetData.fromJson(jsonDecode(response.body)['data']);
    } else {
      throw Exception('Failed to load data');
    }
  }
}