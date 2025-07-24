import 'package:flutter/material.dart';

class GenericBg extends StatefulWidget {
  const GenericBg({super.key});

  @override
  State<GenericBg> createState() => _GenericBgState();
}

class _GenericBgState extends State<GenericBg> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return CustomPaint(
          painter: SVGPainter(),
          size: Size(constraints.maxWidth, constraints.maxHeight),
        );
      },
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'SVG Reproduction',
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: LayoutBuilder(
//           builder: (context, constraints) {
//             return CustomPaint(
//               painter: SVGPainter(),
//               size: Size(constraints.maxWidth, constraints.maxHeight),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

class SVGPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Scale to maintain original SVG aspect ratio
    final double scaleX = size.width / 375;
    final double scaleY = size.height / 812;
    canvas.scale(scaleX, scaleY);

    // Draw blue background
    final backgroundPaint = Paint()..color = const Color(0xFF1749EB);
    canvas.drawRect(Rect.fromLTWH(0, 0, 375, 812), backgroundPaint);

    // Draw white main shape
    final whitePaint = Paint()..color = Colors.white;
    final whitePath = Path()
      ..moveTo(68.9211, 213.228)
      ..cubicTo(30.4018, 210.03, -8.40936, 241.218, -23, 257.212)
      ..lineTo(-23, 839)
      ..lineTo(476, 839)
      ..lineTo(476, 267.209)
      ..lineTo(401.588, 267.209)
      ..cubicTo(346.873, 267.209, 361.395, 259.995, 322, 246)
      ..cubicTo(282.605, 232.005, 242.768, 257.212, 200, 257.212)
      ..cubicTo(154.575, 257.212, 117.07, 217.227, 68.9211, 213.228)
      ..close();
    canvas.drawPath(whitePath, whitePaint);

    // Draw blue shapes
    final bluePaint = Paint()..color = const Color(0xFF7091FF);

    // First blue shape
    final bluePath1 = Path()
      ..moveTo(228.159, 183.011)
      ..cubicTo(241.354, 183.249, 254.74, 189.094, 258.721, 201.676)
      ..cubicTo(262.625, 214.021, 254.821, 226.283, 244.18, 233.658)
      ..cubicTo(234.339, 240.478, 221.687, 240.863, 211.697, 234.264)
      ..cubicTo(199.977, 226.521, 189.701, 213.881, 193.997, 200.507)
      ..cubicTo(198.322, 187.04, 214.016, 182.755, 228.159, 183.011)
      ..close();
    canvas.drawPath(bluePath1, bluePaint);

    // Second blue shape
    final bluePath2 = Path()
      ..moveTo(320.549, 26.9995)
      ..cubicTo(327.641, 30.7155, 328.47, 39.9715, 326.806, 47.7989)
      ..cubicTo(325.279, 54.9803, 320.352, 61.3401, 313.06, 62.2197)
      ..cubicTo(305.905, 63.0828, 299.63, 58.0303, 296.75, 51.4246)
      ..cubicTo(294.141, 45.4403, 296.285, 38.8683, 300.84, 34.194)
      ..cubicTo(306.235, 28.6573, 313.698, 23.4099, 320.549, 26.9995)
      ..close();
    canvas.drawPath(bluePath2, bluePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
