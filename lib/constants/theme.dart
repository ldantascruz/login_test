import 'package:flutter/material.dart';
import 'package:login_page_test/constants/riit_colors.dart';

final ThemeData riitThemeData = ThemeData(
  hintColor: riitBlue700,
  appBarTheme: const AppBarTheme(
    toolbarTextStyle: TextStyle(
      fontSize: 25,
      color: riitNeutral950,
    ),
    shadowColor: riitBlue500,
    backgroundColor: Color(0XFF242424),
    elevation: 2.0,
    titleTextStyle: TextStyle(
      fontFamily: 'Effra Trial',
      fontSize: 25,
      color: Colors.white,
    ),
  ),
  scaffoldBackgroundColor: riitNeutral300,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: riitStatusPrimaryPersonal,
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Arredondamento dos cantos
      ),
    ),
  ),
  fontFamily: 'Effra Trial',
  colorScheme: ColorScheme.fromSeed(seedColor: riitBlue700),

  // Configura o tema do input
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(
      vertical: 10.0,
      horizontal: 10.0,
    ),
    floatingLabelBehavior: FloatingLabelBehavior.never,
    border: const OutlineInputBorder(),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: riitNeutral600, // Sua cor para a borda aqui
      ),
    ),
    labelStyle: const TextStyle(
      fontSize: 14.0,
      color: riitNeutral700,
    ),
    errorStyle: const TextStyle(
      fontSize: 14.0,
      fontFamily: 'Effra Trial',
      color: Colors.red,
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: riitBlue400, // Sua cor para a borda quando o campo está focado
      ),
    ),
  ),

  // Thema do TextFormField
  textSelectionTheme: const TextSelectionThemeData(cursorColor: riitBlue800),
  textTheme: const TextTheme(
    labelSmall: TextStyle(
      fontSize: 14,
      fontFamily: 'Effra Trial',
    ),
    labelMedium: TextStyle(
      fontSize: 16,
      fontFamily: 'Effra Trial',
    ),
    labelLarge: TextStyle(
      fontSize: 18,
      fontFamily: 'Effra Trial',
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      fontFamily: 'Effra Trial',
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontFamily: 'Effra Trial',
    ),
    bodyLarge: TextStyle(
      fontSize: 20,
      fontFamily: 'Effra Trial',
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontFamily: 'Effra Trial',
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontFamily: 'Effra Trial',
    ),
    titleLarge: TextStyle(
      fontSize: 20,
      fontFamily: 'Effra Trial',
    ),
  ),
  useMaterial3: true,
);

EdgeInsets getMargemResponsiva(BuildContext context, double pecentual) {
  double width = MediaQuery.of(context).size.width * pecentual;
  double height = MediaQuery.of(context).size.height * pecentual;
  //double horizontalMargin = width * 0.1;
  // 10% da largura da tela
  return EdgeInsets.symmetric(horizontal: width, vertical: height);
}

EdgeInsets getMargemVH(
    BuildContext context, double vertical, double horizontal) {
  double width = MediaQuery.of(context).size.width;
  double hMargin = width * horizontal;
  double vMargin = MediaQuery.of(context).size.height * 0.1;
  return EdgeInsets.symmetric(vertical: vMargin, horizontal: hMargin);
}

EdgeInsets getMargemHorizontal(BuildContext context, double margin) {
  double width = MediaQuery.of(context).size.width;
  double breakpointMargin;
  if (width <= 450) {
    breakpointMargin = 0.01; // Ajuste de acordo com a sua necessidade
  } else if (width <= 800) {
    breakpointMargin = 0.015; // Ajuste de acordo com a sua necessidade
  } else if (width <= 1920) {
    breakpointMargin = 0.075; // Ajuste de acordo com a sua necessidade
  } else {
    breakpointMargin = 0.0; // Ajuste de acordo com a sua necessidade
  }
  if (margin > 0.0) {
    breakpointMargin = margin;
  }
  double horizontalMargin = width * (breakpointMargin);
  return EdgeInsets.symmetric(horizontal: horizontalMargin);
}

EdgeInsets getMargemAll(BuildContext context, double margin) {
  double width = MediaQuery.of(context).size.width;
  double allMargin = width * margin; // 10% da largura da tela
  return EdgeInsets.all(allMargin);
}

EdgeInsets getMargemVertical(BuildContext context, double margin) {
  double width = MediaQuery.of(context).size.width;
  double verticalMargin = width * margin; // 10% da largura da tela
  return EdgeInsets.symmetric(vertical: verticalMargin);
}
