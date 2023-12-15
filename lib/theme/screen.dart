import 'dart:math' as math;
import 'package:flutter/material.dart';

///Clase para crear widgets adaptativos

///Con MediaQuery se calcula el tamaño de la pantalla del dispositivo
///Los widgets se adaptan al tamaño de la pantalla del dispositivo
class Screen {
  static Screen initialize(BuildContext context) => Screen(context);

  Screen(BuildContext context) {
    _size = MediaQuery.of(context).size;

    _fontExtraLarge = getDiagonalInPercent(4.4);
    _fontLarge = getDiagonalInPercent(2.1);
    _fontMedium = getDiagonalInPercent(1.7);
    _fontSmall = getDiagonalInPercent(1.5);
  }

  late Size _size;

  double? _fontExtraLarge, _fontLarge, _fontMedium, _fontSmall;

  ///Obtiene el ancho total de la pantalla
  double get getWidthSize => _size.width;

  ///Obtiene la altura total de la pantalla
  double get getHeightSize => _size.height;

  ///Obtiene la diagonal de la pantalla
  double get getDiagonalSize =>
      math.sqrt(math.pow(getWidthSize, 2) + math.pow(getHeightSize, 2));

  ///Evalua si es una pantalla tipo tablet
  ///
  ///Retorna true si es tablet, de lo contrario false
  bool get isTablet => _size.shortestSide >= 600;

  ///Fuente extra grande
  double? get fontExtraLarge => _fontExtraLarge;

  ///Fuente grande
  double? get fontLarge => _fontLarge;

  ///Fuente mediana
  double? get fontMedium => _fontMedium;

  ///Fuente pequeña
  double? get fontSmall => _fontSmall;

  //Obtiene el porcentaje del ancho total de la pantalla
  double getWidthInPercent(double value) => (value * getWidthSize) / 100;

  //Obtiene el porcentaje de la altura total de la pantalla
  double getHeightInPercent(double value) => (value * getHeightSize) / 100;

  //Obtiene el porcentaje de la diagonal total de la pantalla
  double getDiagonalInPercent(double value) => (value * getDiagonalSize) / 100;
}
