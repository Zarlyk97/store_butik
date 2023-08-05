import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pris_store/models/model.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
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
                      width: 60,
                    ),
                    const Text(
                      tPozygrush,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  tJeans,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    tPhone,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    tTv,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    tUt,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    tAroma,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    tTypeC,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Divider(
                  color: Colors.black,
                  indent: 5,
                  endIndent: 30,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Победители:",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                // ignore: avoid_unnecessary_containers
                Align(
                  alignment: Alignment.bottomLeft,
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                      children: <TextSpan>[
                        TextSpan(text: 'Андрей выграл(-а)'),
                        TextSpan(
                            text: 'Утюг',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
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
                        TextSpan(text: 'Ербол выграл(-а)'),
                        TextSpan(
                            text: 'Телевизор',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
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
                        TextSpan(text: 'Ольга выграл(-а)'),
                        TextSpan(
                            text: 'Ароматизатор',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ],
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
