import 'package:flutter/cupertino.dart';
import 'package:dipper/utils/styles/colors/colors.dart';

abstract class AppDecoration {
  static BoxDecoration defaultDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    color: ColorsCategory.black,
  );
}
