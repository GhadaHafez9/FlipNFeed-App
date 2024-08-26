// import 'package:flutter/material.dart';

// class SplashPage extends StatefulWidget {
//   const SplashPage({super.key});

//   @override
//   State<SplashPage> createState() => _SplashPageState();
// }

// class _SplashPageState extends State<SplashPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        body: Container(
//         child: Stack(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 0, left: 10),
//               child: Center(
//                 child: FractionallySizedBox(
//                   widthFactor: 5,
//                   heightFactor: 1,
//                   child: SvgPicture.asset(
//                     'assets/only-logo.svg',
//                     fit: BoxFit.contain,
//                     color: Color(0xFFFFFFFF).withOpacity(0.03),
//                   ),
//                 ),
//               ),
//             ),
//             Align(
//               alignment: Alignment.center,
//               child: Padding(
//                 padding: EdgeInsets.all(0.20),
//                 child: SvgPicture.asset(
//                   'assets/anti-ai logo.svg',
//                   height: 350,
//                   width: 300,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }