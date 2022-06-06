import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:p5/models/recipe.dart';

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "24", "start": "0", "tag": "list.recipe.popular"});

    final response = await http.get(uri, headers: {
      //"x-rapidapi-key": "YOUR API KEY FROM YUMMLY API",
      //"x-rapidapi-host": "yummly2.p.rapidapi.com",
      "X-RapidAPI-Host": "yummly2.p.rapidapi.com",
      "X-RapidAPI-Key": "206efa4deamshbbb6ca1947b8960p140c2djsn19a9e340ede3",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Recipe.recipesFromSnapshot(_temp);
  }
}
