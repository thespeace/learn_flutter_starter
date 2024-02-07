import 'package:flutter/material.dart';

/// -Widget
///  import된 runApp Func은 void 함수로 아무것도 반환 하지 않지만 하나의 argument인 `Widget` 타입이 필요하다.
///  flutter은 모든 것은 위젯이다. 레고 블록처럼 위젯에 위젯을 쌓아가며 앱을 만드는 것.
///  Widget은 공식 Widget부터 커뮤니티 Widget까지 수백개의 엄청나게 많은 Widget들이 존재하는데 외울수가 없고 찾아보며 사용하자. https://docs.flutter.dev/development/ui/widgets
///  필요할 때마다 찾아서 사용하면 된다.
///  Widget은 flutter 관점에서는 레고블럭, 프로그래밍 관점에서는 class.

class Player {
  String? name;

  Player({required this.name});
}

void main() {//dart 시작점(main Func)
  // var thespeace = Player();
  runApp(App());
}

class App extends StatelessWidget{//일반 클래스인 App()을 Widget으로 만들기 위해서는 flutter SDK에 있는 3개의 core Widget중에 하나를 상속받아야 한다.
                                  //가장 기초적이고 쉬운 StatelessWidget을 사용하여 App Widget을 우리 앱의 root로 만들었다.
  @override
  Widget build(BuildContext context) { //해당 메서드는 flutter가 실행하고 무엇을 return하던 그걸 화면에 띄워준다.
    return MaterialApp( //root Widget은 두 개의 옵션 중 하나의 디자인 시스템(family style)을 return해야 한다.
                        //1.material(구글) 2.cupertino(애플), flutter은 구글이 만들었기 때문에 material 스타일이 더 좋다.
      home : Scaffold( //MaterialApp class의 수 많은 member 중의 하나의 property인 Scaffold(구조)는 필수적이다.
        backgroundColor: Color(0xFF181818),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal:
          40),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.
                end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.
                    end,
                    children: [
                      Text(
                        'Hey, Thespeace',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text('Welcom back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ),
    );
  }

}
