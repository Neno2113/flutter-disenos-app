import 'package:flutter/material.dart';



class SquareHeader extends StatelessWidget {
  const SquareHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: const Color(0xff615AAb),
    );
  }
}



class CiruclarBorderHeader extends StatelessWidget {
  const CiruclarBorderHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        color: Color(0xff615AAb),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70)
        )
      ),
    );
  }
}



class DiagonalHeader extends StatelessWidget {
  const DiagonalHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: const Color(0xff615AAb),
      child: CustomPaint(
        painter: _DiagonalHeaderPainter(),
      ),
    );
  }
}


class _DiagonalHeaderPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint();

    //propiertiess
    paint.color = const Color(0xff615AAb);
    // paint.style = PaintingStyle.stroke; //stroke or fill
    paint.style = PaintingStyle.fill; //stroke or fill
    paint.strokeWidth = 2;

    final path = Path();

    //Painting now
    path.moveTo(0, size.height * 0.35);
    path.lineTo( size.width, size.height * 0.25);
    path.lineTo( size.width, 0);
    path.lineTo( 0, 0);
    // path.lineTo( 0, size.height * 0.5);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}


class TrinagularHeader extends StatelessWidget {
  const TrinagularHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: const Color(0xff615AAb),
      child: CustomPaint(
        painter: _TriangularHeaderPainter(),
      ),
    );
  }
}


class _TriangularHeaderPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint();

    //propiertiess
    paint.color = const Color(0xff615AAb);
    // paint.style = PaintingStyle.stroke; //stroke or fill
    paint.style = PaintingStyle.fill; //stroke or fill
    paint.strokeWidth = 2;

    final path = Path();

    //Painting now
    path.lineTo(0, 0);
    // path.moveTo(0, size.height * 0.50);
    path.lineTo( size.width, size.height);
    path.lineTo( 0, size.height);
    // path.lineTo( 0, 0);
    // path.lineTo( 0, size.height * 0.5);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}