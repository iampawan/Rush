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

@protected
class RushTextBuilder extends RushWidgetBuilder<Widget>
    with RushColorMixin<RushTextBuilder>, RushRenderMixin<RushTextBuilder> {
  RushTextBuilder.existing(String this._text, this._textStyle) {
    childToColor = this;
    childForRender = this;
  }

  String? _text;
  String? _fontFamily;

  double? _scaleFactor;
  double? _fontSize;
  double? _minFontSize;
  double? _letterSpacing;
  double? _lineHeight;
  double? _maxFontSize;
  double? _stepGranularity;
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
  Widget? _replacement;
  bool? _softWrap;
  bool? _wrapWords;
  double _shadowBlur = 0;
  Color _shadowColor = const Color(0xFF000000);
  Offset _shadowOffset = Offset.zero;

  bool _isIntrinsic = false;

  RushTextBuilder text(String text) {
    _text = text;
    return this;
  }

  RushTextBuilder color(Color? color) {
    velocityColor = color;
    return this;
  }

  RushTextBuilder hexColor(String colorHex) =>
      this..velocityColor = Rush.hexToColor(colorHex);

  RushTextBuilder get isIntrinsic => this.._isIntrinsic = true;

  RushTextBuilder maxLines(int lines) {
    _maxLines = lines;
    return this;
  }

  RushTextBuilder fontFamily(String family) {
    _fontFamily = family;
    return this;
  }

  RushTextBuilder softWrap(bool softWrap) {
    _softWrap = softWrap;
    return this;
  }

  RushTextBuilder wrapWords(bool wrapWords) {
    _wrapWords = wrapWords;
    return this;
  }

  RushTextBuilder textBaseLine(TextBaseline baseline) {
    _textBaseline = baseline;
    return this;
  }

  RushTextBuilder wordSpacing(double spacing) {
    _wordSpacing = spacing;
    return this;
  }

  RushTextBuilder overflow(TextOverflow overflow) {
    _overflow = overflow;
    return this;
  }

  RushTextBuilder minFontSize(double minFontSize) {
    _minFontSize = minFontSize;
    return this;
  }

  RushTextBuilder maxFontSize(double maxFontSize) {
    _maxFontSize = maxFontSize;
    return this;
  }

  RushTextBuilder stepGranularity(double stepGranularity) {
    _stepGranularity = stepGranularity;
    return this;
  }

  RushTextBuilder overflowReplacement(Widget overflowReplacement) {
    _replacement = overflowReplacement;
    return this;
  }

  RushTextBuilder fontWeight(FontWeight weight) {
    _fontWeight = weight;
    return this;
  }

  RushTextBuilder textStyle(TextStyle? style) {
    _themedStyle = style;
    return this;
  }

  RushTextBuilder strutStyle(StrutStyle? style) {
    _strutStyle = style;
    return this;
  }

  // Give custom text alignment
  RushTextBuilder align(TextAlign align) => this.._textAlign = align;

  RushTextBuilder get center => this.._textAlign = TextAlign.center;

  RushTextBuilder get start => this.._textAlign = TextAlign.start;

  RushTextBuilder get end => this.._textAlign = TextAlign.end;

  RushTextBuilder get justify => this.._textAlign = TextAlign.justify;

  RushTextBuilder get fade => this.._overflow = TextOverflow.fade;

  RushTextBuilder get ellipsis => this.._overflow = TextOverflow.ellipsis;

  RushTextBuilder get visible => this.._overflow = TextOverflow.visible;

  RushTextBuilder size(double? size) => this.._fontSize = size;

  RushTextBuilder displayLarge(BuildContext context) {
    _themedStyle = context.textTheme.displayLarge;
    return this;
  }

  RushTextBuilder displayMedium(BuildContext context) {
    _themedStyle = context.textTheme.displayMedium;
    return this;
  }

  RushTextBuilder displaySmall(BuildContext context) {
    _themedStyle = context.textTheme.displaySmall;
    return this;
  }

  RushTextBuilder headlineLarge(BuildContext context) {
    _themedStyle = context.textTheme.headlineLarge;
    return this;
  }

  RushTextBuilder headlineMedium(BuildContext context) {
    _themedStyle = context.textTheme.headlineMedium;
    return this;
  }

  RushTextBuilder headlineSmall(BuildContext context) {
    _themedStyle = context.textTheme.headlineSmall;
    return this;
  }

  RushTextBuilder titleLarge(BuildContext context) {
    _themedStyle = context.textTheme.titleLarge;
    return this;
  }

  RushTextBuilder titleMedium(BuildContext context) {
    _themedStyle = context.textTheme.titleMedium;
    return this;
  }

  RushTextBuilder titleSmall(BuildContext context) {
    _themedStyle = context.textTheme.titleSmall;
    return this;
  }

  RushTextBuilder bodyLarge(BuildContext context) {
    _themedStyle = context.textTheme.bodyLarge;
    return this;
  }

  RushTextBuilder bodyMedium(BuildContext context) {
    _themedStyle = context.textTheme.bodyMedium;
    return this;
  }

  RushTextBuilder bodySmall(BuildContext context) {
    _themedStyle = context.textTheme.bodySmall;
    return this;
  }

  RushTextBuilder labelLarge(BuildContext context) {
    _themedStyle = context.textTheme.labelLarge;
    return this;
  }

  RushTextBuilder labelMedium(BuildContext context) {
    _themedStyle = context.textTheme.labelMedium;
    return this;
  }

  RushTextBuilder labelSmall(BuildContext context) {
    _themedStyle = context.textTheme.labelSmall;
    return this;
  }

  RushTextBuilder get xs => _fontSizedText(child: this, scaleFactor: 0.75);

  RushTextBuilder get sm => _fontSizedText(child: this, scaleFactor: 0.875);

  RushTextBuilder get noScale => _fontSizedText(child: this, scaleFactor: 1);

  RushTextBuilder get lg => _fontSizedText(child: this, scaleFactor: 1.125);

  RushTextBuilder get xl => _fontSizedText(child: this, scaleFactor: 1.25);

  RushTextBuilder get xl2 => _fontSizedText(child: this, scaleFactor: 1.5);

  RushTextBuilder get xl3 => _fontSizedText(child: this, scaleFactor: 1.875);

  RushTextBuilder get xl4 => _fontSizedText(child: this, scaleFactor: 2.25);

  RushTextBuilder get xl5 => _fontSizedText(child: this, scaleFactor: 3);

  RushTextBuilder get xl6 => _fontSizedText(child: this, scaleFactor: 4);

  RushTextBuilder scale(double value) =>
      _fontSizedText(child: this, scaleFactor: value);

  RushTextBuilder _fontSizedText({
    required double scaleFactor,
    required RushTextBuilder child,
  }) {
    _fontSize = _fontSize ?? 14.0;
    _scaleFactor = scaleFactor;
    return this;
  }

  RushTextBuilder get hairLine => _fontWeightedText(weight: FontWeight.w100);

  RushTextBuilder get thin => _fontWeightedText(weight: FontWeight.w200);

  RushTextBuilder get light => _fontWeightedText(weight: FontWeight.w300);

  RushTextBuilder get normal => _fontWeightedText(weight: FontWeight.w400);

  RushTextBuilder get medium => _fontWeightedText(weight: FontWeight.w500);

  RushTextBuilder get semiBold => _fontWeightedText(weight: FontWeight.w600);

  RushTextBuilder get bold => _fontWeightedText(weight: FontWeight.w700);

  RushTextBuilder get extraBold => _fontWeightedText(weight: FontWeight.w800);

  RushTextBuilder get extraBlack => _fontWeightedText(weight: FontWeight.w900);

  RushTextBuilder _fontWeightedText({required FontWeight weight}) {
    _fontWeight = weight;
    return this;
  }

  RushTextBuilder get italic => this.._fontStyle = FontStyle.italic;

  RushTextBuilder get tightest => this.._letterSpacing = -3.0;

  RushTextBuilder get tighter => this.._letterSpacing = -2.0;

  RushTextBuilder get tight => this.._letterSpacing = -1.0;

  RushTextBuilder get wide => this.._letterSpacing = 1.0;

  RushTextBuilder get wider => this.._letterSpacing = 2.0;

  RushTextBuilder get widest => this.._letterSpacing = 3.0;

  RushTextBuilder letterSpacing(double val) => this.._letterSpacing = val;

  RushTextBuilder get underline => this.._decoration = TextDecoration.underline;

  RushTextBuilder get lineThrough =>
      this.._decoration = TextDecoration.lineThrough;

  RushTextBuilder get overline => this.._decoration = TextDecoration.overline;

  RushTextBuilder get uppercase => this.._text = _text!.toUpperCase();

  RushTextBuilder get lowercase => this.._text = _text!.toLowerCase();

  // RushTextBuilder get capitalize =>
  //     this.._text = _text!.trim().allWordsCapitilize();

  RushTextBuilder get hidePartial => this.._text = _text!.hidePartial();

  RushTextBuilder get heightTight => this.._lineHeight = 0.75;

  RushTextBuilder get heightSnug => this.._lineHeight = 0.875;

  RushTextBuilder get heightRelaxed => this.._lineHeight = 1.25;

  RushTextBuilder get heightLoose => this.._lineHeight = 1.5;

  RushTextBuilder lineHeight(double val) => this.._lineHeight = val;

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

  RushTextBuilder shadowBlur(double blur) => this.._shadowBlur = blur;

  RushTextBuilder shadowColor(Color color) => this.._shadowColor = color;

  RushTextBuilder shadowOffset(double dx, double dy) =>
      this.._shadowOffset = Offset(dx, dy);

  @override
  Widget apply({Key? key}) {
    if (!willRender) {
      return const SizedBox.shrink();
    }
    final sdw = [
      Shadow(
        blurRadius: _shadowBlur,
        color: _shadowColor,
        offset: _shadowOffset,
      ),
    ];

    final ts = TextStyle(
      color: velocityColor,
      fontSize: _fontSize,
      fontStyle: _fontStyle,
      fontFamily: _fontFamily,
      fontWeight: _fontWeight,
      letterSpacing: _letterSpacing,
      decoration: _decoration,
      height: _lineHeight,
      textBaseline: _textBaseline ?? TextBaseline.alphabetic,
      wordSpacing: _wordSpacing,
      shadows: _shadowBlur > 0 ? sdw : null,
    );

    final textWidget = Text(
      _text!,
      key: key,
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

extension RushTextExtensions on Text {
  RushTextBuilder get rush => RushTextBuilder.existing(data!, style);
}
