/*
 * Copyright (c) 2024 Pawan Kumar. All rights reserved.
 *
 *  * Licensed under the Apache License, Version 2.0 (the "License");
 *  * you may not use this file except in compliance with the License.
 *  * You may obtain a copy of the License at
 *  * http://www.apache.org/licenses/LICENSE-2.0
 *  * Unless required by applicable law or agreed to in writing, software
 *  * distributed under the License is distributed on an "AS IS" BASIS,
 *  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  * See the License for the specific language governing permissions and
 *  * limitations under the License.
 */

import 'package:flutter/material.dart';
import 'package:rush/rush.dart';

/// A mixin that provides color-related functionality.
mixin RushColorMixin<T> {
  late T _childToColor;

  @protected

  /// The color used on rush widgets.
  Color? rushColor;

  /// Sets the child color.
  set childToColor(T child) {
    _childToColor = child;
  }

  /// The color white.
  T get white => _colorIt(child: _childToColor, color: Rush.white);

  /// The color black.
  T get black => _colorIt(child: _childToColor, color: Rush.black);

  /// The color gray50.
  T get gray50 => _colorIt(child: _childToColor, color: Rush.gray50);

  /// The color gray100.
  T get gray100 => _colorIt(child: _childToColor, color: Rush.gray100);

  /// The color gray200.
  T get gray200 => _colorIt(child: _childToColor, color: Rush.gray200);

  /// The color gray300.
  T get gray300 => _colorIt(child: _childToColor, color: Rush.gray300);

  /// The color gray400.
  T get gray400 => _colorIt(child: _childToColor, color: Rush.gray400);

  /// The color gray500.
  T get gray500 => _colorIt(child: _childToColor, color: Rush.gray500);

  /// The color gray600.
  T get gray600 => _colorIt(child: _childToColor, color: Rush.gray600);

  /// The color gray700.
  T get gray700 => _colorIt(child: _childToColor, color: Rush.gray700);

  /// The color gray800.
  T get gray800 => _colorIt(child: _childToColor, color: Rush.gray800);

  /// The color gray900.
  T get gray900 => _colorIt(child: _childToColor, color: Rush.gray900);

  /// The color slate50.
  T get slate50 => _colorIt(child: _childToColor, color: Rush.slate50);

  /// The color slate100.
  T get slate100 => _colorIt(child: _childToColor, color: Rush.slate100);

  /// The color slate200.
  T get slate200 => _colorIt(child: _childToColor, color: Rush.slate200);

  /// The color slate300.
  T get slate300 => _colorIt(child: _childToColor, color: Rush.slate300);

  /// The color slate400.
  T get slate400 => _colorIt(child: _childToColor, color: Rush.slate400);

  /// The color slate500.
  T get slate500 => _colorIt(child: _childToColor, color: Rush.slate500);

  /// The color slate600.
  T get slate600 => _colorIt(child: _childToColor, color: Rush.slate600);

  /// The color slate700.
  T get slate700 => _colorIt(child: _childToColor, color: Rush.slate700);

  /// The color slate800.
  T get slate800 => _colorIt(child: _childToColor, color: Rush.slate800);

  /// The color slate900.
  T get slate900 => _colorIt(child: _childToColor, color: Rush.slate900);

  /// The color zinc50.
  T get zinc50 => _colorIt(child: _childToColor, color: Rush.zinc50);

  /// The color zinc100.
  T get zinc100 => _colorIt(child: _childToColor, color: Rush.zinc100);

  /// The color zinc200.
  T get zinc200 => _colorIt(child: _childToColor, color: Rush.zinc200);

  /// The color zinc300.
  T get zinc300 => _colorIt(child: _childToColor, color: Rush.zinc300);

  /// The color zinc400.
  T get zinc400 => _colorIt(child: _childToColor, color: Rush.zinc400);

  /// The color zinc500.
  T get zinc500 => _colorIt(child: _childToColor, color: Rush.zinc500);

  /// The color zinc600.
  T get zinc600 => _colorIt(child: _childToColor, color: Rush.zinc600);

  /// The color zinc700.
  T get zinc700 => _colorIt(child: _childToColor, color: Rush.zinc700);

  /// The color zinc800.
  T get zinc800 => _colorIt(child: _childToColor, color: Rush.zinc800);

  /// The color zinc900.
  T get zinc900 => _colorIt(child: _childToColor, color: Rush.zinc900);

  /// The color neutral50.
  T get neutral50 => _colorIt(child: _childToColor, color: Rush.neutral50);

  /// The color neutral100.
  T get neutral100 => _colorIt(child: _childToColor, color: Rush.neutral100);

  /// The color neutral200.
  T get neutral200 => _colorIt(child: _childToColor, color: Rush.neutral200);

  /// The color neutral300.
  T get neutral300 => _colorIt(child: _childToColor, color: Rush.neutral300);

  /// The color neutral400.
  T get neutral400 => _colorIt(child: _childToColor, color: Rush.neutral400);

  /// The color neutral500.
  T get neutral500 => _colorIt(child: _childToColor, color: Rush.neutral500);

  /// The color neutral600.
  T get neutral600 => _colorIt(child: _childToColor, color: Rush.neutral600);

  /// The color neutral700.
  T get neutral700 => _colorIt(child: _childToColor, color: Rush.neutral700);

  /// The color neutral800.
  T get neutral800 => _colorIt(child: _childToColor, color: Rush.neutral800);

  /// The color neutral900.
  T get neutral900 => _colorIt(child: _childToColor, color: Rush.neutral900);

  /// The color stone50.
  T get stone50 => _colorIt(child: _childToColor, color: Rush.stone50);

  /// The color stone100.
  T get stone100 => _colorIt(child: _childToColor, color: Rush.stone100);

  /// The color stone200.
  T get stone200 => _colorIt(child: _childToColor, color: Rush.stone200);

  /// The color stone300.
  T get stone300 => _colorIt(child: _childToColor, color: Rush.stone300);

  /// The color stone400.
  T get stone400 => _colorIt(child: _childToColor, color: Rush.stone400);

  /// The color stone500.
  T get stone500 => _colorIt(child: _childToColor, color: Rush.stone500);

  /// The color stone600.
  T get stone600 => _colorIt(child: _childToColor, color: Rush.stone600);

  /// The color stone700.
  T get stone700 => _colorIt(child: _childToColor, color: Rush.stone700);

  /// The color stone800.
  T get stone800 => _colorIt(child: _childToColor, color: Rush.stone800);

  /// The color stone900.
  T get stone900 => _colorIt(child: _childToColor, color: Rush.stone900);

  /// The color red50.
  T get red50 => _colorIt(child: _childToColor, color: Rush.red50);

  /// The color red100.
  T get red100 => _colorIt(child: _childToColor, color: Rush.red100);

  /// The color red200.
  T get red200 => _colorIt(child: _childToColor, color: Rush.red200);

  /// The color red300.
  T get red300 => _colorIt(child: _childToColor, color: Rush.red300);

  /// The color red400.
  T get red400 => _colorIt(child: _childToColor, color: Rush.red400);

  /// The color red500.
  T get red500 => _colorIt(child: _childToColor, color: Rush.red500);

  /// The color red600.
  T get red600 => _colorIt(child: _childToColor, color: Rush.red600);

  /// The color red700.
  T get red700 => _colorIt(child: _childToColor, color: Rush.red700);

  /// The color red800.
  T get red800 => _colorIt(child: _childToColor, color: Rush.red800);

  /// The color red900.
  T get red900 => _colorIt(child: _childToColor, color: Rush.red900);

  /// The color orange50.
  T get orange50 => _colorIt(child: _childToColor, color: Rush.orange50);

  /// The color orange100.
  T get orange100 => _colorIt(child: _childToColor, color: Rush.orange100);

  /// The color orange200.
  T get orange200 => _colorIt(child: _childToColor, color: Rush.orange200);

  /// The color orange300.
  T get orange300 => _colorIt(child: _childToColor, color: Rush.orange300);

  /// The color orange400.
  T get orange400 => _colorIt(child: _childToColor, color: Rush.orange400);

  /// The color orange500.
  T get orange500 => _colorIt(child: _childToColor, color: Rush.orange500);

  /// The color orange600.
  T get orange600 => _colorIt(child: _childToColor, color: Rush.orange600);

  /// The color orange700.
  T get orange700 => _colorIt(child: _childToColor, color: Rush.orange700);

  /// The color orange800.
  T get orange800 => _colorIt(child: _childToColor, color: Rush.orange800);

  /// The color orange900.
  T get orange900 => _colorIt(child: _childToColor, color: Rush.orange900);

  /// The color amber50.
  T get amber50 => _colorIt(child: _childToColor, color: Rush.amber50);

  /// The color amber100.
  T get amber100 => _colorIt(child: _childToColor, color: Rush.amber100);

  /// The color amber200.
  T get amber200 => _colorIt(child: _childToColor, color: Rush.amber200);

  /// The color amber300.
  T get amber300 => _colorIt(child: _childToColor, color: Rush.amber300);

  /// The color amber400.
  T get amber400 => _colorIt(child: _childToColor, color: Rush.amber400);

  /// The color amber500.
  T get amber500 => _colorIt(child: _childToColor, color: Rush.amber500);

  /// The color amber600.
  T get amber600 => _colorIt(child: _childToColor, color: Rush.amber600);

  /// The color amber700.
  T get amber700 => _colorIt(child: _childToColor, color: Rush.amber700);

  /// The color amber800.
  T get amber800 => _colorIt(child: _childToColor, color: Rush.amber800);

  /// The color amber900.
  T get amber900 => _colorIt(child: _childToColor, color: Rush.amber900);

  /// The color yellow50.
  T get yellow50 => _colorIt(child: _childToColor, color: Rush.yellow50);

  /// The color yellow100.
  T get yellow100 => _colorIt(child: _childToColor, color: Rush.yellow100);

  /// The color yellow200.
  T get yellow200 => _colorIt(child: _childToColor, color: Rush.yellow200);

  /// The color yellow300.
  T get yellow300 => _colorIt(child: _childToColor, color: Rush.yellow300);

  /// The color yellow400.
  T get yellow400 => _colorIt(child: _childToColor, color: Rush.yellow400);

  /// The color yellow500.
  T get yellow500 => _colorIt(child: _childToColor, color: Rush.yellow500);

  /// The color yellow600.
  T get yellow600 => _colorIt(child: _childToColor, color: Rush.yellow600);

  /// The color yellow700.
  T get yellow700 => _colorIt(child: _childToColor, color: Rush.yellow700);

  /// The color yellow800.
  T get yellow800 => _colorIt(child: _childToColor, color: Rush.yellow800);

  /// The color yellow900.
  T get yellow900 => _colorIt(child: _childToColor, color: Rush.yellow900);

  /// The color lime50.
  T get lime50 => _colorIt(child: _childToColor, color: Rush.lime50);

  /// The color lime100.
  T get lime100 => _colorIt(child: _childToColor, color: Rush.lime100);

  /// The color lime200.
  T get lime200 => _colorIt(child: _childToColor, color: Rush.lime200);

  /// The color lime300.
  T get lime300 => _colorIt(child: _childToColor, color: Rush.lime300);

  /// The color lime400.
  T get lime400 => _colorIt(child: _childToColor, color: Rush.lime400);

  /// The color lime500.
  T get lime500 => _colorIt(child: _childToColor, color: Rush.lime500);

  /// The color lime600.
  T get lime600 => _colorIt(child: _childToColor, color: Rush.lime600);

  /// The color lime700.
  T get lime700 => _colorIt(child: _childToColor, color: Rush.lime700);

  /// The color lime800.
  T get lime800 => _colorIt(child: _childToColor, color: Rush.lime800);

  /// The color lime900.
  T get lime900 => _colorIt(child: _childToColor, color: Rush.lime900);

  /// The color green50.
  T get green50 => _colorIt(child: _childToColor, color: Rush.green50);

  /// The color green100.
  T get green100 => _colorIt(child: _childToColor, color: Rush.green100);

  /// The color green200.
  T get green200 => _colorIt(child: _childToColor, color: Rush.green200);

  /// The color green300.
  T get green300 => _colorIt(child: _childToColor, color: Rush.green300);

  /// The color green400.
  T get green400 => _colorIt(child: _childToColor, color: Rush.green400);

  /// The color green500.
  T get green500 => _colorIt(child: _childToColor, color: Rush.green500);

  /// The color green600.
  T get green600 => _colorIt(child: _childToColor, color: Rush.green600);

  /// The color green700.
  T get green700 => _colorIt(child: _childToColor, color: Rush.green700);

  /// The color green800.
  T get green800 => _colorIt(child: _childToColor, color: Rush.green800);

  /// The color green900.
  T get green900 => _colorIt(child: _childToColor, color: Rush.green900);

  /// The color emerald50.
  T get emerald50 => _colorIt(child: _childToColor, color: Rush.emerald50);

  /// The color emerald100.
  T get emerald100 => _colorIt(child: _childToColor, color: Rush.emerald100);

  /// The color emerald200.
  T get emerald200 => _colorIt(child: _childToColor, color: Rush.emerald200);

  /// The color emerald300.
  T get emerald300 => _colorIt(child: _childToColor, color: Rush.emerald300);

  /// The color emerald400.
  T get emerald400 => _colorIt(child: _childToColor, color: Rush.emerald400);

  /// The color emerald500.
  T get emerald500 => _colorIt(child: _childToColor, color: Rush.emerald500);

  /// The color emerald600.
  T get emerald600 => _colorIt(child: _childToColor, color: Rush.emerald600);

  /// The color emerald700.
  T get emerald700 => _colorIt(child: _childToColor, color: Rush.emerald700);

  /// The color emerald800.
  T get emerald800 => _colorIt(child: _childToColor, color: Rush.emerald800);

  /// The color emerald900.
  T get emerald900 => _colorIt(child: _childToColor, color: Rush.emerald900);

  /// The color teal50.
  T get teal50 => _colorIt(child: _childToColor, color: Rush.teal50);

  /// The color teal100.
  T get teal100 => _colorIt(child: _childToColor, color: Rush.teal100);

  /// The color teal200.
  T get teal200 => _colorIt(child: _childToColor, color: Rush.teal200);

  /// The color teal300.
  T get teal300 => _colorIt(child: _childToColor, color: Rush.teal300);

  /// The color teal400.
  T get teal400 => _colorIt(child: _childToColor, color: Rush.teal400);

  /// The color teal500.
  T get teal500 => _colorIt(child: _childToColor, color: Rush.teal500);

  /// The color teal600.
  T get teal600 => _colorIt(child: _childToColor, color: Rush.teal600);

  /// The color teal700.
  T get teal700 => _colorIt(child: _childToColor, color: Rush.teal700);

  /// The color teal800.
  T get teal800 => _colorIt(child: _childToColor, color: Rush.teal800);

  /// The color teal900.
  T get teal900 => _colorIt(child: _childToColor, color: Rush.teal900);

  /// The color cyan50.
  T get cyan50 => _colorIt(child: _childToColor, color: Rush.cyan50);

  /// The color cyan100.
  T get cyan100 => _colorIt(child: _childToColor, color: Rush.cyan100);

  /// The color cyan200.
  T get cyan200 => _colorIt(child: _childToColor, color: Rush.cyan200);

  /// The color cyan300.
  T get cyan300 => _colorIt(child: _childToColor, color: Rush.cyan300);

  /// The color cyan400.
  T get cyan400 => _colorIt(child: _childToColor, color: Rush.cyan400);

  /// The color cyan500.
  T get cyan500 => _colorIt(child: _childToColor, color: Rush.cyan500);

  /// The color cyan600.
  T get cyan600 => _colorIt(child: _childToColor, color: Rush.cyan600);

  /// The color cyan700.
  T get cyan700 => _colorIt(child: _childToColor, color: Rush.cyan700);

  /// The color cyan800.
  T get cyan800 => _colorIt(child: _childToColor, color: Rush.cyan800);

  /// The color cyan900.
  T get cyan900 => _colorIt(child: _childToColor, color: Rush.cyan900);

  /// The color sky50.
  T get sky50 => _colorIt(child: _childToColor, color: Rush.sky50);

  /// The color sky100.
  T get sky100 => _colorIt(child: _childToColor, color: Rush.sky100);

  /// The color sky200.
  T get sky200 => _colorIt(child: _childToColor, color: Rush.sky200);

  /// The color sky300.
  T get sky300 => _colorIt(child: _childToColor, color: Rush.sky300);

  /// The color sky400.
  T get sky400 => _colorIt(child: _childToColor, color: Rush.sky400);

  /// The color sky500.
  T get sky500 => _colorIt(child: _childToColor, color: Rush.sky500);

  /// The color sky600.
  T get sky600 => _colorIt(child: _childToColor, color: Rush.sky600);

  /// The color sky700.
  T get sky700 => _colorIt(child: _childToColor, color: Rush.sky700);

  /// The color sky800.
  T get sky800 => _colorIt(child: _childToColor, color: Rush.sky800);

  /// The color sky900.
  T get sky900 => _colorIt(child: _childToColor, color: Rush.sky900);

  /// The color blue50.
  T get blue50 => _colorIt(child: _childToColor, color: Rush.blue50);

  /// The color blue100.
  T get blue100 => _colorIt(child: _childToColor, color: Rush.blue100);

  /// The color blue200.
  T get blue200 => _colorIt(child: _childToColor, color: Rush.blue200);

  /// The color blue300.
  T get blue300 => _colorIt(child: _childToColor, color: Rush.blue300);

  /// The color blue400.
  T get blue400 => _colorIt(child: _childToColor, color: Rush.blue400);

  /// The color blue500.
  T get blue500 => _colorIt(child: _childToColor, color: Rush.blue500);

  /// The color blue600.
  T get blue600 => _colorIt(child: _childToColor, color: Rush.blue600);

  /// The color blue700.
  T get blue700 => _colorIt(child: _childToColor, color: Rush.blue700);

  /// The color blue800.
  T get blue800 => _colorIt(child: _childToColor, color: Rush.blue800);

  /// The color blue900.
  T get blue900 => _colorIt(child: _childToColor, color: Rush.blue900);

  /// The color indigo50.
  T get indigo50 => _colorIt(child: _childToColor, color: Rush.indigo50);

  /// The color indigo100.
  T get indigo100 => _colorIt(child: _childToColor, color: Rush.indigo100);

  /// The color indigo200.
  T get indigo200 => _colorIt(child: _childToColor, color: Rush.indigo200);

  /// The color indigo300.
  T get indigo300 => _colorIt(child: _childToColor, color: Rush.indigo300);

  /// The color indigo400.
  T get indigo400 => _colorIt(child: _childToColor, color: Rush.indigo400);

  /// The color indigo500.
  T get indigo500 => _colorIt(child: _childToColor, color: Rush.indigo500);

  /// The color indigo600.
  T get indigo600 => _colorIt(child: _childToColor, color: Rush.indigo600);

  /// The color indigo700.
  T get indigo700 => _colorIt(child: _childToColor, color: Rush.indigo700);

  /// The color indigo800.
  T get indigo800 => _colorIt(child: _childToColor, color: Rush.indigo800);

  /// The color indigo900.
  T get indigo900 => _colorIt(child: _childToColor, color: Rush.indigo900);

  /// The color violet50.
  T get violet50 => _colorIt(child: _childToColor, color: Rush.violet50);

  /// The color violet100.
  T get violet100 => _colorIt(child: _childToColor, color: Rush.violet100);

  /// The color violet200.
  T get violet200 => _colorIt(child: _childToColor, color: Rush.violet200);

  /// The color violet300.
  T get violet300 => _colorIt(child: _childToColor, color: Rush.violet300);

  /// The color violet400.
  T get violet400 => _colorIt(child: _childToColor, color: Rush.violet400);

  /// The color violet500.
  T get violet500 => _colorIt(child: _childToColor, color: Rush.violet500);

  /// The color violet600.
  T get violet600 => _colorIt(child: _childToColor, color: Rush.violet600);

  /// The color violet700.
  T get violet700 => _colorIt(child: _childToColor, color: Rush.violet700);

  /// The color violet800.
  T get violet800 => _colorIt(child: _childToColor, color: Rush.violet800);

  /// The color violet900.
  T get violet900 => _colorIt(child: _childToColor, color: Rush.violet900);

  /// The color purple50.
  T get purple50 => _colorIt(child: _childToColor, color: Rush.purple50);

  /// The color purple100.
  T get purple100 => _colorIt(child: _childToColor, color: Rush.purple100);

  /// The color purple200.
  T get purple200 => _colorIt(child: _childToColor, color: Rush.purple200);

  /// The color purple300.
  T get purple300 => _colorIt(child: _childToColor, color: Rush.purple300);

  /// The color purple400.
  T get purple400 => _colorIt(child: _childToColor, color: Rush.purple400);

  /// The color purple500.
  T get purple500 => _colorIt(child: _childToColor, color: Rush.purple500);

  /// The color purple600.
  T get purple600 => _colorIt(child: _childToColor, color: Rush.purple600);

  /// The color purple700.
  T get purple700 => _colorIt(child: _childToColor, color: Rush.purple700);

  /// The color purple800.
  T get purple800 => _colorIt(child: _childToColor, color: Rush.purple800);

  /// The color purple900.
  T get purple900 => _colorIt(child: _childToColor, color: Rush.purple900);

  /// The color fuchsia50.
  T get fuchsia50 => _colorIt(child: _childToColor, color: Rush.fuchsia50);

  /// The color fuchsia100.
  T get fuchsia100 => _colorIt(child: _childToColor, color: Rush.fuchsia100);

  /// The color fuchsia200.
  T get fuchsia200 => _colorIt(child: _childToColor, color: Rush.fuchsia200);

  /// The color fuchsia300.
  T get fuchsia300 => _colorIt(child: _childToColor, color: Rush.fuchsia300);

  /// The color fuchsia400.
  T get fuchsia400 => _colorIt(child: _childToColor, color: Rush.fuchsia400);

  /// The color fuchsia500.
  T get fuchsia500 => _colorIt(child: _childToColor, color: Rush.fuchsia500);

  /// The color fuchsia600.
  T get fuchsia600 => _colorIt(child: _childToColor, color: Rush.fuchsia600);

  /// The color fuchsia700.
  T get fuchsia700 => _colorIt(child: _childToColor, color: Rush.fuchsia700);

  /// The color fuchsia800.
  T get fuchsia800 => _colorIt(child: _childToColor, color: Rush.fuchsia800);

  /// The color fuchsia900.
  T get fuchsia900 => _colorIt(child: _childToColor, color: Rush.fuchsia900);

  /// The color pink50.
  T get pink50 => _colorIt(child: _childToColor, color: Rush.pink50);

  /// The color pink100.
  T get pink100 => _colorIt(child: _childToColor, color: Rush.pink100);

  /// The color pink200.
  T get pink200 => _colorIt(child: _childToColor, color: Rush.pink200);

  /// The color pink300.
  T get pink300 => _colorIt(child: _childToColor, color: Rush.pink300);

  /// The color pink400.
  T get pink400 => _colorIt(child: _childToColor, color: Rush.pink400);

  /// The color pink500.
  T get pink500 => _colorIt(child: _childToColor, color: Rush.pink500);

  /// The color pink600.
  T get pink600 => _colorIt(child: _childToColor, color: Rush.pink600);

  /// The color pink700.
  T get pink700 => _colorIt(child: _childToColor, color: Rush.pink700);

  /// The color pink800.
  T get pink800 => _colorIt(child: _childToColor, color: Rush.pink800);

  /// The color pink900.
  T get pink900 => _colorIt(child: _childToColor, color: Rush.pink900);

  /// The color rose50.
  T get rose50 => _colorIt(child: _childToColor, color: Rush.rose50);

  /// The color rose100.
  T get rose100 => _colorIt(child: _childToColor, color: Rush.rose100);

  /// The color rose200.
  T get rose200 => _colorIt(child: _childToColor, color: Rush.rose200);

  /// The color rose300.
  T get rose300 => _colorIt(child: _childToColor, color: Rush.rose300);

  /// The color rose400.
  T get rose400 => _colorIt(child: _childToColor, color: Rush.rose400);

  /// The color rose500.
  T get rose500 => _colorIt(child: _childToColor, color: Rush.rose500);

  /// The color rose600.
  T get rose600 => _colorIt(child: _childToColor, color: Rush.rose600);

  /// The color rose700.
  T get rose700 => _colorIt(child: _childToColor, color: Rush.rose700);

  /// The color rose800.
  T get rose800 => _colorIt(child: _childToColor, color: Rush.rose800);

  /// The color rose900.
  T get rose900 => _colorIt(child: _childToColor, color: Rush.rose900);

  /// The color brown50.
  T get brown50 => _colorIt(child: _childToColor, color: Rush.brown50);

  /// The color brown100.
  T get brown100 => _colorIt(child: _childToColor, color: Rush.brown100);

  /// The color brown200.
  T get brown200 => _colorIt(child: _childToColor, color: Rush.brown200);

  /// The color brown300.
  T get brown300 => _colorIt(child: _childToColor, color: Rush.brown300);

  /// The color brown400.
  T get brown400 => _colorIt(child: _childToColor, color: Rush.brown400);

  /// The color brown500.
  T get brown500 => _colorIt(child: _childToColor, color: Rush.brown500);

  /// The color brown600.
  T get brown600 => _colorIt(child: _childToColor, color: Rush.brown600);

  /// The color brown700.
  T get brown700 => _colorIt(child: _childToColor, color: Rush.brown700);

  /// The color brown800.
  T get brown800 => _colorIt(child: _childToColor, color: Rush.brown800);

  /// The color brown900.
  T get brown900 => _colorIt(child: _childToColor, color: Rush.brown900);

  /// The color mint50.
  T get mint50 => _colorIt(child: _childToColor, color: Rush.mint50);

  /// The color mint100.
  T get mint100 => _colorIt(child: _childToColor, color: Rush.mint100);

  /// The color mint200.
  T get mint200 => _colorIt(child: _childToColor, color: Rush.mint200);

  /// The color mint300.
  T get mint300 => _colorIt(child: _childToColor, color: Rush.mint300);

  /// The color mint400.
  T get mint400 => _colorIt(child: _childToColor, color: Rush.mint400);

  /// The color mint500.
  T get mint500 => _colorIt(child: _childToColor, color: Rush.mint500);

  /// The color mint600.
  T get mint600 => _colorIt(child: _childToColor, color: Rush.mint600);

  /// The color mint700.
  T get mint700 => _colorIt(child: _childToColor, color: Rush.mint700);

  /// The color mint800.
  T get mint800 => _colorIt(child: _childToColor, color: Rush.mint800);

  /// The color mint900.
  T get mint900 => _colorIt(child: _childToColor, color: Rush.mint900);

  /// The transparent color.
  T get transparent {
    rushColor = Colors.transparent;
    return _childToColor;
  }

  T _colorIt({required Color color, required T child}) {
    rushColor = color;
    return child;
  }
}
