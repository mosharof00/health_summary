import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../gen/colors.gen.dart';

LinearGradient appLinearGradient() {
  return const LinearGradient(
    // begin: Alignment(0.00, -1.00),
    // end: Alignment(0, 1),
     colors: [ColorName.gradientStart, ColorName.gradientEnd],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  //  colors: [Color(0xff0952bf), Color(0xff03a1d8), Color(0xff0916bf)],
  );
}

LinearGradient appSecondLinearGradient() {
  return const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xff8d60f7), Color(0xff6855f4)],
  );
}

LinearGradient appBlueGradient() {
  return const LinearGradient(
    colors: [
      Color(0xFF023e8a),
      Color(0xFF0077b6),
      Color(0xFF0096c7),
      Color(0xFF00b4d8),
    ],
  );
}

LinearGradient appVioletGradient() {
  return const LinearGradient(
    // begin:  Alignment(-0.68, 0.73),
    // end:  Alignment(0.68, -0.73),
    colors: [
      Color(0xFF3c096c),
      Color(0xFF5a189a),
      Color(0xFF7b2cbf),
      Color(0xFF9d4edd),
      // Color(0xFFc77dff),
      // Color(0xFFe0aaff),
    ],
  );
}
