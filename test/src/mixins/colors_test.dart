import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rush/rush.dart';
import 'package:rush/src/flutter/mixins/colors.dart';

void main() {
  group('Colors mixin tests', () {
    final rushColorMixin = _RushColorMixin<Color>();

    test('white should return the correct color', () {
      const expectedColor = Colors.white;
      rushColorMixin.childToColor = Rush.white;
      expect(rushColorMixin.white, equals(expectedColor));
    });
    test('black should return the correct color', () {
      const expectedColor = Colors.black;
      rushColorMixin.childToColor = Rush.black;
      expect(rushColorMixin.black, equals(expectedColor));
    });

    test('transparent should return the correct color', () {
      const expectedColor = Colors.transparent;
      rushColorMixin.childToColor = Rush.transparent;
      expect(rushColorMixin.transparent, equals(expectedColor));
    });

    test('gray50 should return the correct color', () {
      const expectedColor = Color(0xFFf9fafb);
      rushColorMixin.childToColor = Rush.gray50;
      expect(rushColorMixin.gray50, equals(expectedColor));
    });

    test('gray100 should return the correct color', () {
      const expectedColor = Color(0xFFf3f4f6);
      rushColorMixin.childToColor = Rush.gray100;
      expect(rushColorMixin.gray100, equals(expectedColor));
    });

    test('gray200 should return the correct color', () {
      const expectedColor = Color(0xFFe5e7eb);
      rushColorMixin.childToColor = Rush.gray200;
      expect(rushColorMixin.gray200, equals(expectedColor));
    });

    test('gray300 should return the correct color', () {
      const expectedColor = Color(0xFFd1d5db);
      rushColorMixin.childToColor = Rush.gray300;
      expect(rushColorMixin.gray300, equals(expectedColor));
    });

    test('gray400 should return the correct color', () {
      const expectedColor = Color(0xFF9ca3af);
      rushColorMixin.childToColor = Rush.gray400;
      expect(rushColorMixin.gray400, equals(expectedColor));
    });

    test('gray500 should return the correct color', () {
      const expectedColor = Color(0xFF6b7280);
      rushColorMixin.childToColor = Rush.gray500;
      expect(rushColorMixin.gray500, equals(expectedColor));
    });

    test('gray600 should return the correct color', () {
      rushColorMixin.childToColor = Rush.gray600;
      const expectedColor = Color(0xFF4b5563);
      expect(rushColorMixin.gray600, equals(expectedColor));
    });

    test('gray700 should return the correct color', () {
      rushColorMixin.childToColor = Rush.gray700;
      const expectedColor = Color(0xFF374151);
      expect(rushColorMixin.gray700, equals(expectedColor));
    });

    test('gray800 should return the correct color', () {
      rushColorMixin.childToColor = Rush.gray800;
      const expectedColor = Color(0xFF1f2937);
      expect(rushColorMixin.gray800, equals(expectedColor));
    });

    test('gray900 should return the correct color', () {
      rushColorMixin.childToColor = Rush.gray900;
      const expectedColor = Color(0xFF111827);
      expect(rushColorMixin.gray900, equals(expectedColor));
    });

    test('stone50 should return the correct color', () {
      rushColorMixin.childToColor = Rush.stone50;
      const expectedColor = Color(0xFFFAFAF9);
      expect(rushColorMixin.stone50, equals(expectedColor));
    });

    test('stone100 should return the correct color', () {
      rushColorMixin.childToColor = Rush.stone100;
      const expectedColor = Color(0xFFF5F5F4);
      expect(rushColorMixin.stone100, equals(expectedColor));
    });

    test('stone200 should return the correct color', () {
      rushColorMixin.childToColor = Rush.stone200;
      const expectedColor = Color(0xFFE7E5E4);
      expect(rushColorMixin.stone200, equals(expectedColor));
    });

    test('stone300 should return the correct color', () {
      rushColorMixin.childToColor = Rush.stone300;
      const expectedColor = Color(0xFFD6D3D1);
      expect(rushColorMixin.stone300, equals(expectedColor));
    });

    test('stone400 should return the correct color', () {
      rushColorMixin.childToColor = Rush.stone400;
      const expectedColor = Color(0xFFA8A29E);
      expect(rushColorMixin.stone400, equals(expectedColor));
    });

    test('stone500 should return the correct color', () {
      rushColorMixin.childToColor = Rush.stone500;
      const expectedColor = Color(0xFF78716C);
      expect(rushColorMixin.stone500, equals(expectedColor));
    });

    test('stone600 should return the correct color', () {
      rushColorMixin.childToColor = Rush.stone600;
      const expectedColor = Color(0xFF57534E);
      expect(rushColorMixin.stone600, equals(expectedColor));
    });

    test('stone700 should return the correct color', () {
      rushColorMixin.childToColor = Rush.stone700;
      const expectedColor = Color(0xFF44403C);
      expect(rushColorMixin.stone700, equals(expectedColor));
    });

    test('stone800 should return the correct color', () {
      rushColorMixin.childToColor = Rush.stone800;
      const expectedColor = Color(0xFF292524);
      expect(rushColorMixin.stone800, equals(expectedColor));
    });

    test('stone900 should return the correct color', () {
      rushColorMixin.childToColor = Rush.stone900;
      const expectedColor = Color(0xFF1C1917);
      expect(rushColorMixin.stone900, equals(expectedColor));
    });

    test('neutral50 should return the correct color', () {
      rushColorMixin.childToColor = Rush.neutral50;
      const expectedColor = Color(0xFFFAFAFA);
      expect(rushColorMixin.neutral50, equals(expectedColor));
    });

    test('neutral100 should return the correct color', () {
      rushColorMixin.childToColor = Rush.neutral100;
      const expectedColor = Color(0xFFf5f5f5);
      expect(rushColorMixin.neutral100, equals(expectedColor));
    });

    test('neutral200 should return the correct color', () {
      rushColorMixin.childToColor = Rush.neutral200;
      const expectedColor = Color(0xFFe5e5e5);
      expect(rushColorMixin.neutral200, equals(expectedColor));
    });

    test('neutral300 should return the correct color', () {
      rushColorMixin.childToColor = Rush.neutral300;
      const expectedColor = Color(0xFFd4d4d4);
      expect(rushColorMixin.neutral300, equals(expectedColor));
    });

    test('neutral400 should return the correct color', () {
      rushColorMixin.childToColor = Rush.neutral400;
      const expectedColor = Color(0xFFa3a3a3);
      expect(rushColorMixin.neutral400, equals(expectedColor));
    });

    test('neutral500 should return the correct color', () {
      rushColorMixin.childToColor = Rush.neutral500;
      const expectedColor = Color(0xFF737373);
      expect(rushColorMixin.neutral500, equals(expectedColor));
    });

    test('neutral600 should return the correct color', () {
      rushColorMixin.childToColor = Rush.neutral600;
      const expectedColor = Color(0xFF525252);
      expect(rushColorMixin.neutral600, equals(expectedColor));
    });

    test('neutral700 should return the correct color', () {
      rushColorMixin.childToColor = Rush.neutral700;
      const expectedColor = Color(0xFF404040);
      expect(rushColorMixin.neutral700, equals(expectedColor));
    });

    test('neutral800 should return the correct color', () {
      rushColorMixin.childToColor = Rush.neutral800;
      const expectedColor = Color(0xFF262626);
      expect(rushColorMixin.neutral800, equals(expectedColor));
    });

    test('neutral900 should return the correct color', () {
      rushColorMixin.childToColor = Rush.neutral900;
      const expectedColor = Color(0xFF171717);
      expect(rushColorMixin.neutral900, equals(expectedColor));
    });

    test('red50 should return the correct color', () {
      const expectedColor = Color(0xFFFEF2F2);
      rushColorMixin.childToColor = Rush.red50;
      expect(rushColorMixin.red50, equals(expectedColor));
    });

    test('red100 should return the correct color', () {
      const expectedColor = Color(0xFFFEE2E2);
      rushColorMixin.childToColor = Rush.red100;
      expect(rushColorMixin.red100, equals(expectedColor));
    });

    test('red200 should return the correct color', () {
      const expectedColor = Color(0xFFFECACA);
      rushColorMixin.childToColor = Rush.red200;
      expect(rushColorMixin.red200, equals(expectedColor));
    });

    test('red300 should return the correct color', () {
      const expectedColor = Color(0xFFFCA5A5);
      rushColorMixin.childToColor = Rush.red300;
      expect(rushColorMixin.red300, equals(expectedColor));
    });

    test('red400 should return the correct color', () {
      const expectedColor = Color(0xFFF87171);
      rushColorMixin.childToColor = Rush.red400;
      expect(rushColorMixin.red400, equals(expectedColor));
    });

    test('red500 should return the correct color', () {
      const expectedColor = Color(0xFFEF4444);
      rushColorMixin.childToColor = Rush.red500;
      expect(rushColorMixin.red500, equals(expectedColor));
    });

    test('red600 should return the correct color', () {
      const expectedColor = Color(0xFFDC2626);
      rushColorMixin.childToColor = Rush.red600;
      expect(rushColorMixin.red600, equals(expectedColor));
    });

    test('red700 should return the correct color', () {
      const expectedColor = Color(0xFFB91C1C);
      rushColorMixin.childToColor = Rush.red700;
      expect(rushColorMixin.red700, equals(expectedColor));
    });

    test('red800 should return the correct color', () {
      const expectedColor = Color(0xFF991B1B);
      rushColorMixin.childToColor = Rush.red800;
      expect(rushColorMixin.red800, equals(expectedColor));
    });

    test('red900 should return the correct color', () {
      const expectedColor = Color(0xFF7F1D1D);
      rushColorMixin.childToColor = Rush.red900;
      expect(rushColorMixin.red900, equals(expectedColor));
    });

    test('orange50 should return the correct color', () {
      const expectedColor = Color(0xFFFFF7ED);
      rushColorMixin.childToColor = Rush.orange50;
      expect(rushColorMixin.orange50, equals(expectedColor));
    });

    test('orange100 should return the correct color', () {
      const expectedColor = Color(0xFFFFEDD5);
      rushColorMixin.childToColor = Rush.orange100;
      expect(rushColorMixin.orange100, equals(expectedColor));
    });

    test('orange200 should return the correct color', () {
      const expectedColor = Color(0xFFFED7AA);
      rushColorMixin.childToColor = Rush.orange200;
      expect(rushColorMixin.orange200, equals(expectedColor));
    });

    test('orange300 should return the correct color', () {
      const expectedColor = Color(0xFFFDBA74);
      rushColorMixin.childToColor = Rush.orange300;
      expect(rushColorMixin.orange300, equals(expectedColor));
    });

    test('orange400 should return the correct color', () {
      const expectedColor = Color(0xFFFB923C);
      rushColorMixin.childToColor = Rush.orange400;
      expect(rushColorMixin.orange400, equals(expectedColor));
    });

    test('orange500 should return the correct color', () {
      const expectedColor = Color(0xFFF97316);
      rushColorMixin.childToColor = Rush.orange500;
      expect(rushColorMixin.orange500, equals(expectedColor));
    });

    test('orange600 should return the correct color', () {
      const expectedColor = Color(0xFFEA580C);
      rushColorMixin.childToColor = Rush.orange600;
      expect(rushColorMixin.orange600, equals(expectedColor));
    });

    test('orange700 should return the correct color', () {
      const expectedColor = Color(0xFFC2410C);
      rushColorMixin.childToColor = Rush.orange700;
      expect(rushColorMixin.orange700, equals(expectedColor));
    });

    test('orange800 should return the correct color', () {
      const expectedColor = Color(0xFF9A3412);
      rushColorMixin.childToColor = Rush.orange800;
      expect(rushColorMixin.orange800, equals(expectedColor));
    });

    test('orange900 should return the correct color', () {
      const expectedColor = Color(0xFF7C2D12);
      rushColorMixin.childToColor = Rush.orange900;
      expect(rushColorMixin.orange900, equals(expectedColor));
    });

    test('yellow50 should return the correct color', () {
      const expectedColor = Color(0xFFFEFCE8);
      rushColorMixin.childToColor = Rush.yellow50;
      expect(rushColorMixin.yellow50, equals(expectedColor));
    });

    test('yellow100 should return the correct color', () {
      const expectedColor = Color(0xFFFEF9C3);
      rushColorMixin.childToColor = Rush.yellow100;
      expect(rushColorMixin.yellow100, equals(expectedColor));
    });

    test('yellow200 should return the correct color', () {
      const expectedColor = Color(0xFFFEF08A);
      rushColorMixin.childToColor = Rush.yellow200;
      expect(rushColorMixin.yellow200, equals(expectedColor));
    });

    test('yellow300 should return the correct color', () {
      const expectedColor = Color(0xFFFDE047);
      rushColorMixin.childToColor = Rush.yellow300;
      expect(rushColorMixin.yellow300, equals(expectedColor));
    });

    test('yellow400 should return the correct color', () {
      const expectedColor = Color(0xFFFACC15);
      rushColorMixin.childToColor = Rush.yellow400;
      expect(rushColorMixin.yellow400, equals(expectedColor));
    });

    test('yellow500 should return the correct color', () {
      const expectedColor = Color(0xFFEAB308);
      rushColorMixin.childToColor = Rush.yellow500;
      expect(rushColorMixin.yellow500, equals(expectedColor));
    });

    test('yellow600 should return the correct color', () {
      const expectedColor = Color(0xFFCA8A04);
      rushColorMixin.childToColor = Rush.yellow600;
      expect(rushColorMixin.yellow600, equals(expectedColor));
    });

    test('yellow700 should return the correct color', () {
      const expectedColor = Color(0xFFA16207);
      rushColorMixin.childToColor = Rush.yellow700;
      expect(rushColorMixin.yellow700, equals(expectedColor));
    });

    test('yellow800 should return the correct color', () {
      const expectedColor = Color(0xFF854D0E);
      rushColorMixin.childToColor = Rush.yellow800;
      expect(rushColorMixin.yellow800, equals(expectedColor));
    });

    test('yellow900 should return the correct color', () {
      const expectedColor = Color(0xFF713F12);
      rushColorMixin.childToColor = Rush.yellow900;
      expect(rushColorMixin.yellow900, equals(expectedColor));
    });

    test('lime50 should return the correct color', () {
      const expectedColor = Color(0xFFF7FEE7);
      rushColorMixin.childToColor = Rush.lime50;
      expect(rushColorMixin.lime50, equals(expectedColor));
    });

    test('lime100 should return the correct color', () {
      const expectedColor = Color(0xFFECFCCB);
      rushColorMixin.childToColor = Rush.lime100;
      expect(rushColorMixin.lime100, equals(expectedColor));
    });

    test('lime200 should return the correct color', () {
      const expectedColor = Color(0xFFD9F99D);
      rushColorMixin.childToColor = Rush.lime200;
      expect(rushColorMixin.lime200, equals(expectedColor));
    });

    test('lime300 should return the correct color', () {
      const expectedColor = Color(0xFFBEF264);
      rushColorMixin.childToColor = Rush.lime300;
      expect(rushColorMixin.lime300, equals(expectedColor));
    });

    test('lime400 should return the correct color', () {
      const expectedColor = Color(0xFFA3E635);
      rushColorMixin.childToColor = Rush.lime400;
      expect(rushColorMixin.lime400, equals(expectedColor));
    });

    test('lime500 should return the correct color', () {
      const expectedColor = Color(0xFF84CC16);
      rushColorMixin.childToColor = Rush.lime500;
      expect(rushColorMixin.lime500, equals(expectedColor));
    });

    test('lime600 should return the correct color', () {
      const expectedColor = Color(0xFF65A30D);
      rushColorMixin.childToColor = Rush.lime600;
      expect(rushColorMixin.lime600, equals(expectedColor));
    });

    test('lime700 should return the correct color', () {
      const expectedColor = Color(0xFF4D7C0F);
      rushColorMixin.childToColor = Rush.lime700;
      expect(rushColorMixin.lime700, equals(expectedColor));
    });

    test('lime800 should return the correct color', () {
      const expectedColor = Color(0xFF3F6212);
      rushColorMixin.childToColor = Rush.lime800;
      expect(rushColorMixin.lime800, equals(expectedColor));
    });

    test('lime900 should return the correct color', () {
      const expectedColor = Color(0xFF365314);
      rushColorMixin.childToColor = Rush.lime900;
      expect(rushColorMixin.lime900, equals(expectedColor));
    });

    test('green50 should return the correct color', () {
      const expectedColor = Color(0xFFF0FDF4);
      rushColorMixin.childToColor = Rush.green50;
      expect(rushColorMixin.green50, equals(expectedColor));
    });

    test('green100 should return the correct color', () {
      const expectedColor = Color(0xFFDCFCE7);
      rushColorMixin.childToColor = Rush.green100;
      expect(rushColorMixin.green100, equals(expectedColor));
    });

    test('green200 should return the correct color', () {
      const expectedColor = Color(0xFFBBF7D0);
      rushColorMixin.childToColor = Rush.green200;
      expect(rushColorMixin.green200, equals(expectedColor));
    });

    test('green300 should return the correct color', () {
      const expectedColor = Color(0xFF86EFAC);
      rushColorMixin.childToColor = Rush.green300;
      expect(rushColorMixin.green300, equals(expectedColor));
    });

    test('green400 should return the correct color', () {
      const expectedColor = Color(0xFF4ADE80);
      rushColorMixin.childToColor = Rush.green400;
      expect(rushColorMixin.green400, equals(expectedColor));
    });

    test('green500 should return the correct color', () {
      const expectedColor = Color(0xFF22C55E);
      rushColorMixin.childToColor = Rush.green500;
      expect(rushColorMixin.green500, equals(expectedColor));
    });

    test('green600 should return the correct color', () {
      const expectedColor = Color(0xFF16A34A);
      rushColorMixin.childToColor = Rush.green600;
      expect(rushColorMixin.green600, equals(expectedColor));
    });

    test('green700 should return the correct color', () {
      const expectedColor = Color(0xFF15803D);
      rushColorMixin.childToColor = Rush.green700;
      expect(rushColorMixin.green700, equals(expectedColor));
    });

    test('green800 should return the correct color', () {
      const expectedColor = Color(0xFF166534);
      rushColorMixin.childToColor = Rush.green800;
      expect(rushColorMixin.green800, equals(expectedColor));
    });

    test('green900 should return the correct color', () {
      const expectedColor = Color(0xFF14532D);
      rushColorMixin.childToColor = Rush.green900;
      expect(rushColorMixin.green900, equals(expectedColor));
    });

    test('emerald50 should return the correct color', () {
      const expectedColor = Color(0xFFECFDF5);
      rushColorMixin.childToColor = Rush.emerald50;
      expect(rushColorMixin.emerald50, equals(expectedColor));
    });

    test('emerald100 should return the correct color', () {
      const expectedColor = Color(0xFFD1FAE5);
      rushColorMixin.childToColor = Rush.emerald100;
      expect(rushColorMixin.emerald100, equals(expectedColor));
    });

    test('emerald200 should return the correct color', () {
      const expectedColor = Color(0xFFA7F3D0);
      rushColorMixin.childToColor = Rush.emerald200;
      expect(rushColorMixin.emerald200, equals(expectedColor));
    });

    test('emerald300 should return the correct color', () {
      const expectedColor = Color(0xFF6EE7B7);
      rushColorMixin.childToColor = Rush.emerald300;
      expect(rushColorMixin.emerald300, equals(expectedColor));
    });

    test('emerald400 should return the correct color', () {
      const expectedColor = Color(0xFF34D399);
      rushColorMixin.childToColor = Rush.emerald400;
      expect(rushColorMixin.emerald400, equals(expectedColor));
    });

    test('emerald500 should return the correct color', () {
      const expectedColor = Color(0xFF10B981);
      rushColorMixin.childToColor = Rush.emerald500;
      expect(rushColorMixin.emerald500, equals(expectedColor));
    });

    test('emerald600 should return the correct color', () {
      const expectedColor = Color(0xFF059669);
      rushColorMixin.childToColor = Rush.emerald600;
      expect(rushColorMixin.emerald600, equals(expectedColor));
    });

    test('emerald700 should return the correct color', () {
      const expectedColor = Color(0xFF047857);
      rushColorMixin.childToColor = Rush.emerald700;
      expect(rushColorMixin.emerald700, equals(expectedColor));
    });

    test('emerald800 should return the correct color', () {
      const expectedColor = Color(0xFF065F46);
      rushColorMixin.childToColor = Rush.emerald800;
      expect(rushColorMixin.emerald800, equals(expectedColor));
    });

    test('emerald900 should return the correct color', () {
      const expectedColor = Color(0xFF064E3B);
      rushColorMixin.childToColor = Rush.emerald900;
      expect(rushColorMixin.emerald900, equals(expectedColor));
    });

    test('teal50 should return the correct color', () {
      const expectedColor = Color(0xFFF0FDFA);
      rushColorMixin.childToColor = Rush.teal50;
      expect(rushColorMixin.teal50, equals(expectedColor));
    });

    test('teal100 should return the correct color', () {
      const expectedColor = Color(0xFFCCFBF1);
      rushColorMixin.childToColor = Rush.teal100;
      expect(rushColorMixin.teal100, equals(expectedColor));
    });

    test('teal200 should return the correct color', () {
      const expectedColor = Color(0xFF99F6E4);
      rushColorMixin.childToColor = Rush.teal200;
      expect(rushColorMixin.teal200, equals(expectedColor));
    });

    test('teal300 should return the correct color', () {
      const expectedColor = Color(0xFF5EEAD4);
      rushColorMixin.childToColor = Rush.teal300;
      expect(rushColorMixin.teal300, equals(expectedColor));
    });

    test('teal400 should return the correct color', () {
      const expectedColor = Color(0xFF2DD4BF);
      rushColorMixin.childToColor = Rush.teal400;
      expect(rushColorMixin.teal400, equals(expectedColor));
    });

    test('teal500 should return the correct color', () {
      const expectedColor = Color(0xFF14B8A6);
      rushColorMixin.childToColor = Rush.teal500;
      expect(rushColorMixin.teal500, equals(expectedColor));
    });

    test('teal600 should return the correct color', () {
      const expectedColor = Color(0xFF0D9488);
      rushColorMixin.childToColor = Rush.teal600;
      expect(rushColorMixin.teal600, equals(expectedColor));
    });

    test('teal700 should return the correct color', () {
      const expectedColor = Color(0xFF0F766E);
      rushColorMixin.childToColor = Rush.teal700;
      expect(rushColorMixin.teal700, equals(expectedColor));
    });

    test('teal800 should return the correct color', () {
      const expectedColor = Color(0xFF115E59);
      rushColorMixin.childToColor = Rush.teal800;
      expect(rushColorMixin.teal800, equals(expectedColor));
    });

    test('teal900 should return the correct color', () {
      const expectedColor = Color(0xFF134E4A);
      rushColorMixin.childToColor = Rush.teal900;
      expect(rushColorMixin.teal900, equals(expectedColor));
    });

    test('cyan50 should return the correct color', () {
      const expectedColor = Color(0xFFECFEFF);
      rushColorMixin.childToColor = Rush.cyan50;
      expect(rushColorMixin.cyan50, equals(expectedColor));
    });

    test('cyan100 should return the correct color', () {
      const expectedColor = Color(0xFFCFFAFE);
      rushColorMixin.childToColor = Rush.cyan100;
      expect(rushColorMixin.cyan100, equals(expectedColor));
    });

    test('cyan200 should return the correct color', () {
      const expectedColor = Color(0xFFA5F3FC);
      rushColorMixin.childToColor = Rush.cyan200;
      expect(rushColorMixin.cyan200, equals(expectedColor));
    });

    test('cyan300 should return the correct color', () {
      const expectedColor = Color(0xFF67E8F9);
      rushColorMixin.childToColor = Rush.cyan300;
      expect(rushColorMixin.cyan300, equals(expectedColor));
    });

    test('cyan400 should return the correct color', () {
      const expectedColor = Color(0xFF22D3EE);
      rushColorMixin.childToColor = Rush.cyan400;
      expect(rushColorMixin.cyan400, equals(expectedColor));
    });

    test('cyan500 should return the correct color', () {
      const expectedColor = Color(0xFF06B6D4);
      rushColorMixin.childToColor = Rush.cyan500;
      expect(rushColorMixin.cyan500, equals(expectedColor));
    });

    test('cyan600 should return the correct color', () {
      const expectedColor = Color(0xFF0891B2);
      rushColorMixin.childToColor = Rush.cyan600;
      expect(rushColorMixin.cyan600, equals(expectedColor));
    });

    test('cyan700 should return the correct color', () {
      const expectedColor = Color(0xFF0E7490);
      rushColorMixin.childToColor = Rush.cyan700;
      expect(rushColorMixin.cyan700, equals(expectedColor));
    });

    test('cyan800 should return the correct color', () {
      const expectedColor = Color(0xFF155E75);
      rushColorMixin.childToColor = Rush.cyan800;
      expect(rushColorMixin.cyan800, equals(expectedColor));
    });

    test('cyan900 should return the correct color', () {
      const expectedColor = Color(0xFF164E63);
      rushColorMixin.childToColor = Rush.cyan900;
      expect(rushColorMixin.cyan900, equals(expectedColor));
    });

    test('sky50 should return the correct color', () {
      const expectedColor = Color(0xFFF0F9FF);
      rushColorMixin.childToColor = Rush.sky50;
      expect(rushColorMixin.sky50, equals(expectedColor));
    });

    test('sky100 should return the correct color', () {
      const expectedColor = Color(0xFFE0F2FE);
      rushColorMixin.childToColor = Rush.sky100;
      expect(rushColorMixin.sky100, equals(expectedColor));
    });

    test('sky200 should return the correct color', () {
      const expectedColor = Color(0xFFBAE6FD);
      rushColorMixin.childToColor = Rush.sky200;
      expect(rushColorMixin.sky200, equals(expectedColor));
    });

    test('sky300 should return the correct color', () {
      const expectedColor = Color(0xFF7DD3FC);
      rushColorMixin.childToColor = Rush.sky300;
      expect(rushColorMixin.sky300, equals(expectedColor));
    });

    test('sky400 should return the correct color', () {
      const expectedColor = Color(0xFF38BDF8);
      rushColorMixin.childToColor = Rush.sky400;
      expect(rushColorMixin.sky400, equals(expectedColor));
    });

    test('sky500 should return the correct color', () {
      const expectedColor = Color(0xFF0EA5E9);
      rushColorMixin.childToColor = Rush.sky500;
      expect(rushColorMixin.sky500, equals(expectedColor));
    });

    test('sky600 should return the correct color', () {
      const expectedColor = Color(0xFF0284C7);
      rushColorMixin.childToColor = Rush.sky600;
      expect(rushColorMixin.sky600, equals(expectedColor));
    });

    test('sky700 should return the correct color', () {
      const expectedColor = Color(0xFF0369A1);
      rushColorMixin.childToColor = Rush.sky700;
      expect(rushColorMixin.sky700, equals(expectedColor));
    });

    test('sky800 should return the correct color', () {
      const expectedColor = Color(0xFF075985);
      rushColorMixin.childToColor = Rush.sky800;
      expect(rushColorMixin.sky800, equals(expectedColor));
    });

    test('sky900 should return the correct color', () {
      const expectedColor = Color(0xFF0C4A6E);
      rushColorMixin.childToColor = Rush.sky900;
      expect(rushColorMixin.sky900, equals(expectedColor));
    });

    test('blue50 should return the correct color', () {
      const expectedColor = Color(0xFFEFF6FF);
      rushColorMixin.childToColor = Rush.blue50;
      expect(rushColorMixin.blue50, equals(expectedColor));
    });

    test('blue100 should return the correct color', () {
      const expectedColor = Color(0xFFDBEAFE);
      rushColorMixin.childToColor = Rush.blue100;
      expect(rushColorMixin.blue100, equals(expectedColor));
    });

    test('blue200 should return the correct color', () {
      const expectedColor = Color(0xFFBFDBFE);
      rushColorMixin.childToColor = Rush.blue200;
      expect(rushColorMixin.blue200, equals(expectedColor));
    });

    test('blue300 should return the correct color', () {
      const expectedColor = Color(0xFF93C5FD);
      rushColorMixin.childToColor = Rush.blue300;
      expect(rushColorMixin.blue300, equals(expectedColor));
    });

    test('blue400 should return the correct color', () {
      const expectedColor = Color(0xFF60A5FA);
      rushColorMixin.childToColor = Rush.blue400;
      expect(rushColorMixin.blue400, equals(expectedColor));
    });

    test('blue500 should return the correct color', () {
      const expectedColor = Color(0xFF3B82F6);
      rushColorMixin.childToColor = Rush.blue500;
      expect(rushColorMixin.blue500, equals(expectedColor));
    });

    test('blue600 should return the correct color', () {
      const expectedColor = Color(0xFF2563EB);
      rushColorMixin.childToColor = Rush.blue600;
      expect(rushColorMixin.blue600, equals(expectedColor));
    });

    test('blue700 should return the correct color', () {
      const expectedColor = Color(0xFF1D4ED8);
      rushColorMixin.childToColor = Rush.blue700;
      expect(rushColorMixin.blue700, equals(expectedColor));
    });

    test('blue800 should return the correct color', () {
      const expectedColor = Color(0xFF1E40AF);
      rushColorMixin.childToColor = Rush.blue800;
      expect(rushColorMixin.blue800, equals(expectedColor));
    });

    test('blue900 should return the correct color', () {
      const expectedColor = Color(0xFF1E3A8A);
      rushColorMixin.childToColor = Rush.blue900;
      expect(rushColorMixin.blue900, equals(expectedColor));
    });

    test('indigo50 should return the correct color', () {
      const expectedColor = Color(0xFFEEF2FF);
      rushColorMixin.childToColor = Rush.indigo50;
      expect(rushColorMixin.indigo50, equals(expectedColor));
    });

    test('indigo100 should return the correct color', () {
      const expectedColor = Color(0xFFE0E7FF);
      rushColorMixin.childToColor = Rush.indigo100;
      expect(rushColorMixin.indigo100, equals(expectedColor));
    });

    test('indigo200 should return the correct color', () {
      const expectedColor = Color(0xFFC7D2FE);
      rushColorMixin.childToColor = Rush.indigo200;
      expect(rushColorMixin.indigo200, equals(expectedColor));
    });

    test('indigo300 should return the correct color', () {
      const expectedColor = Color(0xFFA5B4FC);
      rushColorMixin.childToColor = Rush.indigo300;
      expect(rushColorMixin.indigo300, equals(expectedColor));
    });

    test('indigo400 should return the correct color', () {
      const expectedColor = Color(0xFF818CF8);
      rushColorMixin.childToColor = Rush.indigo400;
      expect(rushColorMixin.indigo400, equals(expectedColor));
    });

    test('indigo500 should return the correct color', () {
      const expectedColor = Color(0xFF6366F1);
      rushColorMixin.childToColor = Rush.indigo500;
      expect(rushColorMixin.indigo500, equals(expectedColor));
    });

    test('indigo600 should return the correct color', () {
      const expectedColor = Color(0xFF4F46E5);
      rushColorMixin.childToColor = Rush.indigo600;
      expect(rushColorMixin.indigo600, equals(expectedColor));
    });

    test('indigo700 should return the correct color', () {
      const expectedColor = Color(0xFF4338CA);
      rushColorMixin.childToColor = Rush.indigo700;
      expect(rushColorMixin.indigo700, equals(expectedColor));
    });

    test('indigo800 should return the correct color', () {
      const expectedColor = Color(0xFF3730A3);
      rushColorMixin.childToColor = Rush.indigo800;
      expect(rushColorMixin.indigo800, equals(expectedColor));
    });

    test('indigo900 should return the correct color', () {
      const expectedColor = Color(0xFF312E81);
      rushColorMixin.childToColor = Rush.indigo900;
      expect(rushColorMixin.indigo900, equals(expectedColor));
    });

    test('violet50 should return the correct color', () {
      const expectedColor = Color(0xFFF5F3FF);
      rushColorMixin.childToColor = Rush.violet50;
      expect(rushColorMixin.violet50, equals(expectedColor));
    });

    test('violet100 should return the correct color', () {
      const expectedColor = Color(0xFFEDE9FE);
      rushColorMixin.childToColor = Rush.violet100;
      expect(rushColorMixin.violet100, equals(expectedColor));
    });

    test('violet200 should return the correct color', () {
      const expectedColor = Color(0xFFDDD6FE);
      rushColorMixin.childToColor = Rush.violet200;
      expect(rushColorMixin.violet200, equals(expectedColor));
    });

    test('violet300 should return the correct color', () {
      const expectedColor = Color(0xFFC4B5FD);
      rushColorMixin.childToColor = Rush.violet300;
      expect(rushColorMixin.violet300, equals(expectedColor));
    });

    test('violet400 should return the correct color', () {
      const expectedColor = Color(0xFFA78BFA);
      rushColorMixin.childToColor = Rush.violet400;
      expect(rushColorMixin.violet400, equals(expectedColor));
    });

    test('violet500 should return the correct color', () {
      const expectedColor = Color(0xFF8B5CF6);
      rushColorMixin.childToColor = Rush.violet500;
      expect(rushColorMixin.violet500, equals(expectedColor));
    });

    test('violet600 should return the correct color', () {
      const expectedColor = Color(0xFF7C3AED);
      rushColorMixin.childToColor = Rush.violet600;
      expect(rushColorMixin.violet600, equals(expectedColor));
    });

    test('violet700 should return the correct color', () {
      const expectedColor = Color(0xFF6D28D9);
      rushColorMixin.childToColor = Rush.violet700;
      expect(rushColorMixin.violet700, equals(expectedColor));
    });

    test('violet800 should return the correct color', () {
      const expectedColor = Color(0xFF5B21B6);
      rushColorMixin.childToColor = Rush.violet800;
      expect(rushColorMixin.violet800, equals(expectedColor));
    });

    test('violet900 should return the correct color', () {
      const expectedColor = Color(0xFF4C1D95);
      rushColorMixin.childToColor = Rush.violet900;
      expect(rushColorMixin.violet900, equals(expectedColor));
    });

    test('purple50 should return the correct color', () {
      const expectedColor = Color(0xFFFAF5FF);
      rushColorMixin.childToColor = Rush.purple50;
      expect(rushColorMixin.purple50, equals(expectedColor));
    });

    test('purple100 should return the correct color', () {
      const expectedColor = Color(0xFFF3E8FF);
      rushColorMixin.childToColor = Rush.purple100;
      expect(rushColorMixin.purple100, equals(expectedColor));
    });

    test('purple200 should return the correct color', () {
      const expectedColor = Color(0xFFE9D5FF);
      rushColorMixin.childToColor = Rush.purple200;
      expect(rushColorMixin.purple200, equals(expectedColor));
    });

    test('purple300 should return the correct color', () {
      const expectedColor = Color(0xFFD8B4FE);
      rushColorMixin.childToColor = Rush.purple300;
      expect(rushColorMixin.purple300, equals(expectedColor));
    });

    test('purple400 should return the correct color', () {
      const expectedColor = Color(0xFFC084FC);
      rushColorMixin.childToColor = Rush.purple400;
      expect(rushColorMixin.purple400, equals(expectedColor));
    });

    test('purple500 should return the correct color', () {
      const expectedColor = Color(0xFFA855F7);
      rushColorMixin.childToColor = Rush.purple500;
      expect(rushColorMixin.purple500, equals(expectedColor));
    });

    test('purple600 should return the correct color', () {
      const expectedColor = Color(0xFF9333EA);
      rushColorMixin.childToColor = Rush.purple600;
      expect(rushColorMixin.purple600, equals(expectedColor));
    });

    test('purple700 should return the correct color', () {
      const expectedColor = Color(0xFF7E22CE);
      rushColorMixin.childToColor = Rush.purple700;
      expect(rushColorMixin.purple700, equals(expectedColor));
    });

    test('purple800 should return the correct color', () {
      const expectedColor = Color(0xFF6B21A8);
      rushColorMixin.childToColor = Rush.purple800;
      expect(rushColorMixin.purple800, equals(expectedColor));
    });

    test('purple900 should return the correct color', () {
      const expectedColor = Color(0xFF581C87);
      rushColorMixin.childToColor = Rush.purple900;
      expect(rushColorMixin.purple900, equals(expectedColor));
    });

    test('fuchsia50 should return the correct color', () {
      const expectedColor = Color(0xFFFDF4FF);
      rushColorMixin.childToColor = Rush.fuchsia50;
      expect(rushColorMixin.fuchsia50, equals(expectedColor));
    });

    test('fuchsia100 should return the correct color', () {
      const expectedColor = Color(0xFFFAE8FF);
      rushColorMixin.childToColor = Rush.fuchsia100;
      expect(rushColorMixin.fuchsia100, equals(expectedColor));
    });

    test('fuchsia200 should return the correct color', () {
      const expectedColor = Color(0xFFF5D0FE);
      rushColorMixin.childToColor = Rush.fuchsia200;
      expect(rushColorMixin.fuchsia200, equals(expectedColor));
    });

    test('fuchsia300 should return the correct color', () {
      const expectedColor = Color(0xFFF0ABFC);
      rushColorMixin.childToColor = Rush.fuchsia300;
      expect(rushColorMixin.fuchsia300, equals(expectedColor));
    });

    test('fuchsia400 should return the correct color', () {
      const expectedColor = Color(0xFFE879F9);
      rushColorMixin.childToColor = Rush.fuchsia400;
      expect(rushColorMixin.fuchsia400, equals(expectedColor));
    });

    test('fuchsia500 should return the correct color', () {
      const expectedColor = Color(0xFFD946EF);
      rushColorMixin.childToColor = Rush.fuchsia500;
      expect(rushColorMixin.fuchsia500, equals(expectedColor));
    });

    test('fuchsia600 should return the correct color', () {
      const expectedColor = Color(0xFFC026D3);
      rushColorMixin.childToColor = Rush.fuchsia600;
      expect(rushColorMixin.fuchsia600, equals(expectedColor));
    });

    test('fuchsia700 should return the correct color', () {
      const expectedColor = Color(0xFFA21CAF);
      rushColorMixin.childToColor = Rush.fuchsia700;
      expect(rushColorMixin.fuchsia700, equals(expectedColor));
    });

    test('fuchsia800 should return the correct color', () {
      const expectedColor = Color(0xFF86198F);
      rushColorMixin.childToColor = Rush.fuchsia800;
      expect(rushColorMixin.fuchsia800, equals(expectedColor));
    });

    test('fuchsia900 should return the correct color', () {
      const expectedColor = Color(0xFF701A75);
      rushColorMixin.childToColor = Rush.fuchsia900;
      expect(rushColorMixin.fuchsia900, equals(expectedColor));
    });

    test('pink50 should return the correct color', () {
      const expectedColor = Color(0xFFFDF2F8);
      rushColorMixin.childToColor = Rush.pink50;
      expect(rushColorMixin.pink50, equals(expectedColor));
    });

    test('pink100 should return the correct color', () {
      const expectedColor = Color(0xFFFCE7F3);
      rushColorMixin.childToColor = Rush.pink100;
      expect(rushColorMixin.pink100, equals(expectedColor));
    });

    test('pink200 should return the correct color', () {
      const expectedColor = Color(0xFFFBCFE8);
      rushColorMixin.childToColor = Rush.pink200;
      expect(rushColorMixin.pink200, equals(expectedColor));
    });

    test('pink300 should return the correct color', () {
      const expectedColor = Color(0xFFF9A8D4);
      rushColorMixin.childToColor = Rush.pink300;
      expect(rushColorMixin.pink300, equals(expectedColor));
    });

    test('pink400 should return the correct color', () {
      const expectedColor = Color(0xFFF472B6);
      rushColorMixin.childToColor = Rush.pink400;
      expect(rushColorMixin.pink400, equals(expectedColor));
    });

    test('pink500 should return the correct color', () {
      const expectedColor = Color(0xFFEC4899);
      rushColorMixin.childToColor = Rush.pink500;
      expect(rushColorMixin.pink500, equals(expectedColor));
    });

    test('pink600 should return the correct color', () {
      const expectedColor = Color(0xFFDB2777);
      rushColorMixin.childToColor = Rush.pink600;
      expect(rushColorMixin.pink600, equals(expectedColor));
    });

    test('pink700 should return the correct color', () {
      const expectedColor = Color(0xFFBE185D);
      rushColorMixin.childToColor = Rush.pink700;
      expect(rushColorMixin.pink700, equals(expectedColor));
    });

    test('pink800 should return the correct color', () {
      const expectedColor = Color(0xFF9D174D);
      rushColorMixin.childToColor = Rush.pink800;
      expect(rushColorMixin.pink800, equals(expectedColor));
    });

    test('pink900 should return the correct color', () {
      const expectedColor = Color(0xFF831843);
      rushColorMixin.childToColor = Rush.pink900;
      expect(rushColorMixin.pink900, equals(expectedColor));
    });

    test('rose50 should return the correct color', () {
      const expectedColor = Color(0xFFFFF1F2);
      rushColorMixin.childToColor = Rush.rose50;
      expect(rushColorMixin.rose50, equals(expectedColor));
    });

    test('rose100 should return the correct color', () {
      const expectedColor = Color(0xFFFFE4E6);
      rushColorMixin.childToColor = Rush.rose100;
      expect(rushColorMixin.rose100, equals(expectedColor));
    });

    test('rose200 should return the correct color', () {
      const expectedColor = Color(0xFFFECDD3);
      rushColorMixin.childToColor = Rush.rose200;
      expect(rushColorMixin.rose200, equals(expectedColor));
    });

    test('rose300 should return the correct color', () {
      const expectedColor = Color(0xFFFDA4AF);
      rushColorMixin.childToColor = Rush.rose300;
      expect(rushColorMixin.rose300, equals(expectedColor));
    });

    test('rose400 should return the correct color', () {
      const expectedColor = Color(0xFFFB7185);
      rushColorMixin.childToColor = Rush.rose400;
      expect(rushColorMixin.rose400, equals(expectedColor));
    });

    test('rose500 should return the correct color', () {
      const expectedColor = Color(0xFFF43F5E);
      rushColorMixin.childToColor = Rush.rose500;
      expect(rushColorMixin.rose500, equals(expectedColor));
    });

    test('rose600 should return the correct color', () {
      const expectedColor = Color(0xFFE11D48);
      rushColorMixin.childToColor = Rush.rose600;
      expect(rushColorMixin.rose600, equals(expectedColor));
    });

    test('rose700 should return the correct color', () {
      const expectedColor = Color(0xFFBE123C);
      rushColorMixin.childToColor = Rush.rose700;
      expect(rushColorMixin.rose700, equals(expectedColor));
    });

    test('rose800 should return the correct color', () {
      const expectedColor = Color(0xFF9F1239);
      rushColorMixin.childToColor = Rush.rose800;
      expect(rushColorMixin.rose800, equals(expectedColor));
    });

    test('rose900 should return the correct color', () {
      const expectedColor = Color(0xFF881337);
      rushColorMixin.childToColor = Rush.rose900;
      expect(rushColorMixin.rose900, equals(expectedColor));
    });

    test('brown50 should return the correct color', () {
      const expectedColor = Color(0xFFEFEBE9);
      rushColorMixin.childToColor = Rush.brown50;
      expect(rushColorMixin.brown50, equals(expectedColor));
    });

    test('brown100 should return the correct color', () {
      const expectedColor = Color(0xFFD7CCC8);
      rushColorMixin.childToColor = Rush.brown100;
      expect(rushColorMixin.brown100, equals(expectedColor));
    });

    test('brown200 should return the correct color', () {
      const expectedColor = Color(0xFFBCAAA4);
      rushColorMixin.childToColor = Rush.brown200;
      expect(rushColorMixin.brown200, equals(expectedColor));
    });

    test('brown300 should return the correct color', () {
      const expectedColor = Color(0xFFA1887F);
      rushColorMixin.childToColor = Rush.brown300;
      expect(rushColorMixin.brown300, equals(expectedColor));
    });

    test('brown400 should return the correct color', () {
      const expectedColor = Color(0xFF8D6E63);
      rushColorMixin.childToColor = Rush.brown400;
      expect(rushColorMixin.brown400, equals(expectedColor));
    });

    test('brown500 should return the correct color', () {
      const expectedColor = Color(0xFF795548);
      rushColorMixin.childToColor = Rush.brown500;
      expect(rushColorMixin.brown500, equals(expectedColor));
    });

    test('brown600 should return the correct color', () {
      const expectedColor = Color(0xFF6D4C41);
      rushColorMixin.childToColor = Rush.brown600;
      expect(rushColorMixin.brown600, equals(expectedColor));
    });

    test('brown700 should return the correct color', () {
      const expectedColor = Color(0xFF5D4037);
      rushColorMixin.childToColor = Rush.brown700;
      expect(rushColorMixin.brown700, equals(expectedColor));
    });

    test('brown800 should return the correct color', () {
      const expectedColor = Color(0xFF4E342E);
      rushColorMixin.childToColor = Rush.brown800;
      expect(rushColorMixin.brown800, equals(expectedColor));
    });

    test('brown900 should return the correct color', () {
      const expectedColor = Color(0xFF3E2723);
      rushColorMixin.childToColor = Rush.brown900;
      expect(rushColorMixin.brown900, equals(expectedColor));
    });

    test('mint50 should return the correct color', () {
      const expectedColor = Color(0xFFF1F5F8);
      rushColorMixin.childToColor = Rush.mint50;
      expect(rushColorMixin.mint50, equals(expectedColor));
    });

    test('mint100 should return the correct color', () {
      const expectedColor = Color(0xFFE3F0F3);
      rushColorMixin.childToColor = Rush.mint100;
      expect(rushColorMixin.mint100, equals(expectedColor));
    });

    test('mint200 should return the correct color', () {
      const expectedColor = Color(0xFFD5ECEE);
      rushColorMixin.childToColor = Rush.mint200;
      expect(rushColorMixin.mint200, equals(expectedColor));
    });

    test('mint300 should return the correct color', () {
      const expectedColor = Color(0xFFC7E8E9);
      rushColorMixin.childToColor = Rush.mint300;
      expect(rushColorMixin.mint300, equals(expectedColor));
    });

    test('mint400 should return the correct color', () {
      const expectedColor = Color(0xFFBBE3E4);
      rushColorMixin.childToColor = Rush.mint400;
      expect(rushColorMixin.mint400, equals(expectedColor));
    });

    test('mint500 should return the correct color', () {
      const expectedColor = Color(0xFFADDEDF);
      rushColorMixin.childToColor = Rush.mint500;
      expect(rushColorMixin.mint500, equals(expectedColor));
    });

    test('mint600 should return the correct color', () {
      const expectedColor = Color(0xFF9CDAD9);
      rushColorMixin.childToColor = Rush.mint600;
      expect(rushColorMixin.mint600, equals(expectedColor));
    });

    test('mint700 should return the correct color', () {
      const expectedColor = Color(0xFF8CC6C3);
      rushColorMixin.childToColor = Rush.mint700;
      expect(rushColorMixin.mint700, equals(expectedColor));
    });

    test('mint800 should return the correct color', () {
      const expectedColor = Color(0xFF7ABAB7);
      rushColorMixin.childToColor = Rush.mint800;
      expect(rushColorMixin.mint800, equals(expectedColor));
    });

    test('mint900 should return the correct color', () {
      const expectedColor = Color(0xFF68AACB);
      rushColorMixin.childToColor = Rush.mint900;
      expect(rushColorMixin.mint900, equals(expectedColor));
    });

    test('slate50 should return the correct color', () {
      const expectedColor = Color(0xFFF8FAFC);
      rushColorMixin.childToColor = Rush.slate50;
      expect(rushColorMixin.slate50, equals(expectedColor));
    });

    test('slate100 should return the correct color', () {
      const expectedColor = Color(0xFFF1F5F9);
      rushColorMixin.childToColor = Rush.slate100;
      expect(rushColorMixin.slate100, equals(expectedColor));
    });

    test('slate200 should return the correct color', () {
      const expectedColor = Color(0xFFE2E8F0);
      rushColorMixin.childToColor = Rush.slate200;
      expect(rushColorMixin.slate200, equals(expectedColor));
    });

    test('slate300 should return the correct color', () {
      const expectedColor = Color(0xFFCBD5E1);
      rushColorMixin.childToColor = Rush.slate300;
      expect(rushColorMixin.slate300, equals(expectedColor));
    });

    test('slate400 should return the correct color', () {
      const expectedColor = Color(0xFF94A3B8);
      rushColorMixin.childToColor = Rush.slate400;
      expect(rushColorMixin.slate400, equals(expectedColor));
    });

    test('slate500 should return the correct color', () {
      const expectedColor = Color(0xFF64748B);
      rushColorMixin.childToColor = Rush.slate500;
      expect(rushColorMixin.slate500, equals(expectedColor));
    });

    test('slate600 should return the correct color', () {
      const expectedColor = Color(0xFF475569);
      rushColorMixin.childToColor = Rush.slate600;
      expect(rushColorMixin.slate600, equals(expectedColor));
    });

    test('slate700 should return the correct color', () {
      const expectedColor = Color(0xFF334155);
      rushColorMixin.childToColor = Rush.slate700;
      expect(rushColorMixin.slate700, equals(expectedColor));
    });

    test('slate800 should return the correct color', () {
      const expectedColor = Color(0xFF1E293B);
      rushColorMixin.childToColor = Rush.slate800;
      expect(rushColorMixin.slate800, equals(expectedColor));
    });

    test('slate900 should return the correct color', () {
      const expectedColor = Color(0xFF0F172A);
      rushColorMixin.childToColor = Rush.slate900;
      expect(rushColorMixin.slate900, equals(expectedColor));
    });

    test('zinc50 should return the correct color', () {
      const expectedColor = Color(0xFFfafafa);
      rushColorMixin.childToColor = Rush.zinc50;
      expect(rushColorMixin.zinc50, equals(expectedColor));
    });

    test('zinc100 should return the correct color', () {
      const expectedColor = Color(0xFFf4f4f5);
      rushColorMixin.childToColor = Rush.zinc100;
      expect(rushColorMixin.zinc100, equals(expectedColor));
    });

    test('zinc200 should return the correct color', () {
      const expectedColor = Color(0xFFe4e4e7);
      rushColorMixin.childToColor = Rush.zinc200;
      expect(rushColorMixin.zinc200, equals(expectedColor));
    });

    test('zinc300 should return the correct color', () {
      const expectedColor = Color(0xFFd4d4d8);
      rushColorMixin.childToColor = Rush.zinc300;
      expect(rushColorMixin.zinc300, equals(expectedColor));
    });

    test('zinc400 should return the correct color', () {
      const expectedColor = Color(0xFFa1a1aa);
      rushColorMixin.childToColor = Rush.zinc400;
      expect(rushColorMixin.zinc400, equals(expectedColor));
    });

    test('zinc500 should return the correct color', () {
      const expectedColor = Color(0xFF71717a);
      rushColorMixin.childToColor = Rush.zinc500;
      expect(rushColorMixin.zinc500, equals(expectedColor));
    });

    test('zinc600 should return the correct color', () {
      const expectedColor = Color(0xFF52525b);
      rushColorMixin.childToColor = Rush.zinc600;
      expect(rushColorMixin.zinc600, equals(expectedColor));
    });

    test('zinc700 should return the correct color', () {
      const expectedColor = Color(0xFF3f3f46);
      rushColorMixin.childToColor = Rush.zinc700;
      expect(rushColorMixin.zinc700, equals(expectedColor));
    });

    test('zinc800 should return the correct color', () {
      const expectedColor = Color(0xFF27272a);
      rushColorMixin.childToColor = Rush.zinc800;
      expect(rushColorMixin.zinc800, equals(expectedColor));
    });

    test('zinc900 should return the correct color', () {
      const expectedColor = Color(0xFF18181b);
      rushColorMixin.childToColor = Rush.zinc900;
      expect(rushColorMixin.zinc900, equals(expectedColor));
    });

    test('amber50 should return the correct color', () {
      const expectedColor = Color(0xFFFFFBEB);
      rushColorMixin.childToColor = Rush.amber50;
      expect(rushColorMixin.amber50, equals(expectedColor));
    });

    test('amber100 should return the correct color', () {
      const expectedColor = Color(0xFFFEF3C7);
      rushColorMixin.childToColor = Rush.amber100;
      expect(rushColorMixin.amber100, equals(expectedColor));
    });

    test('amber200 should return the correct color', () {
      const expectedColor = Color(0xFFFDE68A);
      rushColorMixin.childToColor = Rush.amber200;
      expect(rushColorMixin.amber200, equals(expectedColor));
    });

    test('amber300 should return the correct color', () {
      const expectedColor = Color(0xFFFCD34D);
      rushColorMixin.childToColor = Rush.amber300;
      expect(rushColorMixin.amber300, equals(expectedColor));
    });

    test('amber400 should return the correct color', () {
      const expectedColor = Color(0xFFFBBF24);
      rushColorMixin.childToColor = Rush.amber400;
      expect(rushColorMixin.amber400, equals(expectedColor));
    });

    test('amber500 should return the correct color', () {
      const expectedColor = Color(0xFFF59E0B);
      rushColorMixin.childToColor = Rush.amber500;
      expect(rushColorMixin.amber500, equals(expectedColor));
    });

    test('amber600 should return the correct color', () {
      const expectedColor = Color(0xFFD97706);
      rushColorMixin.childToColor = Rush.amber600;
      expect(rushColorMixin.amber600, equals(expectedColor));
    });

    test('amber700 should return the correct color', () {
      const expectedColor = Color(0xFFB45309);
      rushColorMixin.childToColor = Rush.amber700;
      expect(rushColorMixin.amber700, equals(expectedColor));
    });

    test('amber800 should return the correct color', () {
      const expectedColor = Color(0xFF92400E);
      rushColorMixin.childToColor = Rush.amber800;
      expect(rushColorMixin.amber800, equals(expectedColor));
    });

    test('amber900 should return the correct color', () {
      const expectedColor = Color(0xFF78350F);
      rushColorMixin.childToColor = Rush.amber900;
      expect(rushColorMixin.amber900, equals(expectedColor));
    });
  });
}

class _RushColorMixin<Color> with RushColorMixin<Color> {}
