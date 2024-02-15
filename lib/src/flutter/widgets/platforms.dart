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

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// A widget that creates a platform specific widget
/// based on the current platform.
///
/// class PlatformAppBar extends RushPlatform<AppBar, CupertinoNavigationBar,
///  AppBar, AppBar> {
///   final Widget title;
///   final Widget leading;
///   PlatformAppBar({
///     this.leading,
///     this.title,
///   });
///
///   @override
///   CupertinoNavigationBar createIosWidget(BuildContext context) =>
///        CupertinoNavigationBar(
///         leading: leading,
///         middle: title,
///       );
///
///   @override
///   AppBar createAndroidWidget(BuildContext context) =>  AppBar(
///         leading: leading,
///         title: title,
///       );
///   @override
///   AppBar createWebWidget(BuildContext context) =>  AppBar(
///         leading: leading,
///         title: title,
///       );
///   @override
///   AppBar createDesktopWidget(BuildContext context) =>  AppBar(
///         leading: leading,
///         title: title,
///       );
///}

///
abstract class RushPlatform<A extends Widget, I extends Widget,
    W extends Widget, D extends Widget> extends StatelessWidget {
  /// Creates a RushPlatform widget.
  const RushPlatform({super.key});

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return createWebWidget(context);
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return createAndroidWidget(context);
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return createIosWidget(context);
    } else if (defaultTargetPlatform == TargetPlatform.macOS ||
        defaultTargetPlatform == TargetPlatform.linux ||
        defaultTargetPlatform == TargetPlatform.windows) {
      return createDesktopWidget(context);
    }
    // platform not supported returns an empty widget
    return const Offstage();
  }

  /// Creates an Android widget.
  A createAndroidWidget(BuildContext context);

  /// Creates an iOS widget.
  I createIosWidget(BuildContext context);

  /// Creates a web widget.
  W createWebWidget(BuildContext context);

  /// Creates a desktop widget.
  D createDesktopWidget(BuildContext context);
}
