import 'dart:convert';
import 'package:api/Screen/Home_Screen/Home_Model.dart';
import 'package:http/http.dart' as http;

class Api_Helper {
  Api_Helper._();

  static Api_Helper api_helper = Api_Helper._();

  Future<HomeModel?> GetApi(String search) async {
    String Apilink =
        "https://newsapi.org/v2/everything?q=$search&from=${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day - 1}&sortBy=publishedAt&apiKey=90c610468ebd4627bbcb498661977c6e";
    var response = await http.get(
      Uri.parse(Apilink),
    );
    if(response.statusCode == 200)
      {
        return HomeModel.fromJson(json);
      }
    else null;
  }
}
