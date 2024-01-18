// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';

/// An abstract class that defines a builder for a widget.
/// The type of widget is defined by the generic parameter [T].
abstract class RushWidgetBuilder<T extends Widget> {
  /// Builds a widget of type [T].
  /// An optional [Key] can be provided.
  T apply({Key? key});
}

/// An abstract class that defines a builder for a widget
///  that requires a [BuildContext].
/// The type of widget is defined by the generic parameter [T].
abstract class RushWidgetContextBuilder<T extends Widget> {
  /// Builds a widget of type [T] with the given [BuildContext].
  /// An optional [Key] can be provided.
  T apply(BuildContext context, {Key? key});
}

/// An abstract class that defines a builder for a [TextSpan] widget.
abstract class RushTextSpanBuilder {
  /// Builds a [TextSpan] widget.
  /// An optional [Key] can be provided.
  TextSpan apply({Key? key});
}
