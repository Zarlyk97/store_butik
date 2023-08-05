import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Archive extends StatefulWidget {
  const Archive({super.key});

  @override
  State<Archive> createState() => _ArchiveState();
}

class _ArchiveState extends State<Archive> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 12),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xff262A35),
                            ),
                            child: const Icon(
                              Icons.keyboard_arrow_left,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        const Text(
                          "Архив",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text(
                            "Розыгрыш №25",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "В данном розыгрыше \nприсутствуют такие призы как:",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "• Телефон,\n • Телевизор,\n • Iphone ProMax,\n • Утюг,\n • Ароматизатор ",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Divider(
                          color: Colors.black,
                          indent: 7,
                          endIndent: 35,
                        ),
                        const SizedBox(height: 20),
                        const Padding(
                          padding: EdgeInsets.only(right: 235),
                          child: Text(
                            "Победители:",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                              children: <TextSpan>[
                                TextSpan(text: 'Кызбурак выграл(-а)  - '),
                                TextSpan(
                                    text: 'Утюг',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                              children: <TextSpan>[
                                TextSpan(text: 'Медер выграл(-а)   -'),
                                TextSpan(
                                    text: 'Iphone ProMax',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                              children: <TextSpan>[
                                TextSpan(text: 'Айбек выграл(-а)   -'),
                                TextSpan(
                                  text: 'Телевизор',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Center(
                              child: Text(
                                "Розыгрыш №26",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "В данном розыгрыше \nприсутствуют такие призы как:",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                " • Телефон,\n • Телевизор,\n • Iphone ProMax,\n • Утюг,\n • Ароматизатор ",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            Divider(
                              color: Colors.black,
                              indent: 7,
                              endIndent: 35,
                            ),
                            const SizedBox(height: 20),
                            const Padding(
                              padding: EdgeInsets.only(right: 235),
                              child: Text(
                                "Победители:",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                  children: <TextSpan>[
                                    TextSpan(text: 'Кызбурак выграл(-а)  - '),
                                    TextSpan(
                                        text: 'Утюг',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                  children: <TextSpan>[
                                    TextSpan(text: 'Медер выграл(-а)   -'),
                                    TextSpan(
                                        text: 'Iphone ProMax',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                  children: <TextSpan>[
                                    TextSpan(text: 'Айбек выграл(-а)   -'),
                                    TextSpan(
                                      text: 'Телевизор',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  color: Colors.black.withOpacity(.2),
                )
              ],
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.black,
                iconSize: 24,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100]!,
                color: Colors.black,
                tabs: const [
                  GButton(
                    icon: Icons.home_outlined,
                    text: 'menu',
                    textStyle: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  GButton(
                    //icon: LineIcons
                    //       .barcode,
                    icon: Icons.document_scanner, //LineIcons.barcode,
                    text: 'Scan',
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'Search',
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  GButton(
                    icon: Icons.person_outline,
                    text: 'Profile',
                    textStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "LilitaOne-Regular"),
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ));
  }
}
