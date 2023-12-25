import 'package:flutter/material.dart';

/// Custom painter for drawing a ticket shape.
class TicketPainter extends CustomPainter {
  /// Color of the ticket's border.
  final Color borderColor;

  /// Color of the ticket's background.
  final Color bgColor;

  /// Gap at the corners of the ticket.
  static const double _cornerGap = 20.0;

  /// Radius of the cutout for the ticket.
  static const double _cutoutRadius = 20.0;

  /// Diameter of the cutout for the ticket.
  static const double _cutoutDiameter = _cutoutRadius * 2;

  /// Creates a [TicketPainter] with the specified colors.
  TicketPainter({required this.bgColor, required this.borderColor});

  /// Paints the ticket on the canvas.
  @override
  void paint(Canvas canvas, Size size) {
    final maxWidth = size.width;
    final maxHeight = size.height;

    final cutoutStartPos = maxHeight - maxHeight * 0.4;
    final leftCutoutStartY = cutoutStartPos;
    final rightCutoutStartY = cutoutStartPos - _cutoutDiameter;

    final paintBg = Paint()
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..color = bgColor;

    final paintBorder = Paint()
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..color = borderColor;

    var path = Path();

    path.moveTo(_cornerGap, 0);
    path.lineTo(maxWidth - _cornerGap, 0);
    _drawCornerArc(path, maxWidth, _cornerGap);
    path.lineTo(maxWidth, rightCutoutStartY);
    _drawCutout(path, maxWidth, rightCutoutStartY + _cutoutDiameter);
    path.lineTo(maxWidth, maxHeight - _cornerGap);
    _drawCornerArc(path, maxWidth - _cornerGap, maxHeight);
    path.lineTo(_cornerGap, maxHeight);
    _drawCornerArc(path, 0, maxHeight - _cornerGap);
    path.lineTo(0, leftCutoutStartY);
    _drawCutout(path, 0.0, leftCutoutStartY - _cutoutDiameter);
    path.lineTo(0, _cornerGap);
    _drawCornerArc(path, _cornerGap, 0);

    canvas.drawPath(path, paintBg);
    canvas.drawPath(path, paintBorder);
  }

  /// Draws the cutout in the ticket shape.
  void _drawCutout(Path path, double startX, double endY) {
    path.arcToPoint(
      Offset(startX, endY),
      radius: const Radius.circular(_cutoutRadius),
      clockwise: false,
    );
  }

  /// Draws the corner arc in the ticket shape.
  void _drawCornerArc(Path path, double endPointX, double endPointY) {
    path.arcToPoint(
      Offset(endPointX, endPointY),
      radius: const Radius.circular(_cornerGap),
    );
  }

  /// Returns true if this painter should repaint.
  @override
  bool shouldRepaint(TicketPainter oldDelegate) => false;

  /// Returns true if the semantics of the old and new painters should be considered.
  @override
  bool shouldRebuildSemantics(TicketPainter oldDelegate) => false;
}
