// /*
//  * Copyright 2024 Pawan Kumar. All rights reserved.
//  * Licensed under the Apache License, Version 2.0 (the "License");
//  * you may not use this file except in compliance with the License.
//  * You may obtain a copy of the License at
//  * http://www.apache.org/licenses/LICENSE-2.0
//  * Unless required by applicable law or agreed to in writing, software
//  * distributed under the License is distributed on an "AS IS" BASIS,
//  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  * See the License for the specific language governing permissions and
//  * limitations under the License.
//  */

// import 'package:flutter/material.dart';
// import 'package:rush/src/flutter/builder.dart';

// @protected
// class RushTextFieldBuilder extends RushWidgetBuilder<Widget> {
//   RushTextFieldBuilder({required this.textField}) {
//     isDisabled = textField.enabled == false;
//   }

//   final TextField textField;

//   InputDecoration _customDecoration = const InputDecoration();

//   final TextEditingController _controller = TextEditingController();

//   bool isInvalid = false;
//   bool isRequired = false;
//   bool? isDisabled;

//   RushTextFieldBuilder hint(String hintText) {
//     _customDecoration = _customDecoration.copyWith(hintText: hintText);
//     return this;
//   }

//   RushTextFieldBuilder label(String labelText) {
//     _customDecoration = _customDecoration.copyWith(labelText: labelText);
//     return this;
//   }

//   RushTextFieldBuilder prefixIcon(Widget icon) {
//     _customDecoration = _customDecoration.copyWith(prefixIcon: icon);
//     return this;
//   }

//   RushTextFieldBuilder suffixIcon(Widget icon) {
//     _customDecoration = _customDecoration.copyWith(
//       suffixIcon: icon,
//     );

//     return this;
//   }

//   RushTextFieldBuilder get required {
//     isRequired = true;
//     outlined();

//     return this;
//   }

//   RushTextFieldBuilder get disabled {
//     isDisabled = true;
//     outlined();
//     labelStyle();

//     return this;
//   }

//   RushTextFieldBuilder labelStyle({TextStyle? style}) {
//     _customDecoration = _customDecoration.copyWith(
//       labelStyle: style ??
//           TextStyle(
//             color: isDisabled! ? Colors.grey : Colors.black,
//           ),
//     );
//     return this;
//   }

//   Color _getBorderColor() {
//     if (isInvalid) return Colors.red;
//     if (isDisabled!) return Colors.grey;
//     if (isRequired) return Colors.blue;
//     return Colors.transparent; // Default color
//   }

//   RushTextFieldBuilder outlined() {
//     _customDecoration = _customDecoration.copyWith(
//       border: const OutlineInputBorder(),
//       enabledBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: _getBorderColor()),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: _getBorderColor(), width: 2),
//       ),
//     );
//     return this;
//   }

//   @override
//   Widget apply() {
//     print(textField.decoration);
//     if (textField.decoration.toString() == 'InputDecoration()') {
//       return TextField(
//         decoration: _customDecoration,
//         key: textField.key,
//         controller: _controller,
//         enabled: !isDisabled!,
//         autocorrect: textField.autocorrect,
//         autofocus: textField.autofocus,
//         cursorColor: textField.cursorColor,
//         cursorHeight: textField.cursorHeight,
//         cursorRadius: textField.cursorRadius,
//         cursorWidth: textField.cursorWidth,
//         enableSuggestions: textField.enableSuggestions,
//         enableInteractiveSelection: textField.enableInteractiveSelection,
//         autofillHints: textField.autofillHints,
//         buildCounter: textField.buildCounter,
//         dragStartBehavior: textField.dragStartBehavior,
//         enableIMEPersonalizedLearning:
//                textField.enableIMEPersonalizedLearning,
//         canRequestFocus: textField.canRequestFocus,
//         clipBehavior: textField.clipBehavior,
//         contentInsertionConfiguration:
// textField.contentInsertionConfiguration,
//         focusNode: textField.focusNode,
//         keyboardType: textField.keyboardType,
//         keyboardAppearance: textField.keyboardAppearance,
//         maxLength: textField.maxLength,
//         maxLengthEnforcement: textField.maxLengthEnforcement,
//         maxLines: textField.maxLines,
//         obscuringCharacter: textField.obscuringCharacter,
//         onAppPrivateCommand: textField.onAppPrivateCommand,
//         onEditingComplete: textField.onEditingComplete,
//         onSubmitted: textField.onSubmitted,
//         contextMenuBuilder: textField.contextMenuBuilder,
//         scrollController: textField.scrollController,
//         scrollPhysics: textField.scrollPhysics,
//         scrollPadding: textField.scrollPadding,
//         selectionControls: textField.selectionControls,
//         showCursor: textField.showCursor,
//         smartDashesType: textField.smartDashesType,
//         smartQuotesType: textField.smartQuotesType,
//         strutStyle: textField.strutStyle,
//         textCapitalization: textField.textCapitalization,
//         textDirection: textField.textDirection,
//         textInputAction: textField.textInputAction,
//         readOnly: textField.readOnly,
//         cursorOpacityAnimates: textField.cursorOpacityAnimates,
//         selectionHeightStyle: textField.selectionHeightStyle,
//         selectionWidthStyle: textField.selectionWidthStyle,
//         textAlignVertical: textField.textAlignVertical,
//         style: textField.style,
//         textAlign: textField.textAlign,
//         expands: textField.expands,
//         minLines: textField.minLines,
//         inputFormatters: textField.inputFormatters,
//         onTap: textField.onTap,
//         magnifierConfiguration: textField.magnifierConfiguration,
//         mouseCursor: textField.mouseCursor,
//         obscureText: textField.obscureText,
//         onChanged: textField.onChanged,
//         onTapOutside: textField.onTapOutside,
//         restorationId: textField.restorationId,
//         scribbleEnabled: textField.scribbleEnabled,
//         spellCheckConfiguration: textField.spellCheckConfiguration,
//         undoController: textField.undoController,
//       );
//     }
//     return TextField(
//       decoration: textField.decoration!.copyWith(
//         hintText: _customDecoration.hintText,
//         labelText: _customDecoration.labelText,
//         prefixIcon: _customDecoration.prefixIcon,
//         suffixIcon: _customDecoration.suffixIcon,
//       ),
//     );
//   }
// }

// extension RushTextFieldExtension on TextField {
//   /// Adds a [TextField] to the widget tree.
//   RushTextFieldBuilder get rush => RushTextFieldBuilder(textField: this);
// }
