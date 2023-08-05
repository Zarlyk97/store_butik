import 'dart:math';

import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  List<String> pris = [
    'Телефон',
    "Телевизор",
    "Утюг",
    "Ароматизатор",
    "Зарядка Type-C",
  ];

  List<bool> isFirstClicked = List.generate(30, (index) => false);
  int counterClick = 0;
  List<bool> isPrizeHave = List.generate(30, (index) => false);

  @override
  void initState() {
    super.initState();
    print(isFirstClicked.toList());
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 70,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: 30,
          itemBuilder: (BuildContext ctx, index) {
            return InkWell(
              onTap: () {
                if (counterClick < 3) {
                  if (isFirstClicked[index] == false) {
                    counterClick++;
                    isFirstClicked[index] = true;

                    setState(() {});

                    if (Random().nextInt(30) == index) {
                      _dialogBuilders(context);
                      // print(pris[Random().nextInt(1) + 1]);
                      isPrizeHave[index] = true;
                      setState(() {});
                    } else {
                      _dialogBuilder(context);
                    }
                  }
                } else {
                  _dialogBuilderukta(context);
                  print("Ukta");
                }
              },
              child: Container(
                  alignment: Alignment.center,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: isFirstClicked[index] == true
                      ? isPrizeHave[index] == false
                          ? Image.asset(
                              "assets/images/empty.png",
                              width: 60,
                              height: 60,
                            )
                          : Image.asset(
                              "assets/images/prize.png",
                              width: 60,
                              height: 60,
                            )
                      : SizedBox(
                          width: 60,
                          height: 60,
                          child: Stack(
                            children: [
                              Image.asset("assets/images/box.png"),
                              Center(
                                child: Column(
                                  children: [
                                    const SizedBox(height: 25),
                                    Text(
                                      "${index + 1}",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
            );
          },
        ),
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            backgroundColor: Color(0xff262A35),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            content: SizedBox(
              height: 287,
              width: 289,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Пусто :(',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.30,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Извините, Вам попался пустой \nящик, в следующий раз повезет!',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/empty.png',
                      height: 60,
                      width: 60,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        setState(() {});
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            "В другой раз",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        width: 161,
                        height: 39,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF333333),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x661564FF),
                              blurRadius: 12,
                              offset: Offset(0, 0),
                              spreadRadius: 4,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ));
      },
    );
  }

  Future<void> _dialogBuilders(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            backgroundColor: Color(0xff262A35),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            content: SizedBox(
              height: 287,
              width: 289,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Поздравляем!',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Вы выиграли “${pris[Random().nextInt(1) + 1]}”',
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/prize.png',
                      height: 60,
                      width: 60,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        setState(() {});
                      },
                      child: Container(
                        child: Center(
                          child: Text(
                            "Забрать приз",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        width: 161,
                        height: 39,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF333333),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x661564FF),
                              blurRadius: 12,
                              offset: Offset(0, 0),
                              spreadRadius: 4,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ));
      },
    );
  }

  Future<void> _dialogBuilderukta(BuildContext context) {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
            backgroundColor: Color(0xff262A35),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            title: Text(
              'Вы не можете больше выбрать',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
