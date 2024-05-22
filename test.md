# RushPaddingExtensions Documentation

The `RushPaddingExtensions` class is part of the Rush library and provides a convenient and efficient way to add padding to widgets in Flutter. It encapsulates the complexity of creating padding widgets while offering a fluent and intuitive interface for developers.

## Overview

The philosophy behind `RushPaddingExtensions` is to allow developers to focus on the content and layout of their widgets, rather than the details of widget creation. It provides a simple and expressive way to define padding, making it easier to create consistent and beautiful UIs.

## Usage

To use `RushPaddingExtensions`, you can access it through the extension methods on any `Widget`.

### Example

```dart
Text('Hello World').p16().apply();
```

## Methods

### `p0({Key? key})`

Gives 0 padding from all sides.

**Example:**

```dart
Text('Hello World').p0().apply();
```

### `p1({Key? key})`

Gives 1dp padding from all sides.

**Example:**

```dart
Text('Hello World').p1().apply();
```

### `p2({Key? key})`

Gives 2dp padding from all sides.

**Example:**

```dart
Text('Hello World').p2().apply();
```

### `p4({Key? key})`

Gives 4dp padding from all sides.

**Example:**

```dart
Text('Hello World').p4().apply();
```

### `p8({Key? key})`

Gives 8dp padding from all sides.

**Example:**

```dart
Text('Hello World').p8().apply();
```

### `p12({Key? key})`

Gives 12dp padding from all sides.

**Example:**

```dart
Text('Hello World').p12().apply();
```

### `p16({Key? key})`

Gives 16dp padding from all sides.

**Example:**

```dart
Text('Hello World').p16().apply();
```

### `p20({Key? key})`

Gives 20dp padding from all sides.

**Example:**

```dart
Text('Hello World').p20().apply();
```

### `p24({Key? key})`

Gives 24dp padding from all sides.

**Example:**

```dart
Text('Hello World').p24().apply();
```

### `p32({Key? key})`

Gives 32dp padding from all sides.

**Example:**

```dart
Text('Hello World').p32().apply();
```

### `p64({Key? key})`

Gives 64dp padding from all sides.

**Example:**

```dart
Text('Hello World').p64().apply();
```

### `py0({Key? key})`

Gives 0 padding vertically.

**Example:**

```dart
Text('Hello World').py0().apply();
```

### `py1({Key? key})`

Gives 1dp padding vertically.

**Example:**

```dart
Text('Hello World').py1().apply();
```

### `py2({Key? key})`

Gives 2dp padding vertically.

**Example:**

```dart
Text('Hello World').py2().apply();
```

### `py4({Key? key})`

Gives 4dp padding vertically.

**Example:**

```dart
Text('Hello World').py4().apply();
```

### `py8({Key? key})`

Gives 8dp padding vertically.

**Example:**

```dart
Text('Hello World').py8().apply();
```

### `py12({Key? key})`

Gives 12dp padding vertically.

**Example:**

```dart
Text('Hello World').py12().apply();
```

### `py16({Key? key})`

Gives 16dp padding vertically.

**Example:**

```dart
Text('Hello World').py16().apply();
```

### `py20({Key? key})`

Gives 20dp padding vertically.

**Example:**

```dart
Text('Hello World').py20().apply();
```

### `py24({Key? key})`

Gives 24dp padding vertically.

**Example:**

```dart
Text('Hello World').py24().apply();
```

### `py32({Key? key})`

Gives 32dp padding vertically.

**Example:**

```dart
Text('Hello World').py32().apply();
```

### `py64({Key? key})`

Gives 64dp padding vertically.

**Example:**

```dart
Text('Hello World').py64().apply();
```

### `py(double value, {Key? key})`

Gives custom padding vertically.

**Example:**

```dart
Text('Hello World').py(10).apply();
```

### `px0({Key? key})`

Gives 0 padding horizontally.

**Example:**

```dart
Text('Hello World').px0().apply();
```

### `px1({Key? key})`

Gives 1dp padding horizontally.

**Example:**

```dart
Text('Hello World').px1().apply();
```

### `px2({Key? key})`

Gives 2dp padding horizontally.

**Example:**

```dart
Text('Hello World').px2().apply();
```

### `px4({Key? key})`

Gives 4dp padding horizontally.

**Example:**

```dart
Text('Hello World').px4().apply();
```

### `px8({Key? key})`

Gives 8dp padding horizontally.

**Example:**

```dart
Text('Hello World').px8().apply();
```

### `px12({Key? key})`

Gives 12dp padding horizontally.

**Example:**

```dart
Text('Hello World').px12().apply();
```

### `px16({Key? key})`

Gives 16dp padding horizontally.

**Example:**

```dart
Text('Hello World').px16().apply();
```

### `px20({Key? key})`

Gives 20dp padding horizontally.

**Example:**

```dart
Text('Hello World').px20().apply();
```

### `px24({Key? key})`

Gives 24dp padding horizontally.

**Example:**

```dart
Text('Hello World').px24().apply();
```

### `px32({Key? key})`

Gives 32dp padding horizontally.

**Example:**

```dart
Text('Hello World').px32().apply();
```

### `px64({Key? key})`

Gives 64dp padding horizontally.

**Example:**

```dart
Text('Hello World').px64().apply();
```

### `px(double value, {Key? key})`

Gives custom padding horizontally.

**Example:**

```dart
Text('Hello World').px(10).apply();
```

### `p(double value, {Key? key})`

Gives custom padding from all sides by `value`.

**Example:**

```dart
Text('Hello World').p(10).apply();
```

### `pLTRB(double left, double top, double right, double bottom, {Key? key})`

Gives custom padding from all sides by `left`, `top`, `right`, and `bottom`.

**Example:**

```dart
Text('Hello World').pLTRB(10, 20, 10, 20).apply();
```

### `pSymmetric({Key? key, double v = 0.0, double h = 0.0})`

Gives custom padding symmetrically by `v` (vertical) and `h` (horizontal).

**Example:**

```dart
Text('Hello World').pSymmetric(v: 10, h: 20).apply();
```

### `pOnly({Key? key, double left = 0.0, double right = 0.0, double top = 0.0, double bottom = 0.0})`

Gives custom padding by only `left`, `right`, `top`, and `bottom`.

**Example:**

```dart
Text('Hello World').pOnly(left: 10, right: 20, top: 30, bottom: 40).apply();
```

## Chaining Mechanism

The power of the `RushPaddingExtensions` lies in its ability to chain multiple padding methods together, allowing for concise and readable code.

### Example

```dart
Text('Hello World')
  .p16()
  .px8()
  .py4()
  .apply();
```

In this example, the text widget is styled with 16dp padding from all sides, 8dp padding horizontally, and 4dp padding vertically, all in a single chain of method calls.

## Conclusion

`RushPaddingExtensions` provides a powerful and expressive way to add padding to widgets in Flutter. With its fluent interface and extensive set of methods, developers can easily create visually appealing and consistent layouts in their applications.

By leveraging `RushPaddingExtensions`, developers can focus on the content and layout of their widgets while the library takes care of the underlying widget creation and configuration. This leads to more readable and maintainable code, as well as faster development cycles.

## Whether you need to customize the padding from all sides, vertically, horizontally, or apply advanced padding configurations, `RushPaddingExtensions` has you covered. It is a valuable tool in any Flutter developer's toolkit for creating beautiful and engaging user interfaces.
