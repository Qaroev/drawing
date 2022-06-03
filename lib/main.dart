import 'package:flutter/material.dart';
import 'package:simple_timer/simple_timer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TimerController? _timerController;

  @override
  void initState() {
    super.initState();
    _timerController = TimerController(this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            stops: [0.3, 0.9],
            colors: [Color(0xFF1A71FF), Color(0xFF3152D9)]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: ListView(
            children: [
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 50),
                  const Text(
                    'Сделайте свой выбор',
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    width: 32,
                    height: 32,
                    margin: const EdgeInsets.only(right: 24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Image.asset('assets/image-2.png'),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24, top: 24),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: 180,
                                padding: const EdgeInsets.all(24),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset('assets/image-3.png'),
                                    const SizedBox(height: 15),
                                    const Text(
                                      'Орел',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFCD0938),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -18,
                                left: 10,
                                child: Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 2,
                                      color: Color(0xFFD4E0F2),
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: 180,
                                padding: const EdgeInsets.all(24),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset('assets/image-4.png'),
                                    const SizedBox(height: 15),
                                    const Text(
                                      'Решка',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF0175FF),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -18,
                                left: 10,
                                child: Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 2,
                                      color: Color(0xFFD4E0F2),
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: 72,
                            height: 72,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0XFF52D66F),
                              border: Border.all(
                                width: 2,
                                color: const Color(0xFFD4E0F2),
                              ),
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: SimpleTimer(
                              controller: _timerController,
                              timerStyle: TimerStyle.ring,
                              duration: const Duration(seconds: 10),
                              progressIndicatorColor: Colors.green,
                              progressTextStyle: TextStyle(color:  Colors.white),
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24, top: 24),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Color(0xFF3853E4),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Подтвердить',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFFFFFFFF).withOpacity(0.4),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24, top: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          '6:01 PM',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Image.asset(
                          'assets/image-3.png',
                          width: 61,
                          height: 61,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          '6:02 PM',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Image.asset(
                          'assets/image-3.png',
                          width: 61,
                          height: 61,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          '6:03 PM',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Image.asset(
                          'assets/image-4.png',
                          width: 61,
                          height: 61,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          '6:04 PM',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Image.asset(
                          'assets/image-4.png',
                          width: 61,
                          height: 61,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          '6:05 PM',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Image.asset(
                          'assets/image-4.png',
                          width: 61,
                          height: 61,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                color: const Color(0xFFF9FCFE),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 24.0, right: 24, top: 24),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: const Color(0xFFE5EAF0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              width: 32,
                              height: 32,
                              child: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 18,
                              ),
                            ),
                            const SizedBox(width: 30),
                            const Text(
                              'Детали розыгрыша',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF424D58),
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 24.0, right: 24, top: 24),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFEA32),
                          gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              stops: [0.1, 0.9],
                              colors: [Color(0xFFFFEA32), Color(0xFFA3FFB1)]),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Долгожданая реклама спонсора',
                                    textAlign: TextAlign.start,
                                    maxLines: 2,
                                    style: TextStyle(
                                      color: Color(0xFF1F23B5),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Запланируй свою победу',
                                    style: TextStyle(
                                      color: Color(0xFF33345A),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 128,
                              child: Image.asset(
                                'assets/Succes.png',
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
