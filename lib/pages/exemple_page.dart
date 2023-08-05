// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:pris_store/pages/button_page.dart';

// class ExemplePage extends StatefulWidget {
//   const ExemplePage({super.key});

//   @override
//   State<ExemplePage> createState() => _ExemplePageState();
// }

// class _ExemplePageState extends State<ExemplePage> {
//   List<bool> isFirstcliced = List.generate(30, (index) => false);
//   int counterClick = 0;
//   List<bool> isPrisHave = List.generate(30, (index) => false);
//   List<String> pris = [
//     'Телефон',
//     "Телевизор",
//     "Утюг",
//     "Ароматизатор",
//     "Зарядка Type-C",
//   ];

//   int _selectedIndex = 0;
//   @override
//   void initState() {
//     super.initState();
//     print(isFirstcliced);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 25),
//               child: Container(
//                 height: 40,
//                 width: 40,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                   color: const Color(0xff262A35),
//                 ),
//                 child: const Icon(
//                   Icons.keyboard_arrow_left,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 15, right: 15),
//                 child: GridView.builder(
//                   scrollDirection: Axis.vertical,
//                   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//                     maxCrossAxisExtent: 70,
//                     crossAxisSpacing: 10,
//                     mainAxisSpacing: 10,
//                   ),
//                   itemCount: 30,
//                   itemBuilder: (BuildContext ctx, index) {
//                     return InkWell(
//                       onTap: () {
//                         if (counterClick < 3) {
//                           if (isFirstcliced[index] == false) {}
//                           counterClick++;
//                           isFirstcliced[index] = true;

//                           setState(() {});
//                           if (Random().nextInt(30) == index) {
//                             _dialogBuilders(context);

//                             isPrisHave[index] = true;
//                             setState(() {});
//                           } else {
//                             _dialogBuilder(context);
//                           }
//                         } else {
//                           _dialogBuilderukta(context);
//                         }
//                       },
//                       child: Container(
//                         alignment: Alignment.center,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(15)),
//                         child: isFirstcliced[index] == true
//                             ? isPrisHave[index] == false
//                                 ? Image.asset(
//                                     "assets/images/empty.png",
//                                     width: 60,
//                                     height: 60,
//                                   )
//                                 : Image.asset("assets/images/prize.png")
//                             : SizedBox(
//                                 height: 60,
//                                 width: 60,
//                                 child: Stack(
//                                   children: [
//                                     Image.asset("assets/images/box.png"),
//                                     Column(
//                                       children: [
//                                         const SizedBox(
//                                           height: 25,
//                                         ),
//                                         Center(
//                                             child: Text(
//                                           "${index + 1}",
//                                           style: const TextStyle(
//                                               color: Colors.white),
//                                         )),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//             const ButtonPage(),
//             const SizedBox(
//               height: 30,
//             )
//           ]),
//         ),
//         bottomNavigationBar: Padding(
//           padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(50),
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   blurRadius: 15,
//                   color: Colors.black.withOpacity(.2),
//                 )
//               ],
//             ),
//             child: Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
//               child: GNav(
//                 rippleColor: Colors.grey[300]!,
//                 hoverColor: Colors.grey[100]!,
//                 gap: 8,
//                 activeColor: Colors.black,
//                 iconSize: 24,
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//                 duration: const Duration(milliseconds: 400),
//                 tabBackgroundColor: Colors.grey[100]!,
//                 color: Colors.black,
//                 tabs: const [
//                   GButton(
//                     icon: Icons.home_outlined,
//                     text: 'menu',
//                     textStyle: TextStyle(
//                       fontSize: 19,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   GButton(
//                     //icon: LineIcons
//                     //       .barcode,
//                     icon: Icons.document_scanner, //LineIcons.barcode,
//                     text: 'Scan',
//                     textStyle: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   GButton(
//                     icon: Icons.search,
//                     text: 'Search',
//                     textStyle: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   GButton(
//                     icon: Icons.person_outline,
//                     text: 'Profile',
//                     textStyle: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                         fontFamily: "LilitaOne-Regular"),
//                   ),
//                 ],
//                 selectedIndex: _selectedIndex,
//                 onTabChange: (index) {
//                   setState(() {
//                     _selectedIndex = index;
//                   });
//                 },
//               ),
//             ),
//           ),
//         ));
//   }

//   Future<void> _dialogBuilder(BuildContext context) {
//     return showDialog<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//             backgroundColor: Color(0xff262A35),
//             shape: const RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(5))),
//             content: SizedBox(
//               height: 287,
//               width: 289,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     'Пусто :(',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                       fontFamily: 'Gilroy',
//                       fontWeight: FontWeight.w700,
//                       letterSpacing: -0.30,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   const Text(
//                     'Извините, Вам попался пустой \nящик, в следующий раз повезет!',
//                     style: TextStyle(
//                         fontSize: 14,
//                         color: Colors.white,
//                         fontWeight: FontWeight.w500),
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   Center(
//                     child: Image.asset(
//                       'assets/images/empty.png',
//                       height: 60,
//                       width: 60,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   Center(
//                     child: InkWell(
//                       onTap: () {
//                         setState(() {});
//                       },
//                       child: Container(
//                         child: Center(
//                           child: Text(
//                             "В другой раз",
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         ),
//                         width: 161,
//                         height: 39,
//                         decoration: ShapeDecoration(
//                           color: const Color(0xFF333333),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(5)),
//                           shadows: const [
//                             BoxShadow(
//                               color: Color(0x661564FF),
//                               blurRadius: 12,
//                               offset: Offset(0, 0),
//                               spreadRadius: 4,
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ));
//       },
//     );
//   }

//   Future<void> _dialogBuilders(BuildContext context) {
//     return showDialog<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//             backgroundColor: Color(0xff262A35),
//             shape: const RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(5))),
//             content: SizedBox(
//               height: 287,
//               width: 289,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   const Text(
//                     'Поздравляем!',
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.w700,
//                         color: Colors.white),
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   Text(
//                     'Вы выиграли “${pris[Random().nextInt(1) + 1]}”',
//                     style: const TextStyle(
//                         fontSize: 14,
//                         color: Colors.white,
//                         fontWeight: FontWeight.w500),
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   Center(
//                     child: Image.asset(
//                       'assets/images/prize.png',
//                       height: 60,
//                       width: 60,
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 15,
//                   ),
//                   Center(
//                     child: InkWell(
//                       onTap: () {
//                         setState(() {});
//                       },
//                       child: Container(
//                         child: Center(
//                           child: Text(
//                             "Забрать приз",
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         ),
//                         width: 161,
//                         height: 39,
//                         decoration: ShapeDecoration(
//                           color: const Color(0xFF333333),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(5)),
//                           shadows: const [
//                             BoxShadow(
//                               color: Color(0x661564FF),
//                               blurRadius: 12,
//                               offset: Offset(0, 0),
//                               spreadRadius: 4,
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ));
//       },
//     );
//   }

//   Future<void> _dialogBuilderukta(BuildContext context) {
//     return showDialog<void>(
//         context: context,
//         builder: (BuildContext context) {
//           return const AlertDialog(
//             backgroundColor: Color(0xff262A35),
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(5))),
//             title: Text(
//               'Вы не можете больше выбрать',
//               style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.w700,
//                   color: Colors.white),
//               textAlign: TextAlign.center,
//             ),
//           );
//         });
//   }
// }
