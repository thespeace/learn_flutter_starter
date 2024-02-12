import 'package:flutter/material.dart';
import 'package:learn_flutter_starter/webtoon/screens/webtoon_detail_screen.dart';

class WebtoonWidget extends StatelessWidget {

  final String title, thumb, id;

  const WebtoonWidget({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(//대부분의 동작을 감지하는 위젯.
      onTap: () {
        Navigator.push( //Navigator로 스크린 전환, 새 route를 push. 애니메이션 효과를 이용해서 사용자가 다른 페이지로 왔다고 느낄수 있게 해준다.
            context,
            MaterialPageRoute(
              builder: (context) => WebtoonDetailScreen( //StatelessWidget을 route로 감싸서 랜더링해준다.
                  title: title,
                  thumb: thumb,
                  id: id
              ),
              fullscreenDialog: true,
            ),
        );
      },
      child: Column(
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
                thumb,
                headers: const {
                  'Referer': 'https://comic.naver.com',
                },
              )
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
