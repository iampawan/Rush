/*
 * Copyright 2024 Pawan Kumar. All rights reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'package:flutter/widgets.dart';
import 'package:rush/rush.dart';
import 'package:rush/src/flutter/builder.dart';
import 'package:rush/src/flutter/mixins/colors.dart';
import 'package:rush/src/flutter/mixins/render.dart';

/// A builder class for creating text widgets in Rush.
///
/// This class extends [RushWidgetBuilder] and includes mixins for
/// color and render functionality.
/// It provides a convenient way to create text widgets with s
/// pecified text and text style.
@protected
class RushTextBuilder extends RushWidgetBuilder<Widget>
    with RushColorMixin<RushTextBuilder>, RushRenderMixin<RushTextBuilder> {
  /// Creates a new [RushTextBuilder] instance.
  RushTextBuilder.existing(this._text, this._textStyle, this._key) {
    childToColor = this;
    childForRender = this;
  }

  String? _text;
  final Key? _key;
  String? _fontFamily;

  double? _scaleFactor;
  double? _fontSize;
  double? _letterSpacing;
  double? _lineHeight;

  double? _wordSpacing;
  int? _maxLines;
  FontWeight? _fontWeight;
  TextAlign? _textAlign;
  FontStyle? _fontStyle;
  TextDecoration? _decoration;
  final TextStyle? _textStyle;
  TextStyle? _themedStyle;
  StrutStyle? _strutStyle;
  TextOverflow? _overflow;
  TextBaseline? _textBaseline;
  bool? _softWrap;
  double? _shadowBlur;
  Color? _shadowColor;
  Offset? _shadowOffset;

  /// Sets the text content for the RushTextBuilder.
  ///
  /// Example:
  /// ```dart
  /// Text('Old Text').rush.text("New Text").apply();
  /// ```
  RushTextBuilder text(String text) {
    _text = text;
    return this;
  }

  /// Sets the color of the text.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.color(Colors.blue).apply();
  /// ```
  RushTextBuilder color(Color? color) {
    rushColor = color;
    return this;
  }

  /// Sets the color of the text using a hexadecimal color code.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.hexColor('#FF0000').apply();
  /// ```
  RushTextBuilder hexColor(String colorHex) =>
      this..rushColor = Rush.hexToColor(colorHex);

  /// Sets the maximum number of lines for the text to display.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.maxLines(2).apply();
  /// ```
  RushTextBuilder maxLines(int lines) {
    _maxLines = lines;
    return this;
  }

  /// Sets the font family for the text.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.fontFamily('Roboto').apply();
  /// ```
  RushTextBuilder fontFamily(String family) {
    _fontFamily = family;
    return this;
  }

  /// Sets whether the text should wrap when it exceeds the width
  /// of its container.
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.softWrap(true).apply();
  /// ```
  // ignore: avoid_positional_boolean_parameters
  RushTextBuilder softWrap(bool softWrap) {
    _softWrap = softWrap;
    return this;
  }

  /// Sets the baseline alignment for the text.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.textBaseLine(TextBaseline.alphabetic).apply();
  /// ```
  RushTextBuilder textBaseLine(TextBaseline baseline) {
    _textBaseline = baseline;
    return this;
  }

  /// Sets the spacing between words in the text.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.wordSpacing(2.0).apply();
  /// ```
  RushTextBuilder wordSpacing(double spacing) {
    _wordSpacing = spacing;
    return this;
  }

  /// Sets the overflow behavior for the text
  /// when it exceeds the available space.
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.overflow(TextOverflow.ellipsis).apply();
  /// ```
  RushTextBuilder overflow(TextOverflow overflow) {
    _overflow = overflow;
    return this;
  }

  /// Sets the font weight for the text.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.fontWeight(FontWeight.bold).apply();
  /// ```
  RushTextBuilder fontWeight(FontWeight weight) {
    _fontWeight = weight;
    return this;
  }

  /// Sets the text style for the text.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.textStyle(TextStyle(fontSize: 16)).apply();
  /// ```
  RushTextBuilder textStyle(TextStyle? style) {
    _themedStyle = style;
    return this;
  }

  /// Sets the strut style for the text.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.strutStyle(StrutStyle(fontSize: 16)).apply();
  /// ```
  RushTextBuilder strutStyle(StrutStyle? style) {
    _strutStyle = style;
    return this;
  }

  /// Sets the text alignment for the text.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.align(TextAlign.center).apply();
  /// ```
  RushTextBuilder align(TextAlign align) => this.._textAlign = align;

  /// Sets the font size for the text.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.size(16).apply();
  /// ```
  RushTextBuilder size(double? size) => this.._fontSize = size;

  /// Scales the themed style with a custom font size factor.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.scale(1.5).apply();
  /// ```
  RushTextBuilder scale(double value) =>
      _fontSizedText(child: this, scaleFactor: value);

  /// sets the font size for the text.
  RushTextBuilder _fontSizedText({
    required double scaleFactor,
    required RushTextBuilder child,
  }) {
    _fontSize = _fontSize ?? 14.0;
    _scaleFactor = scaleFactor;
    return this;
  }

  /// Sets the letter spacing for the text.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.letterSpacing(2.0).apply();
  /// ```
  RushTextBuilder letterSpacing(double val) => this.._letterSpacing = val;

  /// Sets the line height to a custom value.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.lineHeight(1.75).apply();
  /// ```
  RushTextBuilder lineHeight(double val) => this.._lineHeight = val;

  /// Sets the shadow properties for the text.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.shadow(2.0, 2.0, 4.0, Colors.black).apply();
  /// ```
  RushTextBuilder shadow(
    double offsetX,
    double offsetY,
    double blurRadius,
    Color color,
  ) =>
      this
        .._shadowBlur = blurRadius
        .._shadowColor = color
        .._shadowOffset = Offset(offsetX, offsetY);

  /// Sets the blur radius for the text shadow.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.shadowBlur(4.0).apply();
  /// ```
  RushTextBuilder shadowBlur(double blur) => this.._shadowBlur = blur;

  /// Sets the color for the text shadow.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.shadowColor(Colors.black).apply();
  /// ```
  RushTextBuilder shadowColor(Color color) => this.._shadowColor = color;

  /// Sets the offset for the text shadow.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.shadowOffset(2.0, 2.0).apply();
  /// ```
  RushTextBuilder shadowOffset(double dx, double dy) =>
      this.._shadowOffset = Offset(dx, dy);

  @override
  Widget apply({Key? key}) {
    const kColorDefault = 0xFF000000;
    if (!willRender) {
      return const SizedBox.shrink();
    }
    final sdw =
        _shadowBlur != null || _shadowColor != null || _shadowOffset != null
            ? <Shadow>[
                Shadow(
                  blurRadius: _shadowBlur ?? 0.0,
                  color: _shadowColor ?? const Color(kColorDefault),
                  offset: _shadowOffset ?? Offset.zero,
                ),
              ]
            : <Shadow>[];

    final ts = TextStyle(
      color: rushColor,
      fontSize: _fontSize,
      fontStyle: _fontStyle,
      fontFamily: _fontFamily,
      fontWeight: _fontWeight,
      letterSpacing: _letterSpacing,
      decoration: _decoration,
      height: _lineHeight,
      textBaseline: _textBaseline ?? TextBaseline.alphabetic,
      wordSpacing: _wordSpacing,
      shadows: sdw.isEmpty ? null : sdw,
    );

    final textWidget = Text(
      _text!,
      key: key ?? _key,
      textAlign: _textAlign,
      maxLines: _maxLines,
      textScaler:
          _scaleFactor == null ? null : TextScaler.linear(_scaleFactor!),
      style: _themedStyle?.merge(ts) ?? _textStyle?.merge(ts) ?? ts,
      softWrap: _softWrap ?? true,
      overflow: _overflow ?? TextOverflow.clip,
      strutStyle: _strutStyle,
    );

    return textWidget;
  }
}

/// Extension methods for Text class.
extension RushTextExtensions on Text {
  /// Returns a RushTextBuilder instance for fluent text styling.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.xl2.bold.red600.apply();
  /// ```
  RushTextBuilder get rush => RushTextBuilder.existing(data, style, key);
}

/// Extension methods for RushTextBuilder class.
extension RushTextBuilderStyles on RushTextBuilder {
  /// Sets the styles for the text.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.styles(
  ///   bold: true,
  ///   italic: true,
  ///   size: 20.0,
  ///   color: Colors.red,
  /// ).apply();
  /// ```
  RushTextBuilder styles({
    bool? bold,
    bool? italic,
    double? size,
    Color? color,
  }) {
    if (bold != null && bold) {
      _fontWeight = FontWeight.bold;
    }
    if (italic != null && italic) {
      _fontStyle = FontStyle.italic;
    }
    if (size != null) {
      _fontSize = size;
    }
    if (color != null) {
      // ignore: invalid_use_of_protected_member
      rushColor = color;
    }
    return this;
  }
}

/// Extension methods for RushTextBuilder class.
extension RushTextBuilderFontSizeExtension on RushTextBuilder {
  /// Sets the themed style with extra small font size.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.xs.apply();
  /// ```
  RushTextBuilder get xs => this.._scaleFactor = 0.75;

  /// Sets the themed style with small font size.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.sm.apply();
  /// ```
  RushTextBuilder get sm => this.._scaleFactor = 0.875;

  /// Sets the themed style with no font scaling.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.noScale.apply();
  /// ```
  RushTextBuilder get noScale => this.._scaleFactor = 1;

  /// Sets the themed style with large font size.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.lg.apply();
  /// ```
  RushTextBuilder get lg => this.._scaleFactor = 1.125;

  /// Sets the themed style with extra large font size.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.xl.apply();
  /// ```
  RushTextBuilder get xl => this.._scaleFactor = 1.25;

  /// Sets the themed style with 2x extra large font size.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.xl2.apply();
  /// ```
  RushTextBuilder get xl2 => this.._scaleFactor = 1.5;

  /// Sets the themed style with 3x extra large font size.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.xl3.apply();
  /// ```
  RushTextBuilder get xl3 => this.._scaleFactor = 1.875;

  /// Sets the themed style with 4x extra large font size.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.xl4.apply();
  /// ```
  RushTextBuilder get xl4 => this.._scaleFactor = 2.25;

  /// Sets the themed style with 5x extra large font size.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.xl5.apply();
  /// ```
  RushTextBuilder get xl5 => this.._scaleFactor = 3;

  /// Sets the themed style with 6x extra large font size.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.xl6.apply();
  /// ```
  RushTextBuilder get xl6 => this.._scaleFactor = 4;
}

/// Extension methods for RushTextBuilder class.
extension RushTextBuilderFontWeightExtension on RushTextBuilder {
  /// Sets the themed style with hairline font weight.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.hairLine.apply();
  /// ```
  RushTextBuilder get hairLine => this.._fontWeight = FontWeight.w100;

  /// Sets the themed style with thin font weight.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.thin.apply();
  /// ```
  RushTextBuilder get thin => this.._fontWeight = FontWeight.w200;

  /// Sets the themed style with light font weight.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.light.apply();
  /// ```
  RushTextBuilder get light => this.._fontWeight = FontWeight.w300;

  /// Sets the themed style with normal font weight.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.normal.apply();
  /// ```
  RushTextBuilder get normal => this.._fontWeight = FontWeight.w400;

  /// Sets the themed style with medium font weight.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.medium.apply();
  /// ```
  RushTextBuilder get medium => this.._fontWeight = FontWeight.w500;

  /// Sets the themed style with semi-bold font weight.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.semiBold.apply();
  /// ```
  RushTextBuilder get semiBold => this.._fontWeight = FontWeight.w600;

  /// Sets the themed style with bold font weight.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.bold.apply();
  /// ```
  RushTextBuilder get bold => this.._fontWeight = FontWeight.w700;

  /// Sets the themed style with extra bold font weight.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.extraBold.apply();
  /// ```
  RushTextBuilder get extraBold => this.._fontWeight = FontWeight.w800;

  /// Sets the themed style with extra black font weight.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.extraBlack.apply();
  /// ```
  RushTextBuilder get extraBlack => this.._fontWeight = FontWeight.w900;
}

/// Extension methods for RushTextBuilder class.
extension RushTextBuilderTextAlignExtension on RushTextBuilder {
  /// Sets the text alignment to left.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.left.apply();
  /// ```
  RushTextBuilder get left => this.._textAlign = TextAlign.left;

  /// Sets the text alignment to right.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.right.apply();
  /// ```
  RushTextBuilder get right => this.._textAlign = TextAlign.right;

  /// Sets the text alignment to center.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.center.apply();
  /// ```
  RushTextBuilder get center => this.._textAlign = TextAlign.center;

  /// Sets the text alignment to justify.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.justify.apply();
  /// ```
  RushTextBuilder get justify => this.._textAlign = TextAlign.justify;

  /// Sets the text alignment to start.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.start.apply();
  /// ```
  RushTextBuilder get start => this.._textAlign = TextAlign.start;

  /// Sets the text alignment to end.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.end.apply();
  /// ```
  RushTextBuilder get end => this.._textAlign = TextAlign.end;
}

/// Extension methods for RushTextBuilder class.
extension RushTextBuilderFontStyleExtension on RushTextBuilder {
  /// Sets the themed style with italic font.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.italic.apply();
  /// ```
  RushTextBuilder get italic => this.._fontStyle = FontStyle.italic;

  /// Sets the themed style with normal font.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.noStyle.apply();
  /// ```
  RushTextBuilder get noStyle => this.._fontStyle = FontStyle.normal;
}

/// Extension methods for RushTextBuilder class.
extension RushTextBuilderOverflowExtension on RushTextBuilder {
  /// Sets the text overflow to clip.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.clip.apply();
  /// ```
  RushTextBuilder get clip => this.._overflow = TextOverflow.clip;

  /// Sets the text overflow to fade.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.fade.apply();
  /// ```
  RushTextBuilder get fade => this.._overflow = TextOverflow.fade;

  /// Sets the text overflow to ellipsis.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.ellipsis.apply();
  /// ```
  RushTextBuilder get ellipsis => this.._overflow = TextOverflow.ellipsis;

  /// Sets the text overflow to visible.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.visible.apply();
  /// ```
  RushTextBuilder get visible => this.._overflow = TextOverflow.visible;
}

/// Extension methods for RushTextBuilder class.
extension RushTextBuilderLineHeightExtension on RushTextBuilder {
  /// Sets the line height to a tight value.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.heightTight.apply();
  /// ```
  RushTextBuilder get heightTight => this.._lineHeight = 0.75;

  /// Sets the line height to a snug value.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.heightSnug.apply();
  /// ```
  RushTextBuilder get heightSnug => this.._lineHeight = 0.875;

  /// Sets the line height to a relaxed value.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.heightRelaxed.apply();
  /// ```
  RushTextBuilder get heightRelaxed => this.._lineHeight = 1.25;

  /// Sets the line height to a loose value.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.heightLoose.apply();
  /// ```
  RushTextBuilder get heightLoose => this.._lineHeight = 1.5;
}

/// Extension methods for RushTextBuilder class.
extension RushTextBuilderTextDecorationExtension on RushTextBuilder {
  /// Sets the themed style with underline decoration.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.underline.apply();
  /// ```

  RushTextBuilder get underline => this.._decoration = TextDecoration.underline;

  /// Sets the themed style with line through decoration.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.lineThrough.apply();
  /// ```
  RushTextBuilder get lineThrough =>
      this.._decoration = TextDecoration.lineThrough;

  /// Sets the themed style with overline decoration.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.overline.apply();
  /// ```
  RushTextBuilder get overline => this.._decoration = TextDecoration.overline;

  /// Sets the themed style with no text decoration.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.noDecoration.apply();
  /// ```
  RushTextBuilder get noDecoration => this.._decoration = TextDecoration.none;
}

/// Extension methods for RushTextBuilder class.
extension RushTextBuilderLetterSpacingExtension on RushTextBuilder {
  /// Sets the themed style with the tightest letter spacing.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.tightest.apply();
  /// ```
  RushTextBuilder get tightest => this.._letterSpacing = -3.0;

  /// Sets the themed style with tighter letter spacing.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.tighter.apply();
  /// ```
  RushTextBuilder get tighter => this.._letterSpacing = -2.0;

  /// Sets the themed style with tight letter spacing.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.tight.apply();
  /// ```
  RushTextBuilder get tight => this.._letterSpacing = -1.0;

  /// Sets the themed style with wide letter spacing.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.wide.apply();
  /// ```
  RushTextBuilder get wide => this.._letterSpacing = 1.0;

  /// Sets the themed style with wider letter spacing.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.wider.apply();
  /// ```
  RushTextBuilder get wider => this.._letterSpacing = 2.0;

  /// Sets the themed style with widest letter spacing.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.widest.apply();
  /// ```
  RushTextBuilder get widest => this.._letterSpacing = 3.0;
}

/// Extension methods for RushTextBuilder class to manipulate strings.

extension RushTextBuilderStringExtension on RushTextBuilder {
  //
  /// Sets the themed style with uppercase text.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.uppercase.apply(); // Output: HELLO WORLD
  /// ```
  RushTextBuilder get uppercase => this.._text = _text!.toUpperCase();

  /// Sets the themed style with lowercase text.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.lowercase.apply();
  /// ```
  RushTextBuilder get lowercase => this.._text = _text!.toLowerCase();

  /// Sets the themed style with capitalized text.
  ///
  /// Example:
  /// ```dart
  /// Text('hello world').rush.capitalize.apply(); // Output: Hello world
  /// ```
  RushTextBuilder get capitalize => this.._text = _text!.capitalize();

  /// Hides partial text by applying appropriate ellipsis.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.hidePartial.apply(); // Output: Hello...
  /// ```
  RushTextBuilder get hidePartial => this.._text = _text!.hidePartial();
}

/// Extension methods for RushTextBuilder class to manipulate theme.
extension RushTextBuilderThemedStyleExtension on RushTextBuilder {
  /// Sets the themed style for displaying large text.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.displayLarge(context).apply();
  /// ```
  RushTextBuilder displayLarge(BuildContext context) {
    _themedStyle = context.displayLarge;
    return this;
  }

  /// Sets the themed style for displaying medium text.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.displayMedium(context).apply();
  /// ```
  RushTextBuilder displayMedium(BuildContext context) {
    _themedStyle = context.displayMedium;
    return this;
  }

  /// Sets the themed style for displaying small text.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.displaySmall(context).apply();
  /// ```
  RushTextBuilder displaySmall(BuildContext context) {
    _themedStyle = context.displaySmall;
    return this;
  }

  /// Sets the themed style for large headlines.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.headlineLarge(context).apply();
  /// ```
  RushTextBuilder headlineLarge(BuildContext context) {
    _themedStyle = context.headlineLarge;
    return this;
  }

  /// Sets the themed style for medium headlines.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.headlineMedium(context).apply();
  /// ```
  RushTextBuilder headlineMedium(BuildContext context) {
    _themedStyle = context.headlineMedium;
    return this;
  }

  /// Sets the themed style for small headlines.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.headlineSmall(context).apply();
  /// ```
  RushTextBuilder headlineSmall(BuildContext context) {
    _themedStyle = context.headlineSmall;
    return this;
  }

  /// Sets the themed style for large titles.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.titleLarge(context).apply();
  /// ```
  RushTextBuilder titleLarge(BuildContext context) {
    _themedStyle = context.titleLarge;
    return this;
  }

  /// Sets the themed style for medium titles.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.titleMedium(context).apply();
  /// ```
  RushTextBuilder titleMedium(BuildContext context) {
    _themedStyle = context.titleMedium;
    return this;
  }

  /// Sets the themed style for small titles.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.titleSmall(context).apply();
  /// ```
  RushTextBuilder titleSmall(BuildContext context) {
    _themedStyle = context.titleSmall;
    return this;
  }

  /// Sets the themed style for large body text.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.bodyLarge(context).apply();
  /// ```
  RushTextBuilder bodyLarge(BuildContext context) {
    _themedStyle = context.bodyLarge;
    return this;
  }

  /// Sets the themed style for medium body text.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.bodyMedium(context).apply();
  /// ```
  RushTextBuilder bodyMedium(BuildContext context) {
    _themedStyle = context.bodyMedium;
    return this;
  }

  /// Sets the themed style for small body text.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.bodySmall(context).apply();
  /// ```
  RushTextBuilder bodySmall(BuildContext context) {
    _themedStyle = context.bodySmall;
    return this;
  }

  /// Sets the themed style for large labels.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.labelLarge(context).apply();
  /// ```
  RushTextBuilder labelLarge(BuildContext context) {
    _themedStyle = context.labelLarge;
    return this;
  }

  /// Sets the themed style for medium labels.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.labelMedium(context).apply();
  /// ```
  RushTextBuilder labelMedium(BuildContext context) {
    _themedStyle = context.labelMedium;
    return this;
  }

  /// Sets the themed style for small labels.
  ///
  /// Example:
  /// ```dart
  /// Text('Hello World').rush.labelSmall(context).apply();
  /// ```
  RushTextBuilder labelSmall(BuildContext context) {
    _themedStyle = context.labelSmall;
    return this;
  }
}
