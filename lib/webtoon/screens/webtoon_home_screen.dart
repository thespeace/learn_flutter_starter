import 'package:flutter/material.dart';
import 'package:learn_flutter_starter/webtoon/services/webtoon_api_service.dart';

import '../models/webtoon_model.dart';

class WebtoonHomeScreen extends StatefulWidget {
  const WebtoonHomeScreen({super.key});

  @override
  State<WebtoonHomeScreen> createState() => _WebtoonHomeScreenState();
}

class _WebtoonHomeScreenState extends State<WebtoonHomeScreen> {

  List<WebtoonModel> webtoons = [];
  bool isLoading = true;

  void waitForWebtoons() async {
    webtoons = await WebtoonApiService.getTodaysToons();
    isLoading = false;
    setState(() { });
  }

  @override
  void initState() {
    super.initState();
    waitForWebtoons();
  }

  @override
  Widget build(BuildContext context) {
    print(webtoons);
    print(isLoading);
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
    );
  }
}
