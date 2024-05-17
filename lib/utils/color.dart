

import 'package:flutter/material.dart';

Color primaryColor = const Color(0xFF8B88EF);
Color primaryDilutedColor = const Color(0xFFCCC8FF);
Color primaryWhiteLight = const Color(0xFFCBC9FF);


Color secondaryColor = const Color(0xFF232A2E);


Color iconColor = const Color(0xFF6F6E7C);

Color unselectedTextColor = const Color(0xFFC3C3C9);




Color light = const Color(0xFFFFFFFF);
Color dark = const Color(0xFF000000);

BoxShadow boxShadow1 = BoxShadow(
  color: Colors.black.withOpacity(0.3), // #0000004D
  offset: const Offset(-1, -1), // -1px -1px
  blurRadius: 2, // 2px
);

BoxShadow boxShadow2 = BoxShadow(
  color: Colors.black.withOpacity(0.3), // #0000004D
  offset: const Offset(1, 1), // 1px 1px
  blurRadius: 2, // 2px
);

BoxShadow boxShadow3 = BoxShadow(
  color: Colors.black.withOpacity(0.3), // #0000004D
  offset: const Offset(2, 2), // 0px 0px
  blurRadius: 2, // 2px
);


/// Gradient


// Linear Gradient
final linearGradient1 = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Colors.black.withOpacity(0),
    Colors.black.withOpacity(0.28),
    Colors.black.withOpacity(0.64),
    Colors.black.withOpacity(0.8),
    Colors.black,
  ],
  stops: const [
    0.4397,
    0.486,
    0.5252,
    0.5514,
    0.5694,
  ],
);

// Radial Gradient
final radialGradient = RadialGradient(
  center: const Alignment(0.5013, -0.1872),
  radius: 0.7467,
  colors: [
    Colors.black.withOpacity(0.045),
    Colors.black.withOpacity(0.107193),
    Colors.black.withOpacity(0.135),
    Colors.black.withOpacity(0.195),
    Colors.black.withOpacity(0.24),
  ],
  stops: const [
    0,
    0.6328,
    0.7566,
    0.8844,
    1,
  ],
);

// Linear Gradient
final linearGradient2 = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Colors.black.withOpacity(0.4),
    Colors.black.withOpacity(0.123359),
    Colors.black.withOpacity(0),
  ],
  stops: const [
    0,
    0.14,
    0.234,
  ],
);