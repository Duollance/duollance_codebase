import 'package:flutter/material.dart';

class GenericBg2 extends StatefulWidget {
  const GenericBg2({super.key});

  @override
  State<GenericBg2> createState() => _GenericBg2State();
}

class _GenericBg2State extends State<GenericBg2> {
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
      ..moveTo(-15.0789, 211.228)
      ..cubicTo(-53.5982, 208.03, -92.4094, 239.218, -107, 255.212)
      ..lineTo(-107, 837)
      ..lineTo(392, 837)
      ..lineTo(392, 265.209)
      ..lineTo(317.588, 265.209)
      ..cubicTo(262.873, 265.209, 277.395, 257.995, 238, 244)
      ..cubicTo(198.605, 230.005, 158.768, 255.212, 116, 255.212)
      ..cubicTo(70.5746, 255.212, 33.0702, 215.227, -15.0789, 211.228)
      ..close();
    canvas.drawPath(whitePath, whitePaint);

    // Draw blue shapes with even-odd fill rule
    final bluePaint = Paint()..color = const Color(0xFF7091FF);

    // First blue shape (small circle-like)
    final bluePath1 = Path()
      ..fillType = PathFillType.evenOdd
      ..moveTo(175.053, 10.2628)
      ..cubicTo(179.103, 5.79743, 186.008, 6.9469, 191.399, 9.64317)
      ..cubicTo(196.346, 12.1169, 200.051, 16.9134, 199.314, 22.3949)
      ..cubicTo(198.59, 27.7735, 193.721, 31.3899, 188.36, 32.2377)
      ..cubicTo(183.504, 33.0057, 179.119, 30.1973, 176.572, 25.9918)
      ..cubicTo(173.555, 21.0105, 171.141, 14.5764, 175.053, 10.2628)
      ..close();
    canvas.drawPath(bluePath1, bluePaint);

    // Second blue shape (complex cloud-like)
    final bluePath2 = Path()
      ..fillType = PathFillType.evenOdd
      ..moveTo(369.631, 168.576)
      ..cubicTo(376.8, 172.841, 383.69, 178.384, 385.73, 186.472)
      ..cubicTo(387.713, 194.332, 384.05, 202.178, 379.858, 209.116)
      ..cubicTo(375.899, 215.669, 369.948, 219.981, 363.246, 223.682)
      ..cubicTo(353.686, 228.963, 343.985, 238.258, 333.687, 234.619)
      ..cubicTo(322.996, 230.841, 316.249, 218.361, 316.101, 207.023)
      ..cubicTo(315.972, 197.018, 327.575, 192.019, 333.025, 183.628)
      ..cubicTo(337.651, 176.506, 337.282, 165.551, 345.136, 162.322)
      ..cubicTo(353.238, 158.99, 362.102, 164.097, 369.631, 168.576)
      ..close();
    canvas.drawPath(bluePath2, bluePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
