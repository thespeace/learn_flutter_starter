import 'package:flutter/material.dart';
import 'package:learn_flutter_starter/webtoon/services/webtoon_api_service.dart';

import '../models/webtoon_detail_model.dart';
import '../models/webtoon_episode_model.dart';
import '../widgets/webtoon_episode_widget.dart';

class WebtoonDetailScreen extends StatefulWidget {

  final String title, thumb, id;

  const WebtoonDetailScreen({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  State<WebtoonDetailScreen> createState() => _WebtoonDetailScreenState();
}

class _WebtoonDetailScreenState extends State<WebtoonDetailScreen> {

  late Future<WebtoonDetailModel> webtoon; //constructor에서 widget이 참조 될 수 없기때문에 late 선언.
  late Future<List<WebtoonEpisodeModel>> episodes; //초기화 하고 싶은 property를 생성자에서 불가능한 경우, late를 유용하게 쓸 수 있다.

  @override
  void initState() {
    super.initState();
    webtoon = WebtoonApiService.getToonById(widget.id);
    episodes = WebtoonApiService.getLatestEpisodeById(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: Text(
            widget.title, //State의 build method가 State가 속한 StatefulWidget의 data를 받아오기 위해 widget을 명시해주어야 한다.
            style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: widget.id,
                    child: Container(
                        width: 250,
                        clipBehavior: Clip.hardEdge, //자식의 부모 영역 침범을 제어하는 방법
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 15,
                                offset: const Offset(10, 10),
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ]
                        ),
                        child: Image.network(
                          widget.thumb,
                          headers: const {
                            'Referer': 'https://comic.naver.com',
                          },
                        ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              FutureBuilder(
                  future: webtoon,
                  builder: (context, snapshot) {
                    if(snapshot.hasData) {
                      return Column(
                        crossAxisAlignment:  CrossAxisAlignment.start,
                        children: [
                          Text(
                            snapshot.data!.about,
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            '${snapshot.data!.genre} / ${snapshot.data!.age}',
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      );
                    }
                    return const Text("...");
                }
              ),
              const SizedBox(
                height: 25,
              ),
              FutureBuilder(
                  future: episodes,
                  builder: (context, snapshot) {
                    if(snapshot.hasData) {
                      return Column(
                        children: [
                          for(var episode in snapshot.data!)
                            Episode(
                              episode: episode,
                              webtoonId: widget.id
                            ),
                        ],
                      );
                    }
                    return Container();
                  },
              )
            ],
          ),
        ),
      ),
    );
  }
}