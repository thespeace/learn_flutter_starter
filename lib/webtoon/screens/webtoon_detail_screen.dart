import 'package:flutter/material.dart';

class WebtoonDetailScreen extends StatelessWidget {

  final String title, thumb, id;

  const WebtoonDetailScreen({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: Text(
            title,
            style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
            ],
          ),
        ],
      ),
    );
  }
}
