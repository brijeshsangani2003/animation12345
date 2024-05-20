// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:palette_generator/palette_generator.dart';
//
// class SwipeCard extends StatefulWidget {
//   const SwipeCard({super.key});
//
//   @override
//   State<SwipeCard> createState() => _SwipeCardState();
// }
//
// class _SwipeCardState extends State<SwipeCard> {
//   List images = [
//     'assets/images/c1.jpeg',
//     'assets/images/c2.jpeg',
//     'assets/images/c3.jpeg',
//     'assets/images/c4.jpeg',
//     'assets/images/c5.jpeg',
//     'assets/images/c6.jpeg',
//     'assets/images/c7.jpeg',
//     'assets/images/c8.jpeg'
//   ];
//   int currentIndex = 0;
//
//   //images jevo j color avi jay background ma eni mate paletteGenerator use karvanu.
//   PaletteGenerator? paletteGenerator;
//
//   Color defaultColor = Colors.white;
//   Future<void> getColor() async {
//     paletteGenerator = await PaletteGenerator.fromImageProvider(
//         AssetImage(images[currentIndex]));
//     if (paletteGenerator?.mutedColor != null) {
//       defaultColor = paletteGenerator!.mutedColor!.color;
//     } else if (paletteGenerator?.vibrantColor != null) {
//       defaultColor = paletteGenerator!.vibrantColor!.color;
//     } else if (paletteGenerator?.dominantColor != null) {
//       defaultColor = paletteGenerator!.dominantColor!.color;
//     }
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: defaultColor,
//         title: Text('Swipe Card'),
//         centerTitle: true,
//       ),
//       backgroundColor: defaultColor,
//       body: SafeArea(
//         child: Column(
//           children: [
//             Container(
//               height: 650,
//               child: CardSwiper(
//                 cardsCount: 8,
//                 //x=horizontal  y=vertical
//                 cardBuilder: (context, index, x, y) {
//                   return ClipRRect(
//                     borderRadius: BorderRadius.circular(10),
//                     child: Image.asset(
//                       images[index],
//                       fit: BoxFit.cover,
//                     ),
//                   );
//                 },
//                 //left and right images j swipe thase.
//                 allowedSwipeDirection:
//                     const AllowedSwipeDirection.only(left: true, right: true),
//
//                 //images niche jetla card rakhva hoy aa mate.
//                 numberOfCardsDisplayed: 2,
//
//                 //ek var badha image swipe thai jay pachi pacha swipe karava hoy to true.
//                 //isLoop: false,
//
//                 //by default use
//                 // backCardOffset: Offset(0, 45),
//
//                 //onSwipe bool return karse.
//                 //previousIndex = je card swipe thai gyu hoy aa index male.
//                 //currentIndex = card ji position ma hoy aa index show kare.
//                 //direction = card left thai tai tamre message show karavo hoy to aa thai(condition use karine)
//                 onSwipe: (previous, current, direction) {
//                   //background color mate
//                   currentIndex = current!;
//                   getColor();
//                   if (direction == CardSwiperDirection.left) {
//                     Fluttertoast.showToast(
//                         msg: 'Hii',
//                         textColor: Colors.white,
//                         backgroundColor: Colors.tealAccent,
//                         fontSize: 28);
//                   } else if (direction == CardSwiperDirection.right) {
//                     Fluttertoast.showToast(
//                         msg: 'Hello',
//                         textColor: Colors.white,
//                         backgroundColor: Colors.tealAccent,
//                         fontSize: 28);
//                   }
//                   return true;
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
