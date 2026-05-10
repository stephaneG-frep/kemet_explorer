import 'package:flutter/material.dart';

class HomeCategoryCard extends StatelessWidget {
  const HomeCategoryCard({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    required this.color,
    this.gradientColors,
    this.borderRadius = const BorderRadius.all(Radius.circular(18)),
    this.lemonShape = false,
  });

  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final Color color;
  final List<Color>? gradientColors;
  final BorderRadius borderRadius;
  final bool lemonShape;

  @override
  Widget build(BuildContext context) {
    final gradients =
        gradientColors ??
        [color.withValues(alpha: 0.92), color.withValues(alpha: 0.66)];

    final cardContent = LayoutBuilder(
      builder: (context, constraints) {
        final compact = constraints.maxHeight < 118;
        final ultraCompact = constraints.maxHeight < 102;
        final iconRadius = compact ? 16.0 : 22.0;
        final gap = compact ? 6.0 : 10.0;
        final textPaddingV = compact ? 4.0 : 6.0;
        final textMaxLines = ultraCompact ? 1 : (compact ? 1 : 2);
        return Stack(
          children: [
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: lemonShape ? null : borderRadius,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withValues(alpha: 0.08),
                      Colors.black.withValues(alpha: 0.24),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: -34,
              right: -24,
              child: Container(
                width: 118,
                height: 118,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      Colors.white.withValues(alpha: 0.28),
                      Colors.white.withValues(alpha: 0.02),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -30,
              left: -18,
              child: Container(
                width: 84,
                height: 84,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black.withValues(alpha: 0.09),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(compact ? 6 : 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (!ultraCompact) ...[
                    CircleAvatar(
                      radius: iconRadius,
                      backgroundColor: Colors.white.withValues(alpha: 0.22),
                      child: Icon(icon, color: Colors.white),
                    ),
                    SizedBox(height: gap),
                  ],
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: compact ? 6 : 8,
                      vertical: textPaddingV,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.34),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        maxLines: textMaxLines,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: compact ? 13 : null,
                              height: 1.15,
                              shadows: const [
                                Shadow(
                                  color: Color(0xAA000000),
                                  blurRadius: 8,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );

    final baseDecoration = BoxDecoration(
      borderRadius: lemonShape ? null : borderRadius,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          gradients.first,
          Color.lerp(gradients.first, gradients.last, 0.45)!,
          gradients.last,
        ],
        stops: const [0.05, 0.52, 1.0],
      ),
      boxShadow: [
        BoxShadow(
          color: color.withValues(alpha: 0.22),
          blurRadius: 14,
          offset: const Offset(0, 8),
        ),
      ],
    );

    if (lemonShape) {
      return GestureDetector(
        onTap: onTap,
        child: ClipPath(
          clipper: _LemonClipper(),
          child: DecoratedBox(decoration: baseDecoration, child: cardContent),
        ),
      );
    }

    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        gradient: baseDecoration.gradient,
        boxShadow: baseDecoration.boxShadow,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: borderRadius,
          onTap: onTap,
          child: cardContent,
        ),
      ),
    );
  }
}

class _LemonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final w = size.width;
    final h = size.height;
    final midY = h / 2;
    final pinch = h * 0.16;
    final curve = w * 0.10;

    final path = Path()
      ..moveTo(curve, 0)
      ..quadraticBezierTo(w * 0.5, pinch, w - curve, 0)
      ..quadraticBezierTo(w - curve * 0.45, midY, w - curve, h)
      ..quadraticBezierTo(w * 0.5, h - pinch, curve, h)
      ..quadraticBezierTo(curve * 0.45, midY, curve, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
