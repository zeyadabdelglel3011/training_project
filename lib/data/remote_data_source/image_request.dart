
  import 'dart:convert';

  import 'package:http/http.dart' as http;
  import 'package:http/http.dart';
import 'package:training_project/data/models/image_model.dart';



  class ImageRequest  {
  
  static var headers = {
  "Content-Type" : "application/json",
  "Accept" : "application/json",


  };

  static Future<ImageModel?> getImageData({required num id})async{
  http.Response response =await http.get(Uri.parse('https://api.themoviedb.org/3/person/$id/images?api_key=2dfe23358236069710a379edd4c65a6b'), headers: headers);
  if(response.statusCode==200)
  {
  Map<String,dynamic> data = {};
  data = json.decode(response.body);
  return ImageModel.fromJson(data);
  }
  else{
  return null;
  }
  }

}