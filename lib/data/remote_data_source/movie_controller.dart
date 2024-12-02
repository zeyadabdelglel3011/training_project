import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';


import '../models/movie_model.dart';

class MovieController {
  static Uri url = Uri.parse('https://api.themoviedb.org/3/person/popular?api_key=2dfe23358236069710a379edd4c65a6b');
  static var headers = {
    "Content-Type" : "application/json",
    "Accept" : "application/json",


  };

  static Future<MovieModel?> getMovieData()async{
    http.Response response =await http.get(url, headers: headers);
    if(response.statusCode==200)
    {
      Map<String,dynamic> data = {};
      data = json.decode(response.body);
      return MovieModel.fromJson(data);
    }
    else{
      return null;
    }
  }
}