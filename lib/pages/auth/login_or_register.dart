// import 'package:chat_with_friends/pages/auth/login_page.dart';
// import 'package:chat_with_friends/pages/auth/register_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';

// class Navigations extends StatefulWidget {
//   const Navigations({super.key});

//   @override
//   State<Navigations> createState() => _NavigationsState();
// }

// class _NavigationsState extends State<Navigations>
//     with SingleTickerProviderStateMixin {
//   @override
//   Ticker createTicker(TickerCallback onTick) {
//     return Ticker(onTick);
//   }

//   final Duration duration = const Duration(seconds: 1);
//   late final AnimationController controller;
//   late final animation = CurvedAnimation(
//     parent: controller,
//     curve: Curves.fastLinearToSlowEaseIn,
//   );
//   late final Animation<Offset> _loginAnimation;
//   late final Animation<Offset> _registerAnimation;

//   onInIt() {
//     super.initState();
//     controller = AnimationController(
//       vsync: this,
//       duration: duration,
//     );
//     _loginAnimation = Tween<Offset>(
//       begin: Offset.zero,
//       end: const Offset(-1.0, 0.0),
//     ).animate(animation);
//     _registerAnimation = Tween<Offset>(
//       begin: Offset.zero,
//       end: const Offset(-1.0, 0.0),
//     ).animate(animation);
//   }

//   animate() {
//     if (_loginAnimation.status != AnimationStatus.completed) {
//       controller.forward();
//     } else {
//       controller.animateBack(0, duration: duration);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           SlideTransition(
//             position: _loginAnimation,
//             child: LoginPage(),
//           ),
//           SlideTransition(
//               position: _registerAnimation,
//               child: RegisterPage()),
//         ],
//       ),
//     );
//   }
// }
