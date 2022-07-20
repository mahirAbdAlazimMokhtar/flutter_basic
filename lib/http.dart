import 'dart:convert';
import 'dart:core';

import 'package:http/http.dart' as http;



 fetchData()async {
  const String url = 'https://jsonplaceholder.typicode.com/users';
  http.Response response =await  http.get(Uri.parse(url));
  if (response.statusCode==200){
    var obj = jsonDecode(response.body);
    return obj ;
  }else{
    throw Exception('You have an Error in your Code');
  }
}