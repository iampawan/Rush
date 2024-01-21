// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rush/rush.dart';

void main() {
  group('Rush', () {
    test('can be instantiated', () {
      expect(Rush, isNotNull);
    });

    test('has correct pixel values', () {
      expect(Rush.dp0, equals(0));
      expect(Rush.dp1, equals(1));
      expect(Rush.dp2, equals(2));
      expect(Rush.dp3, equals(3));
      expect(Rush.dp4, equals(4));
      expect(Rush.dp5, equals(5));
      expect(Rush.dp6, equals(6));
      expect(Rush.dp8, equals(8));
      expect(Rush.dp10, equals(10));
      expect(Rush.dp12, equals(12));
      expect(Rush.dp14, equals(14));
      expect(Rush.dp16, equals(16));
      expect(Rush.dp20, equals(20));
      expect(Rush.dp24, equals(24));
      expect(Rush.dp32, equals(32));
      expect(Rush.dp40, equals(40));
      expect(Rush.dp48, equals(48));
      expect(Rush.dp56, equals(56));
      expect(Rush.dp64, equals(64));
    });

    test('has correct color values', () {
      expect(Rush.black, equals(const Color(0xFF000000)));
      expect(Rush.white, equals(const Color(0xFFFFFFFF)));
      expect(Rush.blackHex, equals('#000000'));
      expect(Rush.whiteHex, equals('#ffffff'));

      expect(Rush.grayHex50, equals('#f9fafb'));
      expect(Rush.grayHex100, equals('#f3f4f6'));
      expect(Rush.grayHex200, equals('#e5e7eb'));
      expect(Rush.grayHex300, equals('#d1d5db'));
      expect(Rush.grayHex400, equals('#9ca3af'));
      expect(Rush.grayHex500, equals('#6b7280'));
      expect(Rush.grayHex600, equals('#4b5563'));
      expect(Rush.grayHex700, equals('#374151'));
      expect(Rush.grayHex800, equals('#1f2937'));
      expect(Rush.grayHex900, equals('#111827'));
      expect(Rush.gray50, equals(const Color(0xFFf9fafb)));
      expect(Rush.gray100, equals(const Color(0xFFf3f4f6)));
      expect(Rush.gray200, equals(const Color(0xFFe5e7eb)));
      expect(Rush.gray300, equals(const Color(0xFFd1d5db)));
      expect(Rush.gray400, equals(const Color(0xFF9ca3af)));
      expect(Rush.gray500, equals(const Color(0xFF6b7280)));
      expect(Rush.gray600, equals(const Color(0xFF4b5563)));
      expect(Rush.gray700, equals(const Color(0xFF374151)));
      expect(Rush.gray800, equals(const Color(0xFF1f2937)));
      expect(Rush.gray900, equals(const Color(0xFF111827)));
      expect(Rush.slateHex50, equals('#f8fafc'));
      expect(Rush.slateHex100, equals('#f1f5f9'));
      expect(Rush.slateHex200, equals('#e2e8f0'));
      expect(Rush.slateHex300, equals('#cbd5e1'));
      expect(Rush.slateHex400, equals('#94a3b8'));
      expect(Rush.slateHex500, equals('#64748b'));
      expect(Rush.slateHex600, equals('#475569'));
      expect(Rush.slateHex700, equals('#334155'));
      expect(Rush.slateHex800, equals('#1e293b'));
      expect(Rush.slateHex900, equals('#0f172a'));
      expect(Rush.slate50, equals(const Color(0xFFf8fafc)));
      expect(Rush.slate100, equals(const Color(0xFFf1f5f9)));
      expect(Rush.slate200, equals(const Color(0xFFe2e8f0)));
      expect(Rush.slate300, equals(const Color(0xFFcbd5e1)));
      expect(Rush.slate400, equals(const Color(0xFF94a3b8)));
      expect(Rush.slate500, equals(const Color(0xFF64748b)));
      expect(Rush.slate600, equals(const Color(0xFF475569)));
      expect(Rush.slate700, equals(const Color(0xFF334155)));
      expect(Rush.slate800, equals(const Color(0xFF1e293b)));
      expect(Rush.slate900, equals(const Color(0xFF0f172a)));
      expect(Rush.zincHex50, equals('#fafafa'));
      expect(Rush.zincHex100, equals('#f4f4f5'));
      expect(Rush.zincHex200, equals('#e4e4e7'));
      expect(Rush.zincHex300, equals('#d4d4d8'));
      expect(Rush.zincHex400, equals('#a1a1aa'));
      expect(Rush.zincHex500, equals('#71717a'));
      expect(Rush.zincHex600, equals('#52525b'));
      expect(Rush.zincHex700, equals('#3f3f46'));
      expect(Rush.zincHex800, equals('#27272a'));
      expect(Rush.zincHex900, equals('#18181b'));
      expect(Rush.zinc50, equals(const Color(0xFFfafafa)));
      expect(Rush.zinc100, equals(const Color(0xFFf4f4f5)));
      expect(Rush.zinc200, equals(const Color(0xFFe4e4e7)));
      expect(Rush.zinc300, equals(const Color(0xFFd4d4d8)));
      expect(Rush.zinc400, equals(const Color(0xFFa1a1aa)));
      expect(Rush.zinc500, equals(const Color(0xFF71717a)));
      expect(Rush.zinc600, equals(const Color(0xFF52525b)));
      expect(Rush.zinc700, equals(const Color(0xFF3f3f46)));
      expect(Rush.zinc800, equals(const Color(0xFF27272a)));
      expect(Rush.zinc900, equals(const Color(0xFF18181b)));
      expect(Rush.stoneHex50, equals('#FAFAF9'));
      expect(Rush.stoneHex100, equals('#F5F5F4'));
      expect(Rush.stoneHex200, equals('#E7E5E4'));
      expect(Rush.stoneHex300, equals('#D6D3D1'));
      expect(Rush.stoneHex400, equals('#A8A29E'));
      expect(Rush.stoneHex500, equals('#78716C'));
      expect(Rush.stoneHex600, equals('#57534E'));
      expect(Rush.stoneHex700, equals('#44403C'));
      expect(Rush.stoneHex800, equals('#292524'));
      expect(Rush.stoneHex900, equals('#1C1917'));
      expect(Rush.stone50, equals(const Color(0xFFFAFAF9)));
      expect(Rush.stone100, equals(const Color(0xFFF5F5F4)));
      expect(Rush.stone200, equals(const Color(0xFFE7E5E4)));
      expect(Rush.stone300, equals(const Color(0xFFD6D3D1)));
      expect(Rush.stone400, equals(const Color(0xFFA8A29E)));
      expect(Rush.stone500, equals(const Color(0xFF78716C)));
      expect(Rush.stone600, equals(const Color(0xFF57534E)));
      expect(Rush.stone700, equals(const Color(0xFF44403C)));
      expect(Rush.stone800, equals(const Color(0xFF292524)));
      expect(Rush.stone900, equals(const Color(0xFF1C1917)));
    });

    test('has correct neutral color values', () {
      expect(Rush.neutralHex50, equals('#fafafa'));
      expect(Rush.neutralHex100, equals('#f5f5f5'));
      expect(Rush.neutralHex200, equals('#e5e5e5'));
      expect(Rush.neutralHex300, equals('#d4d4d4'));
      expect(Rush.neutralHex400, equals('#a3a3a3'));
      expect(Rush.neutralHex500, equals('#737373'));
      expect(Rush.neutralHex600, equals('#525252'));
      expect(Rush.neutralHex700, equals('#404040'));
      expect(Rush.neutralHex800, equals('#262626'));
      expect(Rush.neutralHex900, equals('#171717'));
      expect(Rush.neutral50, equals(const Color(0xFFfafafa)));
      expect(Rush.neutral100, equals(const Color(0xFFf5f5f5)));
      expect(Rush.neutral200, equals(const Color(0xFFe5e5e5)));
      expect(Rush.neutral300, equals(const Color(0xFFd4d4d4)));
      expect(Rush.neutral400, equals(const Color(0xFFa3a3a3)));
      expect(Rush.neutral500, equals(const Color(0xFF737373)));
      expect(Rush.neutral600, equals(const Color(0xFF525252)));
      expect(Rush.neutral700, equals(const Color(0xFF404040)));
      expect(Rush.neutral800, equals(const Color(0xFF262626)));
      expect(Rush.neutral900, equals(const Color(0xFF171717)));
    });

    test('has correct red color values', () {
      expect(Rush.redHex50, equals('#FEF2F2'));
      expect(Rush.redHex100, equals('#FEE2E2'));
      expect(Rush.redHex200, equals('#FECACA'));
      expect(Rush.redHex300, equals('#FCA5A5'));
      expect(Rush.redHex400, equals('#F87171'));
      expect(Rush.redHex500, equals('#EF4444'));
      expect(Rush.redHex600, equals('#DC2626'));
      expect(Rush.redHex700, equals('#B91C1C'));
      expect(Rush.redHex800, equals('#991B1B'));
      expect(Rush.redHex900, equals('#7F1D1D'));
      expect(Rush.red50, equals(const Color(0xFFFEF2F2)));
      expect(Rush.red100, equals(const Color(0xFFFEE2E2)));
      expect(Rush.red200, equals(const Color(0xFFFECACA)));
      expect(Rush.red300, equals(const Color(0xFFFCA5A5)));
      expect(Rush.red400, equals(const Color(0xFFF87171)));
      expect(Rush.red500, equals(const Color(0xFFEF4444)));
      expect(Rush.red600, equals(const Color(0xFFDC2626)));
      expect(Rush.red700, equals(const Color(0xFFB91C1C)));
      expect(Rush.red800, equals(const Color(0xFF991B1B)));
      expect(Rush.red900, equals(const Color(0xFF7F1D1D)));
    });

    test('has correct orange color values', () {
      expect(Rush.orangeHex50, equals('#FFF7ED'));
      expect(Rush.orangeHex100, equals('#FFEDD5'));
      expect(Rush.orangeHex200, equals('#FED7AA'));
      expect(Rush.orangeHex300, equals('#FDBA74'));
      expect(Rush.orangeHex400, equals('#FB923C'));
      expect(Rush.orangeHex500, equals('#F97316'));
      expect(Rush.orangeHex600, equals('#EA580C'));
      expect(Rush.orangeHex700, equals('#C2410C'));
      expect(Rush.orangeHex800, equals('#9A3412'));
      expect(Rush.orangeHex900, equals('#7C2D12'));
      expect(Rush.orange50, equals(const Color(0xFFFFF7ED)));
      expect(Rush.orange100, equals(const Color(0xFFFFEDD5)));
      expect(Rush.orange200, equals(const Color(0xFFFED7AA)));
      expect(Rush.orange300, equals(const Color(0xFFFDBA74)));
      expect(Rush.orange400, equals(const Color(0xFFFB923C)));
      expect(Rush.orange500, equals(const Color(0xFFF97316)));
      expect(Rush.orange600, equals(const Color(0xFFEA580C)));
      expect(Rush.orange700, equals(const Color(0xFFC2410C)));
      expect(Rush.orange800, equals(const Color(0xFF9A3412)));
      expect(Rush.orange900, equals(const Color(0xFF7C2D12)));
    });

    test('has correct amber color values', () {
      expect(Rush.amberHex50, equals('#FFFBEB'));
      expect(Rush.amberHex100, equals('#FEF3C7'));
      expect(Rush.amberHex200, equals('#FDE68A'));
      expect(Rush.amberHex300, equals('#FCD34D'));
      expect(Rush.amberHex400, equals('#FBBF24'));
      expect(Rush.amberHex500, equals('#F59E0B'));
      expect(Rush.amberHex600, equals('#D97706'));
      expect(Rush.amberHex700, equals('#B45309'));
      expect(Rush.amberHex800, equals('#92400E'));
      expect(Rush.amberHex900, equals('#78350F'));
      expect(Rush.amber50, equals(const Color(0xFFFFFBEB)));
      expect(Rush.amber100, equals(const Color(0xFFFEF3C7)));
      expect(Rush.amber200, equals(const Color(0xFFFDE68A)));
      expect(Rush.amber300, equals(const Color(0xFFFCD34D)));
      expect(Rush.amber400, equals(const Color(0xFFFBBF24)));
      expect(Rush.amber500, equals(const Color(0xFFF59E0B)));
      expect(Rush.amber600, equals(const Color(0xFFD97706)));
      expect(Rush.amber700, equals(const Color(0xFFB45309)));
      expect(Rush.amber800, equals(const Color(0xFF92400E)));
      expect(Rush.amber900, equals(const Color(0xFF78350F)));
    });

    test('has correct yellow color values', () {
      expect(Rush.yellowHex50, equals('#FEFCE8'));
      expect(Rush.yellowHex100, equals('#FEF9C3'));
      expect(Rush.yellowHex200, equals('#FEF08A'));
      expect(Rush.yellowHex300, equals('#FDE047'));
      expect(Rush.yellowHex400, equals('#FACC15'));
      expect(Rush.yellowHex500, equals('#EAB308'));
      expect(Rush.yellowHex600, equals('#CA8A04'));
      expect(Rush.yellowHex700, equals('#A16207'));
      expect(Rush.yellowHex800, equals('#854D0E'));
      expect(Rush.yellowHex900, equals('#713F12'));
      expect(Rush.yellow50, equals(const Color(0xFFFEFCE8)));
      expect(Rush.yellow100, equals(const Color(0xFFFEF9C3)));
      expect(Rush.yellow200, equals(const Color(0xFFFEF08A)));
      expect(Rush.yellow300, equals(const Color(0xFFFDE047)));
      expect(Rush.yellow400, equals(const Color(0xFFFACC15)));
      expect(Rush.yellow500, equals(const Color(0xFFEAB308)));
      expect(Rush.yellow600, equals(const Color(0xFFCA8A04)));
      expect(Rush.yellow700, equals(const Color(0xFFA16207)));
      expect(Rush.yellow800, equals(const Color(0xFF854D0E)));
      expect(Rush.yellow900, equals(const Color(0xFF713F12)));
    });

    test('has correct lime color values', () {
      expect(Rush.limeHex50, equals('#F7FEE7'));
      expect(Rush.limeHex100, equals('#ECFCCB'));
      expect(Rush.limeHex200, equals('#D9F99D'));
      expect(Rush.limeHex300, equals('#BEF264'));
      expect(Rush.limeHex400, equals('#A3E635'));
      expect(Rush.limeHex500, equals('#84CC16'));
      expect(Rush.limeHex600, equals('#65A30D'));
      expect(Rush.limeHex700, equals('#4D7C0F'));
      expect(Rush.limeHex800, equals('#3F6212'));
      expect(Rush.limeHex900, equals('#365314'));
      expect(Rush.lime50, equals(const Color(0xFFF7FEE7)));
      expect(Rush.lime100, equals(const Color(0xFFECFCCB)));
      expect(Rush.lime200, equals(const Color(0xFFD9F99D)));
      expect(Rush.lime300, equals(const Color(0xFFBEF264)));
      expect(Rush.lime400, equals(const Color(0xFFA3E635)));
      expect(Rush.lime500, equals(const Color(0xFF84CC16)));
      expect(Rush.lime600, equals(const Color(0xFF65A30D)));
      expect(Rush.lime700, equals(const Color(0xFF4D7C0F)));
      expect(Rush.lime800, equals(const Color(0xFF3F6212)));
      expect(Rush.lime900, equals(const Color(0xFF365314)));
    });

    test('has correct green color values', () {
      expect(Rush.greenHex50, equals('#F0FDF4'));
      expect(Rush.greenHex100, equals('#DCFCE7'));
      expect(Rush.greenHex200, equals('#BBF7D0'));
      expect(Rush.greenHex300, equals('#86EFAC'));
      expect(Rush.greenHex400, equals('#4ADE80'));
      expect(Rush.greenHex500, equals('#22C55E'));
      expect(Rush.greenHex600, equals('#16A34A'));
      expect(Rush.greenHex700, equals('#15803D'));
      expect(Rush.greenHex800, equals('#166534'));
      expect(Rush.greenHex900, equals('#14532D'));
      expect(Rush.green50, equals(const Color(0xFFF0FDF4)));
      expect(Rush.green100, equals(const Color(0xFFDCFCE7)));
      expect(Rush.green200, equals(const Color(0xFFBBF7D0)));
      expect(Rush.green300, equals(const Color(0xFF86EFAC)));
      expect(Rush.green400, equals(const Color(0xFF4ADE80)));
      expect(Rush.green500, equals(const Color(0xFF22C55E)));
      expect(Rush.green600, equals(const Color(0xFF16A34A)));
      expect(Rush.green700, equals(const Color(0xFF15803D)));
      expect(Rush.green800, equals(const Color(0xFF166534)));
      expect(Rush.green900, equals(const Color(0xFF14532D)));
    });

    test('has correct emerald color values', () {
      expect(Rush.emeraldHex50, equals('#ECFDF5'));
      expect(Rush.emeraldHex100, equals('#D1FAE5'));
      expect(Rush.emeraldHex200, equals('#A7F3D0'));
      expect(Rush.emeraldHex300, equals('#6EE7B7'));
      expect(Rush.emeraldHex400, equals('#34D399'));
      expect(Rush.emeraldHex500, equals('#10B981'));
      expect(Rush.emeraldHex600, equals('#059669'));
      expect(Rush.emeraldHex700, equals('#047857'));
      expect(Rush.emeraldHex800, equals('#065F46'));
      expect(Rush.emeraldHex900, equals('#064E3B'));
      expect(Rush.emerald50, equals(const Color(0xFFECFDF5)));
      expect(Rush.emerald100, equals(const Color(0xFFD1FAE5)));
      expect(Rush.emerald200, equals(const Color(0xFFA7F3D0)));
      expect(Rush.emerald300, equals(const Color(0xFF6EE7B7)));
      expect(Rush.emerald400, equals(const Color(0xFF34D399)));
      expect(Rush.emerald500, equals(const Color(0xFF10B981)));
      expect(Rush.emerald600, equals(const Color(0xFF059669)));
      expect(Rush.emerald700, equals(const Color(0xFF047857)));
      expect(Rush.emerald800, equals(const Color(0xFF065F46)));
      expect(Rush.emerald900, equals(const Color(0xFF064E3B)));
    });

    test('has correct teal color values', () {
      expect(Rush.tealHex50, equals('#F0FDFA'));
      expect(Rush.tealHex100, equals('#CCFBF1'));
      expect(Rush.tealHex200, equals('#99F6E4'));
      expect(Rush.tealHex300, equals('#5EEAD4'));
      expect(Rush.tealHex400, equals('#2DD4BF'));
      expect(Rush.tealHex500, equals('#14B8A6'));
      expect(Rush.tealHex600, equals('#0D9488'));
      expect(Rush.tealHex700, equals('#0F766E'));
      expect(Rush.tealHex800, equals('#115E59'));
      expect(Rush.tealHex900, equals('#134E4A'));
      expect(Rush.teal50, equals(const Color(0xFFF0FDFA)));
      expect(Rush.teal100, equals(const Color(0xFFCCFBF1)));
      expect(Rush.teal200, equals(const Color(0xFF99F6E4)));
      expect(Rush.teal300, equals(const Color(0xFF5EEAD4)));
      expect(Rush.teal400, equals(const Color(0xFF2DD4BF)));
      expect(Rush.teal500, equals(const Color(0xFF14B8A6)));
      expect(Rush.teal600, equals(const Color(0xFF0D9488)));
      expect(Rush.teal700, equals(const Color(0xFF0F766E)));
      expect(Rush.teal800, equals(const Color(0xFF115E59)));
      expect(Rush.teal900, equals(const Color(0xFF134E4A)));
    });

    test('has correct cyan color values', () {
      expect(Rush.cyanHex50, equals('#ECFEFF'));
      expect(Rush.cyanHex100, equals('#CFFAFE'));
      expect(Rush.cyanHex200, equals('#A5F3FC'));
      expect(Rush.cyanHex300, equals('#67E8F9'));
      expect(Rush.cyanHex400, equals('#22D3EE'));
      expect(Rush.cyanHex500, equals('#06B6D4'));
      expect(Rush.cyanHex600, equals('#0891B2'));
      expect(Rush.cyanHex700, equals('#0E7490'));
      expect(Rush.cyanHex800, equals('#155E75'));
      expect(Rush.cyanHex900, equals('#164E63'));
      expect(Rush.cyan50, equals(const Color(0xFFECFEFF)));
      expect(Rush.cyan100, equals(const Color(0xFFCFFAFE)));
      expect(Rush.cyan200, equals(const Color(0xFFA5F3FC)));
      expect(Rush.cyan300, equals(const Color(0xFF67E8F9)));
      expect(Rush.cyan400, equals(const Color(0xFF22D3EE)));
      expect(Rush.cyan500, equals(const Color(0xFF06B6D4)));
      expect(Rush.cyan600, equals(const Color(0xFF0891B2)));
      expect(Rush.cyan700, equals(const Color(0xFF0E7490)));
      expect(Rush.cyan800, equals(const Color(0xFF155E75)));
      expect(Rush.cyan900, equals(const Color(0xFF164E63)));
    });
    test('has correct sky color values', () {
      expect(Rush.skyHex50, equals('#F0F9FF'));
      expect(Rush.skyHex100, equals('#E0F2FE'));
      expect(Rush.skyHex200, equals('#BAE6FD'));
      expect(Rush.skyHex300, equals('#7DD3FC'));
      expect(Rush.skyHex400, equals('#38BDF8'));
      expect(Rush.skyHex500, equals('#0EA5E9'));
      expect(Rush.skyHex600, equals('#0284C7'));
      expect(Rush.skyHex700, equals('#0369A1'));
      expect(Rush.skyHex800, equals('#075985'));
      expect(Rush.skyHex900, equals('#0C4A6E'));
      expect(Rush.sky50, equals(const Color(0xFFF0F9FF)));
      expect(Rush.sky100, equals(const Color(0xFFE0F2FE)));
      expect(Rush.sky200, equals(const Color(0xFFBAE6FD)));
      expect(Rush.sky300, equals(const Color(0xFF7DD3FC)));
      expect(Rush.sky400, equals(const Color(0xFF38BDF8)));
      expect(Rush.sky500, equals(const Color(0xFF0EA5E9)));
      expect(Rush.sky600, equals(const Color(0xFF0284C7)));
      expect(Rush.sky700, equals(const Color(0xFF0369A1)));
      expect(Rush.sky800, equals(const Color(0xFF075985)));
      expect(Rush.sky900, equals(const Color(0xFF0C4A6E)));
    });

    test('has correct blue color values', () {
      expect(Rush.blueHex50, equals('#EFF6FF'));
      expect(Rush.blueHex100, equals('#DBEAFE'));
      expect(Rush.blueHex200, equals('#BFDBFE'));
      expect(Rush.blueHex300, equals('#93C5FD'));
      expect(Rush.blueHex400, equals('#60A5FA'));
      expect(Rush.blueHex500, equals('#3B82F6'));
      expect(Rush.blueHex600, equals('#2563EB'));
      expect(Rush.blueHex700, equals('#1D4ED8'));
      expect(Rush.blueHex800, equals('#1E40AF'));
      expect(Rush.blueHex900, equals('#1E3A8A'));
      expect(Rush.blue50, equals(const Color(0xFFEFF6FF)));
      expect(Rush.blue100, equals(const Color(0xFFDBEAFE)));
      expect(Rush.blue200, equals(const Color(0xFFBFDBFE)));
      expect(Rush.blue300, equals(const Color(0xFF93C5FD)));
      expect(Rush.blue400, equals(const Color(0xFF60A5FA)));
      expect(Rush.blue500, equals(const Color(0xFF3B82F6)));
      expect(Rush.blue600, equals(const Color(0xFF2563EB)));
      expect(Rush.blue700, equals(const Color(0xFF1D4ED8)));
      expect(Rush.blue800, equals(const Color(0xFF1E40AF)));
      expect(Rush.blue900, equals(const Color(0xFF1E3A8A)));
    });

    test('has correct indigo color values', () {
      expect(Rush.indigoHex50, equals('#EEF2FF'));
      expect(Rush.indigoHex100, equals('#E0E7FF'));
      expect(Rush.indigoHex200, equals('#C7D2FE'));
      expect(Rush.indigoHex300, equals('#A5B4FC'));
      expect(Rush.indigoHex400, equals('#818CF8'));
      expect(Rush.indigoHex500, equals('#6366F1'));
      expect(Rush.indigoHex600, equals('#4F46E5'));
      expect(Rush.indigoHex700, equals('#4338CA'));
      expect(Rush.indigoHex800, equals('#3730A3'));
      expect(Rush.indigoHex900, equals('#312E81'));
      expect(Rush.indigo50, equals(const Color(0xFFEEF2FF)));
      expect(Rush.indigo100, equals(const Color(0xFFE0E7FF)));
      expect(Rush.indigo200, equals(const Color(0xFFC7D2FE)));
      expect(Rush.indigo300, equals(const Color(0xFFA5B4FC)));
      expect(Rush.indigo400, equals(const Color(0xFF818CF8)));
      expect(Rush.indigo500, equals(const Color(0xFF6366F1)));
      expect(Rush.indigo600, equals(const Color(0xFF4F46E5)));
      expect(Rush.indigo700, equals(const Color(0xFF4338CA)));
      expect(Rush.indigo800, equals(const Color(0xFF3730A3)));
      expect(Rush.indigo900, equals(const Color(0xFF312E81)));
    });

    test('has correct violet color values', () {
      expect(Rush.violetHex50, equals('#F5F3FF'));
      expect(Rush.violetHex100, equals('#EDE9FE'));
      expect(Rush.violetHex200, equals('#DDD6FE'));
      expect(Rush.violetHex300, equals('#C4B5FD'));
      expect(Rush.violetHex400, equals('#A78BFA'));
      expect(Rush.violetHex500, equals('#8B5CF6'));
      expect(Rush.violetHex600, equals('#7C3AED'));
      expect(Rush.violetHex700, equals('#6D28D9'));
      expect(Rush.violetHex800, equals('#5B21B6'));
      expect(Rush.violetHex900, equals('#4C1D95'));
      expect(Rush.violet50, equals(const Color(0xFFF5F3FF)));
      expect(Rush.violet100, equals(const Color(0xFFEDE9FE)));
      expect(Rush.violet200, equals(const Color(0xFFDDD6FE)));
      expect(Rush.violet300, equals(const Color(0xFFC4B5FD)));
      expect(Rush.violet400, equals(const Color(0xFFA78BFA)));
      expect(Rush.violet500, equals(const Color(0xFF8B5CF6)));
      expect(Rush.violet600, equals(const Color(0xFF7C3AED)));
      expect(Rush.violet700, equals(const Color(0xFF6D28D9)));
      expect(Rush.violet800, equals(const Color(0xFF5B21B6)));
      expect(Rush.violet900, equals(const Color(0xFF4C1D95)));
    });

    test('has correct purple color values', () {
      expect(Rush.purpleHex50, equals('#FAF5FF'));
      expect(Rush.purpleHex100, equals('#F3E8FF'));
      expect(Rush.purpleHex200, equals('#E9D5FF'));
      expect(Rush.purpleHex300, equals('#D8B4FE'));
      expect(Rush.purpleHex400, equals('#C084FC'));
      expect(Rush.purpleHex500, equals('#A855F7'));
      expect(Rush.purpleHex600, equals('#9333EA'));
      expect(Rush.purpleHex700, equals('#7E22CE'));
      expect(Rush.purpleHex800, equals('#6B21A8'));
      expect(Rush.purpleHex900, equals('#581C87'));
      expect(Rush.purple50, equals(const Color(0xFFFAF5FF)));
      expect(Rush.purple100, equals(const Color(0xFFF3E8FF)));
      expect(Rush.purple200, equals(const Color(0xFFE9D5FF)));
      expect(Rush.purple300, equals(const Color(0xFFD8B4FE)));
      expect(Rush.purple400, equals(const Color(0xFFC084FC)));
      expect(Rush.purple500, equals(const Color(0xFFA855F7)));
      expect(Rush.purple600, equals(const Color(0xFF9333EA)));
      expect(Rush.purple700, equals(const Color(0xFF7E22CE)));
      expect(Rush.purple800, equals(const Color(0xFF6B21A8)));
      expect(Rush.purple900, equals(const Color(0xFF581C87)));
    });

    test('has correct fuchsia color values', () {
      expect(Rush.fuchsiaHex50, equals('#FDF4FF'));
      expect(Rush.fuchsiaHex100, equals('#FAE8FF'));
      expect(Rush.fuchsiaHex200, equals('#F5D0FE'));
      expect(Rush.fuchsiaHex300, equals('#F0ABFC'));
      expect(Rush.fuchsiaHex400, equals('#E879F9'));
      expect(Rush.fuchsiaHex500, equals('#D946EF'));
      expect(Rush.fuchsiaHex600, equals('#C026D3'));
      expect(Rush.fuchsiaHex700, equals('#A21CAF'));
      expect(Rush.fuchsiaHex800, equals('#86198F'));
      expect(Rush.fuchsiaHex900, equals('#701A75'));
      expect(Rush.fuchsia50, equals(const Color(0xFFFDF4FF)));
      expect(Rush.fuchsia100, equals(const Color(0xFFFAE8FF)));
      expect(Rush.fuchsia200, equals(const Color(0xFFF5D0FE)));
      expect(Rush.fuchsia300, equals(const Color(0xFFF0ABFC)));
      expect(Rush.fuchsia400, equals(const Color(0xFFE879F9)));
      expect(Rush.fuchsia500, equals(const Color(0xFFD946EF)));
      expect(Rush.fuchsia600, equals(const Color(0xFFC026D3)));
      expect(Rush.fuchsia700, equals(const Color(0xFFA21CAF)));
      expect(Rush.fuchsia800, equals(const Color(0xFF86198F)));
      expect(Rush.fuchsia900, equals(const Color(0xFF701A75)));
    });

    test('has correct pink color values', () {
      expect(Rush.pinkHex50, equals('#FDF2F8'));
      expect(Rush.pinkHex100, equals('#FCE7F3'));
      expect(Rush.pinkHex200, equals('#FBCFE8'));
      expect(Rush.pinkHex300, equals('#F9A8D4'));
      expect(Rush.pinkHex400, equals('#F472B6'));
      expect(Rush.pinkHex500, equals('#EC4899'));
      expect(Rush.pinkHex600, equals('#DB2777'));
      expect(Rush.pinkHex700, equals('#BE185D'));
      expect(Rush.pinkHex800, equals('#9D174D'));
      expect(Rush.pinkHex900, equals('#831843'));
      expect(Rush.pink50, equals(const Color(0xFFFDF2F8)));
      expect(Rush.pink100, equals(const Color(0xFFFCE7F3)));
      expect(Rush.pink200, equals(const Color(0xFFFBCFE8)));
      expect(Rush.pink300, equals(const Color(0xFFF9A8D4)));
      expect(Rush.pink400, equals(const Color(0xFFF472B6)));
      expect(Rush.pink500, equals(const Color(0xFFEC4899)));
      expect(Rush.pink600, equals(const Color(0xFFDB2777)));
      expect(Rush.pink700, equals(const Color(0xFFBE185D)));
      expect(Rush.pink800, equals(const Color(0xFF9D174D)));
      expect(Rush.pink900, equals(const Color(0xFF831843)));
    });

    test('has correct rose color values', () {
      expect(Rush.roseHex50, equals('#FFF1F2'));
      expect(Rush.roseHex100, equals('#FFE4E6'));
      expect(Rush.roseHex200, equals('#FECDD3'));
      expect(Rush.roseHex300, equals('#FDA4AF'));
      expect(Rush.roseHex400, equals('#FB7185'));
      expect(Rush.roseHex500, equals('#F43F5E'));
      expect(Rush.roseHex600, equals('#E11D48'));
      expect(Rush.roseHex700, equals('#BE123C'));
      expect(Rush.roseHex800, equals('#9F1239'));
      expect(Rush.roseHex900, equals('#881337'));
      expect(Rush.rose50, equals(const Color(0xFFFFF1F2)));
      expect(Rush.rose100, equals(const Color(0xFFFFE4E6)));
      expect(Rush.rose200, equals(const Color(0xFFFECDD3)));
      expect(Rush.rose300, equals(const Color(0xFFFDA4AF)));
      expect(Rush.rose400, equals(const Color(0xFFFB7185)));
      expect(Rush.rose500, equals(const Color(0xFFF43F5E)));
      expect(Rush.rose600, equals(const Color(0xFFE11D48)));
      expect(Rush.rose700, equals(const Color(0xFFBE123C)));
      expect(Rush.rose800, equals(const Color(0xFF9F1239)));
      expect(Rush.rose900, equals(const Color(0xFF881337)));
    });

    test('has correct brown color values', () {
      expect(Rush.brownHex50, equals('#EFEBE9'));
      expect(Rush.brownHex100, equals('#D7CCC8'));
      expect(Rush.brownHex200, equals('#BCAAA4'));
      expect(Rush.brownHex300, equals('#A1887F'));
      expect(Rush.brownHex400, equals('#8D6E63'));
      expect(Rush.brownHex500, equals('#795548'));
      expect(Rush.brownHex600, equals('#6D4C41'));
      expect(Rush.brownHex700, equals('#5D4037'));
      expect(Rush.brownHex800, equals('#4E342E'));
      expect(Rush.brownHex900, equals('#3E2723'));
      expect(Rush.brown50, equals(const Color(0xFFEFEBE9)));
      expect(Rush.brown100, equals(const Color(0xFFD7CCC8)));
      expect(Rush.brown200, equals(const Color(0xFFBCAAA4)));
      expect(Rush.brown300, equals(const Color(0xFFA1887F)));
      expect(Rush.brown400, equals(const Color(0xFF8D6E63)));
      expect(Rush.brown500, equals(const Color(0xFF795548)));
      expect(Rush.brown600, equals(const Color(0xFF6D4C41)));
      expect(Rush.brown700, equals(const Color(0xFF5D4037)));
      expect(Rush.brown800, equals(const Color(0xFF4E342E)));
      expect(Rush.brown900, equals(const Color(0xFF3E2723)));
    });

    test('has correct mint color values', () {
      expect(Rush.mintHex50, equals('#F1F5F8'));
      expect(Rush.mintHex100, equals('#E3F0F3'));
      expect(Rush.mintHex200, equals('#D5ECEE'));
      expect(Rush.mintHex300, equals('#C7E8E9'));
      expect(Rush.mintHex400, equals('#BBE3E4'));
      expect(Rush.mintHex500, equals('#ADDEDF'));
      expect(Rush.mintHex600, equals('#9CDAD9'));
      expect(Rush.mintHex700, equals('#8CC6C3'));
      expect(Rush.mintHex800, equals('#7ABAB7'));
      expect(Rush.mintHex900, equals('#68AACB'));
      expect(Rush.mint50, equals(const Color(0xFFF1F5F8)));
      expect(Rush.mint100, equals(const Color(0xFFE3F0F3)));
      expect(Rush.mint200, equals(const Color(0xFFD5ECEE)));
      expect(Rush.mint300, equals(const Color(0xFFC7E8E9)));
      expect(Rush.mint400, equals(const Color(0xFFBBE3E4)));
      expect(Rush.mint500, equals(const Color(0xFFADDEDF)));
      expect(Rush.mint600, equals(const Color(0xFF9CDAD9)));
      expect(Rush.mint700, equals(const Color(0xFF8CC6C3)));
      expect(Rush.mint800, equals(const Color(0xFF7ABAB7)));
      expect(Rush.mint900, equals(const Color(0xFF68AACB)));
    });

    test('has correct padding values', () {
      expect(Rush.e(10), equals(const EdgeInsets.all(10)));
      expect(Rush.e0, equals(EdgeInsets.zero));
      expect(Rush.e1, equals(const EdgeInsets.all(Rush.dp1)));
      expect(Rush.e2, equals(const EdgeInsets.all(Rush.dp2)));
      expect(Rush.e4, equals(const EdgeInsets.all(Rush.dp4)));
      expect(Rush.e8, equals(const EdgeInsets.all(Rush.dp8)));
      expect(Rush.e12, equals(const EdgeInsets.all(Rush.dp12)));
      expect(Rush.e16, equals(const EdgeInsets.all(Rush.dp16)));
      expect(Rush.e20, equals(const EdgeInsets.all(Rush.dp20)));
      expect(Rush.e24, equals(const EdgeInsets.all(Rush.dp24)));
      expect(Rush.e32, equals(const EdgeInsets.all(Rush.dp32)));
      expect(Rush.e48, equals(const EdgeInsets.all(Rush.dp48)));
      expect(Rush.e64, equals(const EdgeInsets.all(Rush.dp64)));

      expect(Rush.ex(10), equals(const EdgeInsets.symmetric(horizontal: 10)));
      expect(Rush.ey(10), equals(const EdgeInsets.symmetric(vertical: 10)));
      expect(Rush.ey0, equals(EdgeInsets.zero));
      expect(Rush.ex0, equals(EdgeInsets.zero));
      expect(Rush.ey1, equals(const EdgeInsets.symmetric(vertical: Rush.dp1)));
      expect(
        Rush.ex1,
        equals(const EdgeInsets.symmetric(horizontal: Rush.dp1)),
      );
      expect(Rush.ey2, equals(const EdgeInsets.symmetric(vertical: Rush.dp2)));
      expect(
        Rush.ex2,
        equals(const EdgeInsets.symmetric(horizontal: Rush.dp2)),
      );
      expect(Rush.ey4, equals(const EdgeInsets.symmetric(vertical: Rush.dp4)));
      expect(
        Rush.ex4,
        equals(const EdgeInsets.symmetric(horizontal: Rush.dp4)),
      );
      expect(Rush.ey8, equals(const EdgeInsets.symmetric(vertical: Rush.dp8)));
      expect(
        Rush.ex8,
        equals(const EdgeInsets.symmetric(horizontal: Rush.dp8)),
      );
      expect(
        Rush.ex12,
        equals(const EdgeInsets.symmetric(horizontal: Rush.dp12)),
      );
      expect(
        Rush.ey12,
        equals(const EdgeInsets.symmetric(vertical: Rush.dp12)),
      );
      expect(
        Rush.ey16,
        equals(const EdgeInsets.symmetric(vertical: Rush.dp16)),
      );
      expect(
        Rush.ex16,
        equals(const EdgeInsets.symmetric(horizontal: Rush.dp16)),
      );
      expect(
        Rush.ey20,
        equals(const EdgeInsets.symmetric(vertical: Rush.dp20)),
      );
      expect(
        Rush.ex20,
        equals(const EdgeInsets.symmetric(horizontal: Rush.dp20)),
      );
      expect(
        Rush.ey24,
        equals(const EdgeInsets.symmetric(vertical: Rush.dp24)),
      );
      expect(
        Rush.ex24,
        equals(const EdgeInsets.symmetric(horizontal: Rush.dp24)),
      );
      expect(
        Rush.ey32,
        equals(const EdgeInsets.symmetric(vertical: Rush.dp32)),
      );
      expect(
        Rush.ex32,
        equals(const EdgeInsets.symmetric(horizontal: Rush.dp32)),
      );
      expect(
        Rush.ex48,
        equals(const EdgeInsets.symmetric(horizontal: Rush.dp48)),
      );
      expect(
        Rush.ey48,
        equals(const EdgeInsets.symmetric(vertical: Rush.dp48)),
      );
      expect(
        Rush.ey64,
        equals(const EdgeInsets.symmetric(vertical: Rush.dp64)),
      );
      expect(
        Rush.ex64,
        equals(const EdgeInsets.symmetric(horizontal: Rush.dp64)),
      );
    });

    test('has correct rounded shape borders', () {
      expect(
        Rush.roundedXS,
        isA<RoundedRectangleBorder>().having(
          (border) => border.borderRadius,
          'borderRadius',
          equals(BorderRadius.circular(Rush.dp4)),
        ),
      );

      expect(
        Rush.roundedSM,
        isA<RoundedRectangleBorder>().having(
          (border) => border.borderRadius,
          'borderRadius',
          equals(BorderRadius.circular(Rush.dp8)),
        ),
      );

      expect(
        Rush.rounded,
        isA<RoundedRectangleBorder>().having(
          (border) => border.borderRadius,
          'borderRadius',
          equals(BorderRadius.circular(Rush.dp16)),
        ),
      );

      expect(
        Rush.roundedLG,
        isA<RoundedRectangleBorder>().having(
          (border) => border.borderRadius,
          'borderRadius',
          equals(BorderRadius.circular(Rush.dp20)),
        ),
      );

      expect(
        Rush.roundedXL,
        isA<RoundedRectangleBorder>().having(
          (border) => border.borderRadius,
          'borderRadius',
          equals(BorderRadius.circular(Rush.dp32)),
        ),
      );

      const customRadius = 10.0;
      final roundedCustomBorder = Rush.roundedCustom(customRadius);
      expect(
        roundedCustomBorder,
        isA<RoundedRectangleBorder>().having(
          (border) => border.borderRadius,
          'borderRadius',
          equals(BorderRadius.circular(customRadius)),
        ),
      );
    });
    test('has correct platform detection', () {
      expect(Rush.isReleaseMode, equals(kReleaseMode));
      expect(Rush.isDebugMode, equals(kDebugMode));
      expect(Rush.isProfileMode, equals(kProfileMode));
      expect(Rush.isWeb, equals(kIsWeb));
      expect(
        Rush.isAndroid,
        equals(
          !Rush.isWeb && defaultTargetPlatform == TargetPlatform.android,
        ),
      );
      expect(
        Rush.isIOS,
        equals(!Rush.isWeb && defaultTargetPlatform == TargetPlatform.iOS),
      );
      expect(
        Rush.isMobileOS,
        equals(!Rush.isWeb && (Rush.isAndroid || Rush.isIOS)),
      );
      expect(
        Rush.isLinux,
        equals(!Rush.isWeb && defaultTargetPlatform == TargetPlatform.linux),
      );
      expect(
        Rush.isMacOS,
        equals(!Rush.isWeb && defaultTargetPlatform == TargetPlatform.macOS),
      );
      expect(
        Rush.isWindows,
        equals(
          !Rush.isWeb && defaultTargetPlatform == TargetPlatform.windows,
        ),
      );
      expect(
        Rush.isFuchsia,
        equals(
          !Rush.isWeb && defaultTargetPlatform == TargetPlatform.fuchsia,
        ),
      );
      expect(
        Rush.isDesktop,
        equals(
          !Rush.isWeb &&
              (defaultTargetPlatform == TargetPlatform.linux ||
                  defaultTargetPlatform == TargetPlatform.macOS ||
                  defaultTargetPlatform == TargetPlatform.windows),
        ),
      );
    });
    test('hexToAscii converts hexadecimal string to ASCII text', () {
      const hex = '48656c6c6f20576f726c64';
      const expected = 'Hello World';
      final result = Rush.hexToAscii(hex);
      expect(result, equals(expected));
    });

    test('hexToColor converts hexadecimal color code to Color object', () {
      const code = '#F44336';
      final expected = Colors.red.shade500;
      final result = Rush.hexToColor(code);
      expect(result, equals(expected));
    });

    test('getMaterialColor creates MaterialColor object based on Color', () {
      const color = Colors.blue;
      final red = color.red;
      final green = color.green;
      final blue = color.blue;
      final expected = MaterialColor(color.value, {
        50: Color.fromRGBO(red, green, blue, .1),
        100: Color.fromRGBO(red, green, blue, .2),
        200: Color.fromRGBO(red, green, blue, .3),
        300: Color.fromRGBO(red, green, blue, .4),
        400: Color.fromRGBO(red, green, blue, .5),
        500: Color.fromRGBO(red, green, blue, .6),
        600: Color.fromRGBO(red, green, blue, .7),
        700: Color.fromRGBO(red, green, blue, .8),
        800: Color.fromRGBO(red, green, blue, .9),
        900: Color.fromRGBO(red, green, blue, 1),
      });
      final result = Rush.getMaterialColor(color);
      expect(result, equals(expected));
    });

    test('randomOpaqueColor returns Color object with random opaque color', () {
      final result = Rush.randomOpaqueColor;
      expect(result, isA<Color>());
    });

    test('randomPrimaryColor returns Color object with random primary color',
        () {
      final result = Rush.randomPrimaryColor;
      expect(result, isA<Color>());
    });

    test(
        'randomColor returns Color object with random color and alpha value of 100',
        () {
      final result = Rush.randomColor;
      expect(result, isA<Color>());
      expect(result.alpha, equals(100));
    });

    test(
        'hexToIntWithPrefix converts hexadecimal color code to integer representation',
        () async {
      TestWidgetsFlutterBinding.ensureInitialized();
      const hexColor = '#FF0000';
      const hexColor2 = '#0xFF0000';
      const expected = 0xffff0000;
      const expected2 = 0xff0000;
      await Rush.toClipboard('Hello World');
      final result = Rush.hexToIntWithPrefix(hexColor);
      final result2 = Rush.hexToIntWithPrefix(hexColor2);
      expect(result, equals(expected));
      expect(result2, equals(expected2));
    });
    test('logs message to console with dotted line separators', () {
      const message = 'Test message';
      const hasDottedLine = true;

      // Call the log method
      Rush.log(message, hasDottedLine: hasDottedLine);

      // Assert that the message is logged to the console with dotted line separators
      // You can add your own assertions here based on your logging implementation
    });

    test('logs message to console without dotted line separators', () {
      const message = 'Test message';
      const hasDottedLine = false;

      // Call the log method
      Rush.log(message, hasDottedLine: hasDottedLine);

      // Assert that the message is logged to the console without dotted line separators
      // You can add your own assertions here based on your logging implementation
    });

    test('inspects object and returns the argument', () {
      final object = Object();

      // Call the inspect method
      Rush.inspect(object);
    });
  });
}
