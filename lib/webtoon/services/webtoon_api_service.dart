import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/webtoon_model.dart'; //패키지의 함수명이 너무 일반적이라 namespace를 지정.

class WebtoonApiService {
  static const String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  static const String today = "today";

  static Future<List<WebtoonModel>> getTodaysToons() async {//async(비동기 함수)에서만 await를 사용할 수 있고, 이는 요청을 완료하여 반환값을 받은 후에 다음 코드를 진행하라는 뜻.
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl/$today');//baseUrl과 today로 endpoint API URL 생성.
    final response = await http.get(url);//return 타입인 Future<response>은 미래에 받을 값의 타입을 알려준다. await와 함께 사용해야하고 사용하면 response 변수는 그냥 Response 타입인 걸 확인 할 수 있다.
    if(response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);//decode : String -> JSON
      for(var webtoon in webtoons) {
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
      }
      return webtoonInstances;
    }
    throw Error();
  }
}