import 'package:flutter/material.dart';
import 'package:learn_flutter_starter/webtoon/services/webtoon_api_service.dart';

import '../models/webtoon_model.dart';

class WebtoonHomeScreen extends StatelessWidget {
  WebtoonHomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = WebtoonApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: FutureBuilder(
          future: webtoons, //default로 await가 명시되어 있다.(숨김)
          builder: (context, future) {
            if(future.hasData) {
              /*return ListView(//ListView : 많은 양의 데이터를 연속적으로 한번에 노출할 때 사용(SDK Package!!!).
                children: [
                  for(var webtoon in future.data!) Text(webtoon.title)
                ],
              );*/
              /*return ListView.builder(//ListView.builder는 좀 더 최적화된 ListView.
                scrollDirection: Axis.horizontal,
                itemCount: future.data!.length,
                itemBuilder: (context, index) { //사용자가 보고 있는 아이템만 build, 나머지는 메모리에서 삭제. 효율적인 메모리 사용!
                  print(index);
                  var webtoon = future.data![index];
                  return Text(webtoon.title);
                },
              );*/
              return Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Expanded(//화면의 남는 공간을 차지하는 위젯.
                      child: makeList(future),
                  ),
                ],
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> future) {
    return ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: future.data!.length,
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20
              ),
              itemBuilder: (context, index) {
                print(index);
                var webtoon = future.data![index];
                return Column(
                  children: [
                    Container(
                      width: 250,
                      clipBehavior: Clip.hardEdge, //자식의 부모 영역 침범을 제어하는 방법
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            offset: Offset(10, 10),
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ]
                      ),
                      child: Image.network(
                          webtoon.thumb,
                          headers: const {
                            'Referer': 'https://comic.naver.com',
                          },
                      )
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      webtoon.title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(//ListView.builder에서 separatorBuilder 인자 추가, 리스트 아이템 사이에 구분자 추가.
                width: 40,
              ),
            );
  }
}
