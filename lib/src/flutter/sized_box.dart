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

/// Extension for [SizedBox]
extension RushSizedBoxExtension on Widget {
  /// Creates a [SizedBox] widget with a specific width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().w(100)
  /// ```
  Widget w(double width, {Key? key}) => SizedBox(
        key: key,
        width: width,
        child: this,
      );

  /// [SizedBox] widget with a width calculated as a percentage
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wPercentage(
  ///   percentage: 50,
  /// )
  /// ```
  Widget wPercentage({
    required BuildContext context,
    required double percentage,
    Key? key,
  }) =>
      SizedBox(
        key: key,
        width: context.screenWidthInPercentage * percentage,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 0%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().w0(context)
  /// ```
  Widget w0(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 0,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 1%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().w1(context)
  /// ```
  Widget w1(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 1,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 2%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().w2(context)
  /// ```
  Widget w2(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 2,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 4%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().w4(context)
  /// ```
  Widget w4(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 4,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 8%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().w8(context)
  /// ```
  Widget w8(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 8,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 10%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().w10(context)
  /// ```
  Widget w10(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 10,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 15%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().w15(context)
  /// ```
  Widget w15(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 15,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 16%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().w16(context)
  /// ```
  Widget w16(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 16,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 20%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().w20(context)
  /// ```
  Widget w20(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 20,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 24%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().w24(context)
  /// ```
  Widget w24(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 24,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 32%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().w32(context)
  /// ```
  Widget w32(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 32,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 40%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().w40(context)
  /// ```
  Widget w40(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 40,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 48%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().w48(context)
  /// ```
  Widget w48(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 48,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 56%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().w56(context)
  /// ```
  Widget w56(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 56,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 60%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().w60(context)
  /// ```
  Widget w60(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 60,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 64%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().w64(context)
  /// ```
  Widget w64(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 64,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 50%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wHalf(context)
  /// ```
  Widget wHalf(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 50,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 33.333333%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wOneThird(context)
  /// ```
  Widget wOneThird(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 33.333333,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 66.666667%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wTwoThird(context)
  /// ```
  Widget wTwoThird(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 66.666667,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 25%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wOneForth(context)
  /// ```
  Widget wOneForth(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 25,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 75%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wThreeForth(context)
  /// ```
  Widget wThreeForth(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 75,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width of 80%
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wFourFifth(context)
  /// ```
  Widget wFourFifth(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 80,
        child: this,
      );

  /// Creates a [SizedBox] widget with a full width
  /// of the [MediaQuery] width.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wFull(context)
  /// ```
  Widget wFull(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidth,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().h(100)
  /// ```
  Widget h(double height, {Key? key}) => SizedBox(
        key: key,
        height: height,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height percentage
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().hPercentage(context: context, heightPCT: 50)
  /// ```
  Widget hPercentage({
    required BuildContext context,
    required double heightPCT,
    Key? key,
  }) =>
      SizedBox(
        key: key,
        height: context.screenHeightInPercentage * heightPCT,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 0.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().h0(context)
  /// ```
  Widget h0(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 0,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 1%
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().h1(context)
  /// ```
  Widget h1(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 1,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 2%
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().h2(context)
  /// ```
  Widget h2(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 2,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 4%
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().h4(context)
  /// ```
  Widget h4(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 4,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 8%
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().h8(context)
  /// ```
  Widget h8(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 8,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 10%
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().h10(context)
  /// ```
  Widget h10(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 10,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 15%
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().h15(context)
  /// ```
  Widget h15(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 15,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 16%
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().h16(context)
  /// ```
  Widget h16(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 16,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 20%
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().h20(context)
  /// ```
  Widget h20(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 20,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 24%
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().h24(context)
  /// ```
  Widget h24(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 24,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 32%
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().h32(context)
  /// ```
  Widget h32(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 32,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 40%
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().h40(context)
  /// ```
  Widget h40(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 40,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 48%
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().h48(context)
  /// ```
  Widget h48(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 48,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 56%
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().h56(context)
  /// ```
  Widget h56(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 56,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 60%
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().h60(context)
  /// ```
  Widget h60(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 60,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 64%
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().h64(context)
  /// ```
  Widget h64(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 64,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 50%
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().hHalf(context)
  /// ```
  Widget hHalf(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 50,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 33.333333%
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().hOneThird(context)
  /// ```
  Widget hOneThird(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 33.333333,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 66.666667%
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().hTwoThird(context)
  /// ```
  Widget hTwoThird(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 66.666667,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 25%
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().hOneForth(context)
  /// ```
  Widget hOneForth(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 25,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 75%
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().hThreeForth(context)
  /// ```
  Widget hThreeForth(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 75,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific height of 80%
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().hFourFifth(context)
  /// ```
  Widget hFourFifth(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeightInPercentage * 80,
        child: this,
      );

  /// Creates a [SizedBox] widget with a full height
  /// of the [MediaQuery] height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().hFull(context)
  /// ```
  Widget hFull(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeight,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width and height.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wh(100, 200)
  /// ```
  Widget wh(double width, double height, {Key? key}) => SizedBox(
        key: key,
        width: width,
        height: height,
        child: this,
      );

  /// Creates a [SizedBox] widget with a specific width and height as
  /// a percentage of the screen size.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().whPercentage(context: context,
  /// widthPercentage: 50, heightPercentage: 50)
  /// ```
  Widget whPercentage({
    required BuildContext context,
    required double widthPercentage,
    required double heightPercentage,
    Key? key,
  }) =>
      SizedBox(
        key: key,
        width: context.screenWidthInPercentage * widthPercentage,
        height: context.screenHeightInPercentage * heightPercentage,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 0.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wh0(context)
  /// ```
  Widget wh0(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 0,
        height: context.screenHeightInPercentage * 0,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 1.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wh1(context)
  /// ```
  Widget wh1(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 1,
        height: context.screenHeightInPercentage * 1,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 2.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wh2(context)
  /// ```
  Widget wh2(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 2,
        height: context.screenHeightInPercentage * 2,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 4.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wh4(context)
  /// ```
  Widget wh4(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 4,
        height: context.screenHeightInPercentage * 4,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 8.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wh8(context)
  /// ```
  Widget wh8(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 8,
        height: context.screenHeightInPercentage * 8,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 10.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wh10(context)
  /// ```
  Widget wh10(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 10,
        height: context.screenHeightInPercentage * 10,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 15.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wh15(context)
  /// ```
  Widget wh15(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 15,
        height: context.screenHeightInPercentage * 15,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 16.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wh16(context)
  /// ```
  Widget wh16(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 16,
        height: context.screenHeightInPercentage * 16,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 20.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wh20(context)
  /// ```
  Widget wh20(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 20,
        height: context.screenHeightInPercentage * 20,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 24.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wh24(context)
  /// ```
  Widget wh24(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 24,
        height: context.screenHeightInPercentage * 24,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 32.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wh32(context)
  /// ```
  Widget wh32(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 32,
        height: context.screenHeightInPercentage * 32,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 40.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wh40(context)
  /// ```
  Widget wh40(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 40,
        height: context.screenHeightInPercentage * 40,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 48.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wh48(context)
  /// ```
  Widget wh48(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 48,
        height: context.screenHeightInPercentage * 48,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 56.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wh56(context)
  /// ```
  Widget wh56(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 56,
        height: context.screenHeightInPercentage * 56,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 60.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wh60(context)
  /// ```
  Widget wh60(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 60,
        height: context.screenHeightInPercentage * 60,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 64.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().wh64(context)
  /// ```
  Widget wh64(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 64,
        height: context.screenHeightInPercentage * 64,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 50.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().whHalf(context)
  /// ```
  Widget whHalf(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 50,
        height: context.screenHeightInPercentage * 50,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 33.333333.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().whOneThird(context)
  /// ```
  Widget whOneThird(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 33.333333,
        height: context.screenHeightInPercentage * 33.333333,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 66.666667.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().whTwoThird(context)
  /// ```
  Widget whTwoThird(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 66.666667,
        height: context.screenHeightInPercentage * 66.666667,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 25.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().whOneForth(context)
  /// ```
  Widget whOneForth(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 25,
        height: context.screenHeightInPercentage * 25,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 75.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().whThreeForth(context)
  /// ```
  Widget whThreeForth(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 75,
        height: context.screenHeightInPercentage * 75,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of 80.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().whFourFifth(context)
  /// ```
  Widget whFourFifth(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidthInPercentage * 80,
        height: context.screenHeightInPercentage * 80,
        child: this,
      );

  /// Creates a [SizedBox] widget with a width and height of the full screen.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().whFull(context)
  /// ```
  Widget whFull(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidth,
        height: context.screenHeight,
        child: this,
      );

  /// Creates a [FractionallySizedBox] widget with the
  /// specified height and width factors.
  ///
  /// Example:
  /// ```dart
  /// SomeWidget().fractionalBox(
  ///   heightFactor: 0.5,
  ///   widthFactor: 0.8,
  ///   alignment: Alignment.center,
  /// )
  /// ```
  Widget fractionalBox({
    required double heightFactor,
    required double widthFactor,
    Key? key,
    Alignment? alignment,
  }) =>
      FractionallySizedBox(
        key: key,
        heightFactor: heightFactor,
        widthFactor: widthFactor,
        alignment: alignment ?? Alignment.center,
        child: this,
      );
}

/// A widget that creates a [SizedBox] with a specific width.
///
/// Example:
/// ```dart
/// RushWidthBox(100)
/// ```
class RushWidthBox extends StatelessWidget {
  /// Creates a [SizedBox] widget with a specific width.
  const RushWidthBox(
    this.width, {
    super.key,
  });

  /// Give [width] of the [SizedBox]
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      key: key,
    );
  }
}

/// A widget that creates a [SizedBox] with a specific height.
///
/// Example:
/// ```dart
/// RushHeightBox(200)
/// ```
class RushHeightBox extends StatelessWidget {
  /// Creates a [SizedBox] widget with a specific height.
  const RushHeightBox(
    this.height, {
    super.key,
  });

  /// Give [height] of the [SizedBox]
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      key: key,
    );
  }
}

/// A widget that creates a square [SizedBox] with a specific size.
///
/// Example:
/// ```dart
/// RushSquareBox(150)
/// ```
class RushSquareBox extends StatelessWidget {
  /// Creates a square [SizedBox] widget with a specific size.
  const RushSquareBox(
    this.size, {
    super.key,
  });

  /// Give [size] of the [SizedBox]
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      key: key,
    );
  }
}
