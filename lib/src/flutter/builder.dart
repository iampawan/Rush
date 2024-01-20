// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';

/// An abstract class that defines a builder for a widget.
/// The type of widget is defined by the generic parameter [T].
abstract class RushWidgetBuilder<T extends Widget> {
  /// Builds a widget of type [T].
  T apply();
}

/// An abstract class that defines a builder for a widget
///  that requires a [BuildContext].
/// The type of widget is defined by the generic parameter [T].
abstract class RushWidgetContextBuilder<T extends Widget> {
  /// Builds a widget of type [T] with the given [BuildContext].

  T apply(BuildContext context);
}

/// An abstract class that defines a builder for a [TextSpan] widget.
abstract class RushTextSpanBuilder {
  /// Builds a [TextSpan] widget.

  TextSpan apply();
}
