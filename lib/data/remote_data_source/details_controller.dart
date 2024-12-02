import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';


import '../models/details_model.dart';
import '../models/movie_model.dart';


class DetailsController {

  static var headers = {
    "Content-Type" : "application/json",
    "Accept" : "application/json",


  };

  Future<DetailsModel?> getDetailsData({required num id})async{
    http.Response response =await http.get( Uri.parse('https://api.themoviedb.org/3/person/$id?api_key=2dfe23358236069710a379edd4c65a6b')
    , headers: headers);
    if(response.statusCode==200)
    {
      Map<String,dynamic> data = {};
      data = json.decode(response.body);
      return DetailsModel.fromJson(data);
    }
    else{
      return null;
    }
  }
}