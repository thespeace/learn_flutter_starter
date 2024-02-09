import 'package:flutter/material.dart';
import 'package:learn_flutter_starter/widgets/button.dart';
import 'package:learn_flutter_starter/widgets/currency_card.dart';

/// -Widget
///  import된 runApp Func은 void 함수로 아무것도 반환 하지 않지만 하나의 argument인 `Widget` 타입이 필요하다.
///  flutter은 모든 것은 위젯이다. 레고 블록처럼 위젯에 위젯을 쌓아가며 앱을 만드는 것.
///  Widget은 공식 Widget부터 커뮤니티 Widget까지 수백개의 엄청나게 많은 Widget들이 존재하는데 외울수가 없고 찾아보며 사용하자. https://docs.flutter.dev/development/ui/widgets
///  필요할 때마다 찾아서 사용하면 된다.
///  Widget은 flutter 관점에서는 레고블럭, 프로그래밍 관점에서는 class.
///
///  +참고
///   몇몇의 widget은 const를 붙여서 런타임 대신 컴파일러가 컴파일 하는 중에 값을 산정할 수 있게 해서 최적화를 할 수 있다.

class Player {
  String? name;

  Player({required this.name});
}

void main() {//dart 시작점(main Func)
  // var thespeace = Player();
  // runApp(NoDataApp()); //Stateless
  runApp(DataApp());
}

class NoDataApp extends StatelessWidget{//일반 클래스인 App()을 Widget으로 만들기 위해서는 flutter SDK에 있는 3개의 core Widget중에 하나를 상속받아야 한다.
                                  //가장 기초적이고 쉬운 StatelessWidget을 사용하여 App Widget을 우리 앱의 root로 만들었다.
  @override
  Widget build(BuildContext context) { //해당 메서드는 flutter가 실행하고 무엇을 return하던 그걸 화면에 띄워준다.
    return MaterialApp( //root Widget은 두 개의 옵션 중 하나의 디자인 시스템(family style)을 return해야 한다.
                        //1.material(구글) 2.cupertino(애플), flutter은 구글이 만들었기 때문에 material 스타일이 더 좋다.
      home : Scaffold( //MaterialApp class의 수 많은 member 중의 하나의 property인 Scaffold(구조)는 필수적이다.
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.
              start,
              children: [
                const SizedBox( //사이즈가 있는 박스를 생성하는 widget.
                  height: 80,
                ),
                Row( //요소들을 옆에 두려면 Row.
                  mainAxisAlignment: MainAxisAlignment. //row의 mainAxis : 수평(가로)방향 <-> crossAxis : 수직(세로)방향
                  end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment. //column의 mainAxis : 수직(세로)방향  <-> CrossAxis : 수평(가로)방향
                      end,
                      children: [
                        const Text(
                          'Hey, Thespeace',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcom back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ) //요소들을 서로 위 아래에 놓으려면 Column.
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '\$5 194 582',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                        text: 'Transfer',
                        bgColor: Color(0xFFF1B33B),
                        textColor: Colors.black,
                    ),
                    Button(
                        text: 'Request',
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18,
                    ),
                  ),
                ],),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                    name: 'Euro',
                    code: 'EUR',
                    amount: '6 428',
                    icon: Icons.euro_rounded,
                    isInverted: false,
                    order: 1,
                ),
                const CurrencyCard(
                    name: 'Dollar',
                    code: 'USD',
                    amount: '55 622',
                    icon: Icons.attach_money_outlined,
                    isInverted: true,
                    order: 1,
                ),
                const CurrencyCard(
                    name: 'Rupee',
                    code: 'INR',
                    amount: '28 981',
                    icon: Icons.currency_rupee,
                    isInverted: false,
                    order: 2,
                  ),
              ],
            ),
          ),
        )
      ),
    );
  }
}

class DataApp extends StatefulWidget {//StatefulWidget의 첫 번째 부문은 위젯 그 자체.
  const DataApp({super.key});

  @override
  State<DataApp> createState() => _DataAppState();
}

class _DataAppState extends State<DataApp> {//StatefulWidget의 두 번째 부문인 State는 위젯의 데이터(Dart's Class Properties)와 UI를 저장한다.

  int counter = 0;

  void onClicked(){
    counter++;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Click Count',
                style:
                TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                  '$counter',
                  style:
                  const TextStyle(
                  fontSize: 30,
                ),
              ),
              IconButton(
                  iconSize: 40,
                  onPressed: onClicked,
                  icon: const Icon(Icons.add_box_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

