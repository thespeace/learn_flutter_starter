import 'package:flutter/material.dart';
import 'package:learn_flutter_starter/webtoon/screens/webtoon_home_screen.dart';

class WebtoonApp extends StatelessWidget {
  const WebtoonApp({super.key}); //해당 위젯의 key를 stateless widget이라는 슈퍼클래스에 보낸 것. 이를 통해 위젯은 key라는 걸 가지고 있고 ID처럼 쓰이고 Flutter는 위젯을 식별하기 위해 ID를 쓴다는 걸 알 수 있다.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WebtoonHomeScreen(),
    );
  }
}
