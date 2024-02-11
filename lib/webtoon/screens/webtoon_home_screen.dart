import 'package:flutter/material.dart';
import 'package:learn_flutter_starter/webtoon/services/webtoon_api_service.dart';

import '../models/webtoon_model.dart';

class WebtoonHomeScreen extends StatelessWidget {
  WebtoonHomeScreen({super.key});

  Future<List<WebtoonModel>> webtoons = WebtoonApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: Text(
          "오늘의 웹툰",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: FutureBuilder(
          future: webtoons, //default로 await가 명시되어 있다.(숨김)
          builder: (context, snapshot) {
            if(snapshot.hasData) {
              return Text("There is data!");
            } else {
              return Text('Loading....');
            }
          },
      ),
    );
  }
}
