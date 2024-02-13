/// Mixin [Rush] provides basic operations and utilities
///
/// This mixin provides a collection of static constants for
/// pixel values and colors.
/// It includes pixel values ranging from dp0 to dp64, and
/// various color constants
/// for different shades of gray, slate, zinc, stone, neutral,
/// red, orange, amber, yellow, and lime.
library;
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

import 'dart:developer' as dev;
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Mixin [Rush] provides basic operations and utilities
mixin Rush {
  /// Pixel Values
  static const double dp0 = 0;

  /// Pixel Value: 1
  static const double dp1 = 1;

  /// Pixel Value: 2
  static const double dp2 = 2;

  /// Pixel Value: 3
  static const double dp3 = 3;

  /// Pixel Value: 4
  static const double dp4 = 4;

  /// Pixel Value: 5
  static const double dp5 = 5;

  /// Pixel Value: 6
  static const double dp6 = 6;

  /// Pixel Value: 8
  static const double dp8 = 8;

  /// Pixel Value: 10
  static const double dp10 = 10;

  /// Pixel Value: 12
  static const double dp12 = 12;

  /// Pixel Value: 14
  static const double dp14 = 14;

  /// Pixel Value: 16
  static const double dp16 = 16;

  /// Pixel Value: 20
  static const double dp20 = 20;

  /// Pixel Value: 24
  static const double dp24 = 24;

  /// Pixel Value: 32
  static const double dp32 = 32;

  /// Pixel Value: 40
  static const double dp40 = 40;

  /// Pixel Value: 48
  static const double dp48 = 48;

  /// Pixel Value: 56
  static const double dp56 = 56;

  /// Pixel Value: 64
  static const double dp64 = 64;

  /// Hex color code for black (#000000).
  static const String blackHex = '#000000';

  /// Hex color code for white (#ffffff).
  static const String whiteHex = '#ffffff';

  /// Color object representing black (#000000).
  static const Color black = Color(0xFF000000);

  /// Color object representing black (#000000).
  static const Color transparent = Colors.transparent;

  /// Color object representing white (#ffffff).
  static const Color white = Color(0xFFFFFFFF);

  /// Hex color code for gray 50 (#f9fafb).
  static const String grayHex50 = '#f9fafb';

  /// Hex color code for gray 100 (#f3f4f6).
  static const String grayHex100 = '#f3f4f6';

  /// Hex color code for gray 200 (#e5e7eb).
  static const String grayHex200 = '#e5e7eb';

  /// Hex color code for gray 300 (#d1d5db).
  static const String grayHex300 = '#d1d5db';

  /// Hex color code for gray 400 (#9ca3af).
  static const String grayHex400 = '#9ca3af';

  /// Hex color code for gray 500 (#6b7280).
  static const String grayHex500 = '#6b7280';

  /// Hex color code for gray 600 (#4b5563).
  static const String grayHex600 = '#4b5563';

  /// Hex color code for gray 700 (#374151).
  static const String grayHex700 = '#374151';

  /// Hex color code for gray 800 (#1f2937).
  static const String grayHex800 = '#1f2937';

  /// Hex color code for gray 900 (#111827).
  static const String grayHex900 = '#111827';

  /// Color object representing gray 50 (#f9fafb).
  static const Color gray50 = Color(0xFFf9fafb);

  /// Color object representing gray 100 (#f3f4f6).
  static const Color gray100 = Color(0xFFf3f4f6);

  /// Color object representing gray 200 (#e5e7eb).
  static const Color gray200 = Color(0xFFe5e7eb);

  /// Color object representing gray 300 (#d1d5db).
  static const Color gray300 = Color(0xFFd1d5db);

  /// Color object representing gray 400 (#9ca3af).
  static const Color gray400 = Color(0xFF9ca3af);

  /// Color object representing gray 500 (#6b7280).
  static const Color gray500 = Color(0xFF6b7280);

  /// Color object representing gray 600 (#4b5563).
  static const Color gray600 = Color(0xFF4b5563);

  /// Color object representing gray 700 (#374151).
  static const Color gray700 = Color(0xFF374151);

  /// Color object representing gray 800 (#1f2937).
  static const Color gray800 = Color(0xFF1f2937);

  /// Color object representing gray 900 (#111827).
  static const Color gray900 = Color(0xFF111827);

  /// Hex color code for slate 50 (#f8fafc).
  static const String slateHex50 = '#f8fafc';

  /// Hex color code for slate 100 (#f1f5f9).
  static const String slateHex100 = '#f1f5f9';

  /// Hex color code for slate 200 (#e2e8f0).
  static const String slateHex200 = '#e2e8f0';

  /// Hex color code for slate 300 (#cbd5e1).
  static const String slateHex300 = '#cbd5e1';

  /// Hex color code for slate 400 (#94a3b8).
  static const String slateHex400 = '#94a3b8';

  /// Hex color code for slate 500 (#64748b).
  static const String slateHex500 = '#64748b';

  /// Hex color code for slate 600 (#475569).
  static const String slateHex600 = '#475569';

  /// Hex color code for slate 700 (#334155).
  static const String slateHex700 = '#334155';

  /// Hex color code for slate 800 (#1e293b).
  static const String slateHex800 = '#1e293b';

  /// Hex color code for slate 900 (#0f172a).
  static const String slateHex900 = '#0f172a';

  /// Color object representing slate 50 (#f8fafc).
  static const Color slate50 = Color(0xFFf8fafc);

  /// Color object representing slate 100 (#f1f5f9).
  static const Color slate100 = Color(0xFFf1f5f9);

  /// Color object representing slate 200 (#e2e8f0).
  static const Color slate200 = Color(0xFFe2e8f0);

  /// Color object representing slate 300 (#cbd5e1).
  static const Color slate300 = Color(0xFFcbd5e1);

  /// Color object representing slate 400 (#94a3b8).
  static const Color slate400 = Color(0xFF94a3b8);

  /// Color object representing slate 500 (#64748b).
  static const Color slate500 = Color(0xFF64748b);

  /// Color object representing slate 600 (#475569).
  static const Color slate600 = Color(0xFF475569);

  /// Color object representing slate 700 (#334155).
  static const Color slate700 = Color(0xFF334155);

  /// Color object representing slate 800 (#1e293b).
  static const Color slate800 = Color(0xFF1e293b);

  /// Color object representing slate 900 (#0f172a).
  static const Color slate900 = Color(0xFF0f172a);

  /// Hex color code for zinc 50 (#fafafa).
  static const String zincHex50 = '#fafafa';

  /// Hex color code for zinc 100 (#f4f4f5).
  static const String zincHex100 = '#f4f4f5';

  /// Hex color code for zinc 200 (#e4e4e7).
  static const String zincHex200 = '#e4e4e7';

  /// Hex color code for zinc 300 (#d4d4d8).
  static const String zincHex300 = '#d4d4d8';

  /// Hex color code for zinc 400 (#a1a1aa).
  static const String zincHex400 = '#a1a1aa';

  /// Hex color code for zinc 500 (#71717a).
  static const String zincHex500 = '#71717a';

  /// Hex color code for zinc 600 (#52525b).
  static const String zincHex600 = '#52525b';

  /// Hex color code for zinc 700 (#3f3f46).
  static const String zincHex700 = '#3f3f46';

  /// Hex color code for zinc 800 (#27272a).
  static const String zincHex800 = '#27272a';

  /// Hex color code for zinc 900 (#18181b).
  static const String zincHex900 = '#18181b';

  /// Color object representing zinc 50 (#fafafa).
  static const Color zinc50 = Color(0xFFfafafa);

  /// Color object representing zinc 100 (#f4f4f5).
  static const Color zinc100 = Color(0xFFf4f4f5);

  /// Color object representing zinc 200 (#e4e4e7).
  static const Color zinc200 = Color(0xFFe4e4e7);

  /// Color object representing zinc 300 (#d4d4d8).
  static const Color zinc300 = Color(0xFFd4d4d8);

  /// Color object representing zinc 400 (#a1a1aa).
  static const Color zinc400 = Color(0xFFa1a1aa);

  /// Color object representing zinc 500 (#71717a).
  static const Color zinc500 = Color(0xFF71717a);

  /// Color object representing zinc 600 (#52525b).
  static const Color zinc600 = Color(0xFF52525b);

  /// Color object representing zinc 700 (#3f3f46).
  static const Color zinc700 = Color(0xFF3f3f46);

  /// Color object representing zinc 800 (#27272a).
  static const Color zinc800 = Color(0xFF27272a);

  /// Color object representing zinc 900 (#18181b).
  static const Color zinc900 = Color(0xFF18181b);

  /// Hex color code for stone 50 (#FAFAF9).
  static const String stoneHex50 = '#FAFAF9';

  /// Hex color code for stone 100 (#F5F5F4).
  static const String stoneHex100 = '#F5F5F4';

  /// Hex color code for stone 200 (#E7E5E4).
  static const String stoneHex200 = '#E7E5E4';

  /// Hex color code for stone 300 (#D6D3D1).
  static const String stoneHex300 = '#D6D3D1';

  /// Hex color code for stone 400 (#A8A29E).
  static const String stoneHex400 = '#A8A29E';

  /// Hex color code for stone 500 (#78716C).
  static const String stoneHex500 = '#78716C';

  /// Hex color code for stone 600 (#57534E).
  static const String stoneHex600 = '#57534E';

  /// Hex color code for stone 700 (#44403C).
  static const String stoneHex700 = '#44403C';

  /// Hex color code for stone 800 (#292524).
  static const String stoneHex800 = '#292524';

  /// Hex color code for stone 900 (#1C1917).
  static const String stoneHex900 = '#1C1917';

  /// Color object representing stone 50 (#FAFAF9).
  static const Color stone50 = Color(0xFFFAFAF9);

  /// Color object representing stone 100 (#F5F5F4).
  static const Color stone100 = Color(0xFFF5F5F4);

  /// Color object representing stone 200 (#E7E5E4).
  static const Color stone200 = Color(0xFFE7E5E4);

  /// Color object representing stone 300 (#D6D3D1).
  static const Color stone300 = Color(0xFFD6D3D1);

  /// Color object representing stone 400 (#A8A29E).
  static const Color stone400 = Color(0xFFA8A29E);

  /// Color object representing stone 500 (#78716C).
  static const Color stone500 = Color(0xFF78716C);

  /// Color object representing stone 600 (#57534E).
  static const Color stone600 = Color(0xFF57534E);

  /// Color object representing stone 700 (#44403C).
  static const Color stone700 = Color(0xFF44403C);

  /// Color object representing stone 800 (#292524).
  static const Color stone800 = Color(0xFF292524);

  /// Color object representing stone 900 (#1C1917).
  static const Color stone900 = Color(0xFF1C1917);

  /// Hex color code for neutral 50 (#fafafa).
  static const String neutralHex50 = '#fafafa';

  /// Hex color code for neutral 100 (#f5f5f5).
  static const String neutralHex100 = '#f5f5f5';

  /// Hex color code for neutral 200 (#e5e5e5).
  static const String neutralHex200 = '#e5e5e5';

  /// Hex color code for neutral 300 (#d4d4d4).
  static const String neutralHex300 = '#d4d4d4';

  /// Hex color code for neutral 400 (#a3a3a3).
  static const String neutralHex400 = '#a3a3a3';

  /// Hex color code for neutral 500 (#737373).
  static const String neutralHex500 = '#737373';

  /// Hex color code for neutral 600 (#525252).
  static const String neutralHex600 = '#525252';

  /// Hex color code for neutral 700 (#404040).
  static const String neutralHex700 = '#404040';

  /// Hex color code for neutral 800 (#262626).
  static const String neutralHex800 = '#262626';

  /// Hex color code for neutral 900 (#171717).
  static const String neutralHex900 = '#171717';

  /// Color object representing neutral 50 (#fafafa).
  static const Color neutral50 = Color(0xFFfafafa);

  /// Color object representing neutral 100 (#f5f5f5).
  static const Color neutral100 = Color(0xFFf5f5f5);

  /// Color object representing neutral 200 (#e5e5e5).
  static const Color neutral200 = Color(0xFFe5e5e5);

  /// Color object representing neutral 300 (#d4d4d4).
  static const Color neutral300 = Color(0xFFd4d4d4);

  /// Color object representing neutral 400 (#a3a3a3).
  static const Color neutral400 = Color(0xFFa3a3a3);

  /// Color object representing neutral 500 (#737373).
  static const Color neutral500 = Color(0xFF737373);

  /// Color object representing neutral 600 (#525252).
  static const Color neutral600 = Color(0xFF525252);

  /// Color object representing neutral 700 (#404040).
  static const Color neutral700 = Color(0xFF404040);

  /// Color object representing neutral 800 (#262626).
  static const Color neutral800 = Color(0xFF262626);

  /// Color object representing neutral 900 (#171717).
  static const Color neutral900 = Color(0xFF171717);

  /// Hex color code for red 50 (#FEF2F2).
  static const String redHex50 = '#FEF2F2';

  /// Hex color code for red 100 (#FEE2E2).
  static const String redHex100 = '#FEE2E2';

  /// Hex color code for red 200 (#FECACA).
  static const String redHex200 = '#FECACA';

  /// Hex color code for red 300 (#FCA5A5).
  static const String redHex300 = '#FCA5A5';

  /// Hex color code for red 400 (#F87171).
  static const String redHex400 = '#F87171';

  /// Hex color code for red 500 (#EF4444).
  static const String redHex500 = '#EF4444';

  /// Hex color code for red 600 (#DC2626).
  static const String redHex600 = '#DC2626';

  /// Hex color code for red 700 (#B91C1C).
  static const String redHex700 = '#B91C1C';

  /// Hex color code for red 800 (#991B1B).
  static const String redHex800 = '#991B1B';

  /// Hex color code for red 900 (#7F1D1D).
  static const String redHex900 = '#7F1D1D';

  /// Color object representing red 50 (#FEF2F2).
  static const Color red50 = Color(0xFFFEF2F2);

  /// Color object representing red 100 (#FEE2E2).
  static const Color red100 = Color(0xFFFEE2E2);

  /// Color object representing red 200 (#FECACA).
  static const Color red200 = Color(0xFFFECACA);

  /// Color object representing red 300 (#FCA5A5).
  static const Color red300 = Color(0xFFFCA5A5);

  /// Color object representing red 400 (#F87171).
  static const Color red400 = Color(0xFFF87171);

  /// Color object representing red 500 (#EF4444).
  static const Color red500 = Color(0xFFEF4444);

  /// Color object representing red 600 (#DC2626).
  static const Color red600 = Color(0xFFDC2626);

  /// Color object representing red 700 (#B91C1C).
  static const Color red700 = Color(0xFFB91C1C);

  /// Color object representing red 800 (#991B1B).
  static const Color red800 = Color(0xFF991B1B);

  /// Color object representing red 900 (#7F1D1D).
  static const Color red900 = Color(0xFF7F1D1D);

  /// Hex color code for orange 50 (#FFF7ED).
  static const String orangeHex50 = '#FFF7ED';

  /// Hex color code for orange 100 (#FFEDD5).
  static const String orangeHex100 = '#FFEDD5';

  /// Hex color code for orange 200 (#FED7AA).
  static const String orangeHex200 = '#FED7AA';

  /// Hex color code for orange 300 (#FDBA74).
  static const String orangeHex300 = '#FDBA74';

  /// Hex color code for orange 400 (#FB923C).
  static const String orangeHex400 = '#FB923C';

  /// Hex color code for orange 500 (#F97316).
  static const String orangeHex500 = '#F97316';

  /// Hex color code for orange 600 (#EA580C).
  static const String orangeHex600 = '#EA580C';

  /// Hex color code for orange 700 (#C2410C).
  static const String orangeHex700 = '#C2410C';

  /// Hex color code for orange 800 (#9A3412).
  static const String orangeHex800 = '#9A3412';

  /// Hex color code for orange 900 (#7C2D12).
  static const String orangeHex900 = '#7C2D12';

  /// Color object representing orange 50 (#FFF7ED).
  static const Color orange50 = Color(0xFFFFF7ED);

  /// Color object representing orange 100 (#FFEDD5).
  static const Color orange100 = Color(0xFFFFEDD5);

  /// Color object representing orange 200 (#FED7AA).
  static const Color orange200 = Color(0xFFFED7AA);

  /// Color object representing orange 300 (#FDBA74).
  static const Color orange300 = Color(0xFFFDBA74);

  /// Color object representing orange 400 (#FB923C).
  static const Color orange400 = Color(0xFFFB923C);

  /// Color object representing orange 500 (#F97316).
  static const Color orange500 = Color(0xFFF97316);

  /// Color object representing orange 600 (#EA580C).
  static const Color orange600 = Color(0xFFEA580C);

  /// Color object representing orange 700 (#C2410C).
  static const Color orange700 = Color(0xFFC2410C);

  /// Color object representing orange 800 (#9A3412).
  static const Color orange800 = Color(0xFF9A3412);

  /// Color object representing orange 900 (#7C2D12).
  static const Color orange900 = Color(0xFF7C2D12);

  /// Hex color code for amber 50 (#FFFBEB).
  static const String amberHex50 = '#FFFBEB';

  /// Hex color code for amber 100 (#FEF3C7).
  static const String amberHex100 = '#FEF3C7';

  /// Hex color code for amber 200 (#FDE68A).
  static const String amberHex200 = '#FDE68A';

  /// Hex color code for amber 300 (#FCD34D).
  static const String amberHex300 = '#FCD34D';

  /// Hex color code for amber 400 (#FBBF24).
  static const String amberHex400 = '#FBBF24';

  /// Hex color code for amber 500 (#F59E0B).
  static const String amberHex500 = '#F59E0B';

  /// Hex color code for amber 600 (#D97706).
  static const String amberHex600 = '#D97706';

  /// Hex color code for amber 700 (#B45309).
  static const String amberHex700 = '#B45309';

  /// Hex color code for amber 800 (#92400E).
  static const String amberHex800 = '#92400E';

  /// Hex color code for amber 900 (#78350F).
  static const String amberHex900 = '#78350F';

  /// Color object representing amber 50 (#FFFBEB).
  static const Color amber50 = Color(0xFFFFFBEB);

  /// Color object representing amber 100 (#FEF3C7).
  static const Color amber100 = Color(0xFFFEF3C7);

  /// Color object representing amber 200 (#FDE68A).
  static const Color amber200 = Color(0xFFFDE68A);

  /// Color object representing amber 300 (#FCD34D).
  static const Color amber300 = Color(0xFFFCD34D);

  /// Color object representing amber 400 (#FBBF24).
  static const Color amber400 = Color(0xFFFBBF24);

  /// Color object representing amber 500 (#F59E0B).
  static const Color amber500 = Color(0xFFF59E0B);

  /// Color object representing amber 600 (#D97706).
  static const Color amber600 = Color(0xFFD97706);

  /// Color object representing amber 700 (#B45309).
  static const Color amber700 = Color(0xFFB45309);

  /// Color object representing amber 800 (#92400E).
  static const Color amber800 = Color(0xFF92400E);

  /// Color object representing amber 900 (#78350F).
  static const Color amber900 = Color(0xFF78350F);

  /// Hex color code for yellow 50 (#FEFCE8).
  static const String yellowHex50 = '#FEFCE8';

  /// Hex color code for yellow 100 (#FEF9C3).
  static const String yellowHex100 = '#FEF9C3';

  /// Hex color code for yellow 200 (#FEF08A).
  static const String yellowHex200 = '#FEF08A';

  /// Hex color code for yellow 300 (#FDE047).
  static const String yellowHex300 = '#FDE047';

  /// Hex color code for yellow 400 (#FACC15).
  static const String yellowHex400 = '#FACC15';

  /// Hex color code for yellow 500 (#EAB308).
  static const String yellowHex500 = '#EAB308';

  /// Hex color code for yellow 600 (#CA8A04).
  static const String yellowHex600 = '#CA8A04';

  /// Hex color code for yellow 700 (#A16207).
  static const String yellowHex700 = '#A16207';

  /// Hex color code for yellow 800 (#854D0E).
  static const String yellowHex800 = '#854D0E';

  /// Hex color code for yellow 900 (#713F12).
  static const String yellowHex900 = '#713F12';

  /// Color object representing yellow 50 (#FEFCE8).
  static const Color yellow50 = Color(0xFFFEFCE8);

  /// Color object representing yellow 100 (#FEF9C3).
  static const Color yellow100 = Color(0xFFFEF9C3);

  /// Color object representing yellow 200 (#FEF08A).
  static const Color yellow200 = Color(0xFFFEF08A);

  /// Color object representing yellow 300 (#FDE047).
  static const Color yellow300 = Color(0xFFFDE047);

  /// Color object representing yellow 400 (#FACC15).
  static const Color yellow400 = Color(0xFFFACC15);

  /// Color object representing yellow 500 (#EAB308).
  static const Color yellow500 = Color(0xFFEAB308);

  /// Color object representing yellow 600 (#CA8A04).
  static const Color yellow600 = Color(0xFFCA8A04);

  /// Color object representing yellow 700 (#A16207).
  static const Color yellow700 = Color(0xFFA16207);

  /// Color object representing yellow 800 (#854D0E).
  static const Color yellow800 = Color(0xFF854D0E);

  /// Color object representing yellow 900 (#713F12).
  static const Color yellow900 = Color(0xFF713F12);

  /// Hex color code for lime 50 (#F7FEE7).
  static const String limeHex50 = '#F7FEE7';

  /// Hex color code for lime 100 (#ECFCCB).
  static const String limeHex100 = '#ECFCCB';

  /// Hex color code for lime 200 (#D9F99D).
  static const String limeHex200 = '#D9F99D';

  /// Hex color code for lime 300 (#BEF264).
  static const String limeHex300 = '#BEF264';

  /// Hex color code for lime 400 (#A3E635).
  static const String limeHex400 = '#A3E635';

  /// Hex color code for lime 500 (#84CC16).
  static const String limeHex500 = '#84CC16';

  /// Hex color code for lime 600 (#65A30D).
  static const String limeHex600 = '#65A30D';

  /// Hex color code for lime 700 (#4D7C0F).
  static const String limeHex700 = '#4D7C0F';

  /// Hex color code for lime 800 (#3F6212).
  static const String limeHex800 = '#3F6212';

  /// Hex color code for lime 900 (#365314).
  static const String limeHex900 = '#365314';

  /// Color object representing lime 50 (#F7FEE7).
  static const Color lime50 = Color(0xFFF7FEE7);

  /// Color object representing lime 100 (#ECFCCB).
  static const Color lime100 = Color(0xFFECFCCB);

  /// Color object representing lime 200 (#D9F99D).
  static const Color lime200 = Color(0xFFD9F99D);

  /// Color object representing lime 300 (#BEF264).
  static const Color lime300 = Color(0xFFBEF264);

  /// Color object representing lime 400 (#A3E635).
  static const Color lime400 = Color(0xFFA3E635);

  /// Color object representing lime 500 (#84CC16).
  static const Color lime500 = Color(0xFF84CC16);

  /// Color object representing lime 600 (#65A30D).
  static const Color lime600 = Color(0xFF65A30D);

  /// Color object representing lime 700 (#4D7C0F).
  static const Color lime700 = Color(0xFF4D7C0F);

  /// Color object representing lime 800 (#3F6212).
  static const Color lime800 = Color(0xFF3F6212);

  /// Color object representing lime 900 (#365314).
  static const Color lime900 = Color(0xFF365314);

  /// Hex color code for green 50 (#F0FDF4).
  static const String greenHex50 = '#F0FDF4';

  /// Hex color code for green 100 (#DCFCE7).
  static const String greenHex100 = '#DCFCE7';

  /// Hex color code for green 200 (#BBF7D0).
  static const String greenHex200 = '#BBF7D0';

  /// Hex color code for green 300 (#86EFAC).
  static const String greenHex300 = '#86EFAC';

  /// Hex color code for green 400 (#4ADE80).
  static const String greenHex400 = '#4ADE80';

  /// Hex color code for green 500 (#22C55E).
  static const String greenHex500 = '#22C55E';

  /// Hex color code for green 600 (#16A34A).
  static const String greenHex600 = '#16A34A';

  /// Hex color code for green 700 (#15803D).
  static const String greenHex700 = '#15803D';

  /// Hex color code for green 800 (#166534).
  static const String greenHex800 = '#166534';

  /// Hex color code for green 900 (#14532D).
  static const String greenHex900 = '#14532D';

  /// Color object representing green 50 (#F0FDF4).
  static const Color green50 = Color(0xFFF0FDF4);

  /// Color object representing green 100 (#DCFCE7).
  static const Color green100 = Color(0xFFDCFCE7);

  /// Color object representing green 200 (#BBF7D0).
  static const Color green200 = Color(0xFFBBF7D0);

  /// Color object representing green 300 (#86EFAC).
  static const Color green300 = Color(0xFF86EFAC);

  /// Color object representing green 400 (#4ADE80).
  static const Color green400 = Color(0xFF4ADE80);

  /// Color object representing green 500 (#22C55E).
  static const Color green500 = Color(0xFF22C55E);

  /// Color object representing green 600 (#16A34A).
  static const Color green600 = Color(0xFF16A34A);

  /// Color object representing green 700 (#15803D).
  static const Color green700 = Color(0xFF15803D);

  /// Color object representing green 800 (#166534).
  static const Color green800 = Color(0xFF166534);

  /// Color object representing green 900 (#14532D).
  static const Color green900 = Color(0xFF14532D);

  /// Hex color code for emerald 50 (#ECFDF5).
  static const String emeraldHex50 = '#ECFDF5';

  /// Hex color code for emerald 100 (#D1FAE5).
  static const String emeraldHex100 = '#D1FAE5';

  /// Hex color code for emerald 200 (#A7F3D0).
  static const String emeraldHex200 = '#A7F3D0';

  /// Hex color code for emerald 300 (#6EE7B7).
  static const String emeraldHex300 = '#6EE7B7';

  /// Hex color code for emerald 400 (#34D399).
  static const String emeraldHex400 = '#34D399';

  /// Hex color code for emerald 500 (#10B981).
  static const String emeraldHex500 = '#10B981';

  /// Hex color code for emerald 600 (#059669).
  static const String emeraldHex600 = '#059669';

  /// Hex color code for emerald 700 (#047857).
  static const String emeraldHex700 = '#047857';

  /// Hex color code for emerald 800 (#065F46).
  static const String emeraldHex800 = '#065F46';

  /// Hex color code for emerald 900 (#064E3B).
  static const String emeraldHex900 = '#064E3B';

  /// Color object representing emerald 50 (#ECFDF5).
  static const Color emerald50 = Color(0xFFECFDF5);

  /// Color object representing emerald 100 (#D1FAE5).
  static const Color emerald100 = Color(0xFFD1FAE5);

  /// Color object representing emerald 200 (#A7F3D0).
  static const Color emerald200 = Color(0xFFA7F3D0);

  /// Color object representing emerald 300 (#6EE7B7).
  static const Color emerald300 = Color(0xFF6EE7B7);

  /// Color object representing emerald 400 (#34D399).
  static const Color emerald400 = Color(0xFF34D399);

  /// Color object representing emerald 500 (#10B981).
  static const Color emerald500 = Color(0xFF10B981);

  /// Color object representing emerald 600 (#059669).
  static const Color emerald600 = Color(0xFF059669);

  /// Color object representing emerald 700 (#047857).
  static const Color emerald700 = Color(0xFF047857);

  /// Color object representing emerald 800 (#065F46).
  static const Color emerald800 = Color(0xFF065F46);

  /// Color object representing emerald 900 (#064E3B).
  static const Color emerald900 = Color(0xFF064E3B);

  /// Hex color code for teal 50 (#F0FDFA).
  static const String tealHex50 = '#F0FDFA';

  /// Hex color code for teal 100 (#CCFBF1).
  static const String tealHex100 = '#CCFBF1';

  /// Hex color code for teal 200 (#99F6E4).
  static const String tealHex200 = '#99F6E4';

  /// Hex color code for teal 300 (#5EEAD4).
  static const String tealHex300 = '#5EEAD4';

  /// Hex color code for teal 400 (#2DD4BF).
  static const String tealHex400 = '#2DD4BF';

  /// Hex color code for teal 500 (#14B8A6).
  static const String tealHex500 = '#14B8A6';

  /// Hex color code for teal 600 (#0D9488).
  static const String tealHex600 = '#0D9488';

  /// Hex color code for teal 700 (#0F766E).
  static const String tealHex700 = '#0F766E';

  /// Hex color code for teal 800 (#115E59).
  static const String tealHex800 = '#115E59';

  /// Hex color code for teal 900 (#134E4A).
  static const String tealHex900 = '#134E4A';

  /// Color object representing teal 50 (#F0FDFA).
  static const Color teal50 = Color(0xFFF0FDFA);

  /// Color object representing teal 100 (#CCFBF1).
  static const Color teal100 = Color(0xFFCCFBF1);

  /// Color object representing teal 200 (#99F6E4).
  static const Color teal200 = Color(0xFF99F6E4);

  /// Color object representing teal 300 (#5EEAD4).
  static const Color teal300 = Color(0xFF5EEAD4);

  /// Color object representing teal 400 (#2DD4BF).
  static const Color teal400 = Color(0xFF2DD4BF);

  /// Color object representing teal 500 (#14B8A6).
  static const Color teal500 = Color(0xFF14B8A6);

  /// Color object representing teal 600 (#0D9488).
  static const Color teal600 = Color(0xFF0D9488);

  /// Color object representing teal 700 (#0F766E).
  static const Color teal700 = Color(0xFF0F766E);

  /// Color object representing teal 800 (#115E59).
  static const Color teal800 = Color(0xFF115E59);

  /// Color object representing teal 900 (#134E4A).
  static const Color teal900 = Color(0xFF134E4A);

  /// Hex color code for cyan 50 (#ECFEFF).
  static const String cyanHex50 = '#ECFEFF';

  /// Hex color code for cyan 100 (#CFFAFE).
  static const String cyanHex100 = '#CFFAFE';

  /// Hex color code for cyan 200 (#A5F3FC).
  static const String cyanHex200 = '#A5F3FC';

  /// Hex color code for cyan 300 (#67E8F9).
  static const String cyanHex300 = '#67E8F9';

  /// Hex color code for cyan 400 (#22D3EE).
  static const String cyanHex400 = '#22D3EE';

  /// Hex color code for cyan 500 (#06B6D4).
  static const String cyanHex500 = '#06B6D4';

  /// Hex color code for cyan 600 (#0891B2).
  static const String cyanHex600 = '#0891B2';

  /// Hex color code for cyan 700 (#0E7490).
  static const String cyanHex700 = '#0E7490';

  /// Hex color code for cyan 800 (#155E75).
  static const String cyanHex800 = '#155E75';

  /// Hex color code for cyan 900 (#164E63).
  static const String cyanHex900 = '#164E63';

  /// Color object representing cyan 50 (#ECFEFF).
  static const Color cyan50 = Color(0xFFECFEFF);

  /// Color object representing cyan 100 (#CFFAFE).
  static const Color cyan100 = Color(0xFFCFFAFE);

  /// Color object representing cyan 200 (#A5F3FC).
  static const Color cyan200 = Color(0xFFA5F3FC);

  /// Color object representing cyan 300 (#67E8F9).
  static const Color cyan300 = Color(0xFF67E8F9);

  /// Color object representing cyan 400 (#22D3EE).
  static const Color cyan400 = Color(0xFF22D3EE);

  /// Color object representing cyan 500 (#06B6D4).
  static const Color cyan500 = Color(0xFF06B6D4);

  /// Color object representing cyan 600 (#0891B2).
  static const Color cyan600 = Color(0xFF0891B2);

  /// Color object representing cyan 700 (#0E7490).
  static const Color cyan700 = Color(0xFF0E7490);

  /// Color object representing cyan 800 (#155E75).
  static const Color cyan800 = Color(0xFF155E75);

  /// Color object representing cyan 900 (#164E63).
  static const Color cyan900 = Color(0xFF164E63);

  /// Hex color code for sky 50 (#F0F9FF).
  static const String skyHex50 = '#F0F9FF';

  /// Hex color code for sky 100 (#E0F2FE).
  static const String skyHex100 = '#E0F2FE';

  /// Hex color code for sky 200 (#BAE6FD).
  static const String skyHex200 = '#BAE6FD';

  /// Hex color code for sky 300 (#7DD3FC).
  static const String skyHex300 = '#7DD3FC';

  /// Hex color code for sky 400 (#38BDF8).
  static const String skyHex400 = '#38BDF8';

  /// Hex color code for sky 500 (#0EA5E9).
  static const String skyHex500 = '#0EA5E9';

  /// Hex color code for sky 600 (#0284C7).
  static const String skyHex600 = '#0284C7';

  /// Hex color code for sky 700 (#0369A1).
  static const String skyHex700 = '#0369A1';

  /// Hex color code for sky 800 (#075985).
  static const String skyHex800 = '#075985';

  /// Hex color code for sky 900 (#0C4A6E).
  static const String skyHex900 = '#0C4A6E';

  /// Color object representing sky 50 (#F0F9FF).
  static const Color sky50 = Color(0xFFF0F9FF);

  /// Color object representing sky 100 (#E0F2FE).
  static const Color sky100 = Color(0xFFE0F2FE);

  /// Color object representing sky 200 (#BAE6FD).
  static const Color sky200 = Color(0xFFBAE6FD);

  /// Color object representing sky 300 (#7DD3FC).
  static const Color sky300 = Color(0xFF7DD3FC);

  /// Color object representing sky 400 (#38BDF8).
  static const Color sky400 = Color(0xFF38BDF8);

  /// Color object representing sky 500 (#0EA5E9).
  static const Color sky500 = Color(0xFF0EA5E9);

  /// Color object representing sky 600 (#0284C7).
  static const Color sky600 = Color(0xFF0284C7);

  /// Color object representing sky 700 (#0369A1).
  static const Color sky700 = Color(0xFF0369A1);

  /// Color object representing sky 800 (#075985).
  static const Color sky800 = Color(0xFF075985);

  /// Color object representing sky 900 (#0C4A6E).
  static const Color sky900 = Color(0xFF0C4A6E);

  /// Hex color code for blue 50 (#EFF6FF).
  static const String blueHex50 = '#EFF6FF';

  /// Hex color code for blue 100 (#DBEAFE).
  static const String blueHex100 = '#DBEAFE';

  /// Hex color code for blue 200 (#BFDBFE).
  static const String blueHex200 = '#BFDBFE';

  /// Hex color code for blue 300 (#93C5FD).
  static const String blueHex300 = '#93C5FD';

  /// Hex color code for blue 400 (#60A5FA).
  static const String blueHex400 = '#60A5FA';

  /// Hex color code for blue 500 (#3B82F6).
  static const String blueHex500 = '#3B82F6';

  /// Hex color code for blue 600 (#2563EB).
  static const String blueHex600 = '#2563EB';

  /// Hex color code for blue 700 (#1D4ED8).
  static const String blueHex700 = '#1D4ED8';

  /// Hex color code for blue 800 (#1E40AF).
  static const String blueHex800 = '#1E40AF';

  /// Hex color code for blue 900 (#1E3A8A).
  static const String blueHex900 = '#1E3A8A';

  /// Color object representing blue 50 (#EFF6FF).
  static const Color blue50 = Color(0xFFEFF6FF);

  /// Color object representing blue 100 (#DBEAFE).
  static const Color blue100 = Color(0xFFDBEAFE);

  /// Color object representing blue 200 (#BFDBFE).
  static const Color blue200 = Color(0xFFBFDBFE);

  /// Color object representing blue 300 (#93C5FD).
  static const Color blue300 = Color(0xFF93C5FD);

  /// Color object representing blue 400 (#60A5FA).
  static const Color blue400 = Color(0xFF60A5FA);

  /// Color object representing blue 500 (#3B82F6).
  static const Color blue500 = Color(0xFF3B82F6);

  /// Color object representing blue 600 (#2563EB).
  static const Color blue600 = Color(0xFF2563EB);

  /// Color object representing blue 700 (#1D4ED8).
  static const Color blue700 = Color(0xFF1D4ED8);

  /// Color object representing blue 800 (#1E40AF).
  static const Color blue800 = Color(0xFF1E40AF);

  /// Color object representing blue 900 (#1E3A8A).
  static const Color blue900 = Color(0xFF1E3A8A);

  /// Hex color code for indigo 50 (#EEF2FF).
  static const String indigoHex50 = '#EEF2FF';

  /// Hex color code for indigo 100 (#E0E7FF).
  static const String indigoHex100 = '#E0E7FF';

  /// Hex color code for indigo 200 (#C7D2FE).
  static const String indigoHex200 = '#C7D2FE';

  /// Hex color code for indigo 300 (#A5B4FC).
  static const String indigoHex300 = '#A5B4FC';

  /// Hex color code for indigo 400 (#818CF8).
  static const String indigoHex400 = '#818CF8';

  /// Hex color code for indigo 500 (#6366F1).
  static const String indigoHex500 = '#6366F1';

  /// Hex color code for indigo 600 (#4F46E5).
  static const String indigoHex600 = '#4F46E5';

  /// Hex color code for indigo 700 (#4338CA).
  static const String indigoHex700 = '#4338CA';

  /// Hex color code for indigo 800 (#3730A3).
  static const String indigoHex800 = '#3730A3';

  /// Hex color code for indigo 900 (#312E81).
  static const String indigoHex900 = '#312E81';

  /// Color object representing indigo 50 (#EEF2FF).
  static const Color indigo50 = Color(0xFFEEF2FF);

  /// Color object representing indigo 100 (#E0E7FF).
  static const Color indigo100 = Color(0xFFE0E7FF);

  /// Color object representing indigo 200 (#C7D2FE).
  static const Color indigo200 = Color(0xFFC7D2FE);

  /// Color object representing indigo 300 (#A5B4FC).
  static const Color indigo300 = Color(0xFFA5B4FC);

  /// Color object representing indigo 400 (#818CF8).
  static const Color indigo400 = Color(0xFF818CF8);

  /// Color object representing indigo 500 (#6366F1).
  static const Color indigo500 = Color(0xFF6366F1);

  /// Color object representing indigo 600 (#4F46E5).
  static const Color indigo600 = Color(0xFF4F46E5);

  /// Color object representing indigo 700 (#4338CA).
  static const Color indigo700 = Color(0xFF4338CA);

  /// Color object representing indigo 800 (#3730A3).
  static const Color indigo800 = Color(0xFF3730A3);

  /// Color object representing indigo 900 (#312E81).
  static const Color indigo900 = Color(0xFF312E81);

  /// Hex color code for violet 50 (#F5F3FF).
  static const String violetHex50 = '#F5F3FF';

  /// Hex color code for violet 100 (#EDE9FE).
  static const String violetHex100 = '#EDE9FE';

  /// Hex color code for violet 200 (#DDD6FE).
  static const String violetHex200 = '#DDD6FE';

  /// Hex color code for violet 300 (#C4B5FD).
  static const String violetHex300 = '#C4B5FD';

  /// Hex color code for violet 400 (#A78BFA).
  static const String violetHex400 = '#A78BFA';

  /// Hex color code for violet 500 (#8B5CF6).
  static const String violetHex500 = '#8B5CF6';

  /// Hex color code for violet 600 (#7C3AED).
  static const String violetHex600 = '#7C3AED';

  /// Hex color code for violet 700 (#6D28D9).
  static const String violetHex700 = '#6D28D9';

  /// Hex color code for violet 800 (#5B21B6).
  static const String violetHex800 = '#5B21B6';

  /// Hex color code for violet 900 (#4C1D95).
  static const String violetHex900 = '#4C1D95';

  /// Color object representing violet 50 (#F5F3FF).
  static const Color violet50 = Color(0xFFF5F3FF);

  /// Color object representing violet 100 (#EDE9FE).
  static const Color violet100 = Color(0xFFEDE9FE);

  /// Color object representing violet 200 (#DDD6FE).
  static const Color violet200 = Color(0xFFDDD6FE);

  /// Color object representing violet 300 (#C4B5FD).
  static const Color violet300 = Color(0xFFC4B5FD);

  /// Color object representing violet 400 (#A78BFA).
  static const Color violet400 = Color(0xFFA78BFA);

  /// Color object representing violet 500 (#8B5CF6).
  static const Color violet500 = Color(0xFF8B5CF6);

  /// Color object representing violet 600 (#7C3AED).
  static const Color violet600 = Color(0xFF7C3AED);

  /// Color object representing violet 700 (#6D28D9).
  static const Color violet700 = Color(0xFF6D28D9);

  /// Color object representing violet 800 (#5B21B6).
  static const Color violet800 = Color(0xFF5B21B6);

  /// Color object representing violet 900 (#4C1D95).
  static const Color violet900 = Color(0xFF4C1D95);

  /// Hex color code for purple 50 (#FAF5FF).
  static const String purpleHex50 = '#FAF5FF';

  /// Hex color code for purple 100 (#F3E8FF).
  static const String purpleHex100 = '#F3E8FF';

  /// Hex color code for purple 200 (#E9D5FF).
  static const String purpleHex200 = '#E9D5FF';

  /// Hex color code for purple 300 (#D8B4FE).
  static const String purpleHex300 = '#D8B4FE';

  /// Hex color code for purple 400 (#C084FC).
  static const String purpleHex400 = '#C084FC';

  /// Hex color code for purple 500 (#A855F7).
  static const String purpleHex500 = '#A855F7';

  /// Hex color code for purple 600 (#9333EA).
  static const String purpleHex600 = '#9333EA';

  /// Hex color code for purple 700 (#7E22CE).
  static const String purpleHex700 = '#7E22CE';

  /// Hex color code for purple 800 (#6B21A8).
  static const String purpleHex800 = '#6B21A8';

  /// Hex color code for purple 900 (#581C87).
  static const String purpleHex900 = '#581C87';

  /// Color object representing purple 50 (#FAF5FF).
  static const Color purple50 = Color(0xFFFAF5FF);

  /// Color object representing purple 100 (#F3E8FF).
  static const Color purple100 = Color(0xFFF3E8FF);

  /// Color object representing purple 200 (#E9D5FF).
  static const Color purple200 = Color(0xFFE9D5FF);

  /// Color object representing purple 300 (#D8B4FE).
  static const Color purple300 = Color(0xFFD8B4FE);

  /// Color object representing purple 400 (#C084FC).
  static const Color purple400 = Color(0xFFC084FC);

  /// Color object representing purple 500 (#A855F7).
  static const Color purple500 = Color(0xFFA855F7);

  /// Color object representing purple 600 (#9333EA).
  static const Color purple600 = Color(0xFF9333EA);

  /// Color object representing purple 700 (#7E22CE).
  static const Color purple700 = Color(0xFF7E22CE);

  /// Color object representing purple 800 (#6B21A8).
  static const Color purple800 = Color(0xFF6B21A8);

  /// Color object representing purple 900 (#581C87).
  static const Color purple900 = Color(0xFF581C87);

  /// Hex color code for fuchsia 50 (#FDF4FF).
  static const String fuchsiaHex50 = '#FDF4FF';

  /// Hex color code for fuchsia 100 (#FAE8FF).
  static const String fuchsiaHex100 = '#FAE8FF';

  /// Hex color code for fuchsia 200 (#F5D0FE).
  static const String fuchsiaHex200 = '#F5D0FE';

  /// Hex color code for fuchsia 300 (#F0ABFC).
  static const String fuchsiaHex300 = '#F0ABFC';

  /// Hex color code for fuchsia 400 (#E879F9).
  static const String fuchsiaHex400 = '#E879F9';

  /// Hex color code for fuchsia 500 (#D946EF).
  static const String fuchsiaHex500 = '#D946EF';

  /// Hex color code for fuchsia 600 (#C026D3).
  static const String fuchsiaHex600 = '#C026D3';

  /// Hex color code for fuchsia 700 (#A21CAF).
  static const String fuchsiaHex700 = '#A21CAF';

  /// Hex color code for fuchsia 800 (#86198F).
  static const String fuchsiaHex800 = '#86198F';

  /// Hex color code for fuchsia 900 (#701A75).
  static const String fuchsiaHex900 = '#701A75';

  /// Color object representing fuchsia 50 (#FDF4FF).
  static const Color fuchsia50 = Color(0xFFFDF4FF);

  /// Color object representing fuchsia 100 (#FAE8FF).
  static const Color fuchsia100 = Color(0xFFFAE8FF);

  /// Color object representing fuchsia 200 (#F5D0FE).
  static const Color fuchsia200 = Color(0xFFF5D0FE);

  /// Color object representing fuchsia 300 (#F0ABFC).
  static const Color fuchsia300 = Color(0xFFF0ABFC);

  /// Color object representing fuchsia 400 (#E879F9).
  static const Color fuchsia400 = Color(0xFFE879F9);

  /// Color object representing fuchsia 500 (#D946EF).
  static const Color fuchsia500 = Color(0xFFD946EF);

  /// Color object representing fuchsia 600 (#C026D3).
  static const Color fuchsia600 = Color(0xFFC026D3);

  /// Color object representing fuchsia 700 (#A21CAF).
  static const Color fuchsia700 = Color(0xFFA21CAF);

  /// Color object representing fuchsia 800 (#86198F).
  static const Color fuchsia800 = Color(0xFF86198F);

  /// Color object representing fuchsia 900 (#701A75).
  static const Color fuchsia900 = Color(0xFF701A75);

  /// Hex color code for pink 50 (#FDF2F8).
  static const String pinkHex50 = '#FDF2F8';

  /// Hex color code for pink 100 (#FCE7F3).
  static const String pinkHex100 = '#FCE7F3';

  /// Hex color code for pink 200 (#FBCFE8).
  static const String pinkHex200 = '#FBCFE8';

  /// Hex color code for pink 300 (#F9A8D4).
  static const String pinkHex300 = '#F9A8D4';

  /// Hex color code for pink 400 (#F472B6).
  static const String pinkHex400 = '#F472B6';

  /// Hex color code for pink 500 (#EC4899).
  static const String pinkHex500 = '#EC4899';

  /// Hex color code for pink 600 (#DB2777).
  static const String pinkHex600 = '#DB2777';

  /// Hex color code for pink 700 (#BE185D).
  static const String pinkHex700 = '#BE185D';

  /// Hex color code for pink 800 (#9D174D).
  static const String pinkHex800 = '#9D174D';

  /// Hex color code for pink 900 (#831843).
  static const String pinkHex900 = '#831843';

  /// Color object representing pink 50 (#FDF2F8).
  static const Color pink50 = Color(0xFFFDF2F8);

  /// Color object representing pink 100 (#FCE7F3).
  static const Color pink100 = Color(0xFFFCE7F3);

  /// Color object representing pink 200 (#FBCFE8).
  static const Color pink200 = Color(0xFFFBCFE8);

  /// Color object representing pink 300 (#F9A8D4).
  static const Color pink300 = Color(0xFFF9A8D4);

  /// Color object representing pink 400 (#F472B6).
  static const Color pink400 = Color(0xFFF472B6);

  /// Color object representing pink 500 (#EC4899).
  static const Color pink500 = Color(0xFFEC4899);

  /// Color object representing pink 600 (#DB2777).
  static const Color pink600 = Color(0xFFDB2777);

  /// Color object representing pink 700 (#BE185D).
  static const Color pink700 = Color(0xFFBE185D);

  /// Color object representing pink 800 (#9D174D).
  static const Color pink800 = Color(0xFF9D174D);

  /// Color object representing pink 900 (#831843).
  static const Color pink900 = Color(0xFF831843);

  /// Hex color code for rose 50 (#FFF1F2).
  static const String roseHex50 = '#FFF1F2';

  /// Hex color code for rose 100 (#FFE4E6).
  static const String roseHex100 = '#FFE4E6';

  /// Hex color code for rose 200 (#FECDD3).
  static const String roseHex200 = '#FECDD3';

  /// Hex color code for rose 300 (#FDA4AF).
  static const String roseHex300 = '#FDA4AF';

  /// Hex color code for rose 400 (#FB7185).
  static const String roseHex400 = '#FB7185';

  /// Hex color code for rose 500 (#F43F5E).
  static const String roseHex500 = '#F43F5E';

  /// Hex color code for rose 600 (#E11D48).
  static const String roseHex600 = '#E11D48';

  /// Hex color code for rose 700 (#BE123C).
  static const String roseHex700 = '#BE123C';

  /// Hex color code for rose 800 (#9F1239).
  static const String roseHex800 = '#9F1239';

  /// Hex color code for rose 900 (#881337).
  static const String roseHex900 = '#881337';

  /// Color object representing rose 50 (#FFF1F2).
  static const Color rose50 = Color(0xFFFFF1F2);

  /// Color object representing rose 100 (#FFE4E6).
  static const Color rose100 = Color(0xFFFFE4E6);

  /// Color object representing rose 200 (#FECDD3).
  static const Color rose200 = Color(0xFFFECDD3);

  /// Color object representing rose 300 (#FDA4AF).
  static const Color rose300 = Color(0xFFFDA4AF);

  /// Color object representing rose 400 (#FB7185).
  static const Color rose400 = Color(0xFFFB7185);

  /// Color object representing rose 500 (#F43F5E).
  static const Color rose500 = Color(0xFFF43F5E);

  /// Color object representing rose 600 (#E11D48).
  static const Color rose600 = Color(0xFFE11D48);

  /// Color object representing rose 700 (#BE123C).
  static const Color rose700 = Color(0xFFBE123C);

  /// Color object representing rose 800 (#9F1239).
  static const Color rose800 = Color(0xFF9F1239);

  /// Color object representing rose 900 (#881337).
  static const Color rose900 = Color(0xFF881337);

  /// Hex color code for brown 50 (#EFEBE9).
  static const String brownHex50 = '#EFEBE9';

  /// Hex color code for brown 100 (#D7CCC8).
  static const String brownHex100 = '#D7CCC8';

  /// Hex color code for brown 200 (#BCAAA4).
  static const String brownHex200 = '#BCAAA4';

  /// Hex color code for brown 300 (#A1887F).
  static const String brownHex300 = '#A1887F';

  /// Hex color code for brown 400 (#8D6E63).
  static const String brownHex400 = '#8D6E63';

  /// Hex color code for brown 500 (#795548).
  static const String brownHex500 = '#795548';

  /// Hex color code for brown 600 (#6D4C41).
  static const String brownHex600 = '#6D4C41';

  /// Hex color code for brown 700 (#5D4037).
  static const String brownHex700 = '#5D4037';

  /// Hex color code for brown 800 (#4E342E).
  static const String brownHex800 = '#4E342E';

  /// Hex color code for brown 900 (#3E2723).
  static const String brownHex900 = '#3E2723';

  /// Color object representing brown 50 (#EFEBE9).
  static const Color brown50 = Color(0xFFEFEBE9);

  /// Color object representing brown 100 (#D7CCC8).
  static const Color brown100 = Color(0xFFD7CCC8);

  /// Color object representing brown 200 (#BCAAA4).
  static const Color brown200 = Color(0xFFBCAAA4);

  /// Color object representing brown 300 (#A1887F).
  static const Color brown300 = Color(0xFFA1887F);

  /// Color object representing brown 400 (#8D6E63).
  static const Color brown400 = Color(0xFF8D6E63);

  /// Color object representing brown 500 (#795548).
  static const Color brown500 = Color(0xFF795548);

  /// Color object representing brown 600 (#6D4C41).
  static const Color brown600 = Color(0xFF6D4C41);

  /// Color object representing brown 700 (#5D4037).
  static const Color brown700 = Color(0xFF5D4037);

  /// Color object representing brown 800 (#4E342E).
  static const Color brown800 = Color(0xFF4E342E);

  /// Color object representing brown 900 (#3E2723).
  static const Color brown900 = Color(0xFF3E2723);

  /// Hex color code for mint 50 (#F1F5F8).
  static const String mintHex50 = '#F1F5F8';

  /// Hex color code for mint 100 (#E3F0F3).
  static const String mintHex100 = '#E3F0F3';

  /// Hex color code for mint 200 (#D5ECEE).
  static const String mintHex200 = '#D5ECEE';

  /// Hex color code for mint 300 (#C7E8E9).
  static const String mintHex300 = '#C7E8E9';

  /// Hex color code for mint 400 (#BBE3E4).
  static const String mintHex400 = '#BBE3E4';

  /// Hex color code for mint 500 (#ADDEDF).
  static const String mintHex500 = '#ADDEDF';

  /// Hex color code for mint 600 (#9CDAD9).
  static const String mintHex600 = '#9CDAD9';

  /// Hex color code for mint 700 (#8CC6C3).
  static const String mintHex700 = '#8CC6C3';

  /// Hex color code for mint 800 (#7ABAB7).
  static const String mintHex800 = '#7ABAB7';

  /// Hex color code for mint 900 (#68AACB).
  static const String mintHex900 = '#68AACB';

  /// Color object representing mint 50 (#F1F5F8).
  static const Color mint50 = Color(0xFFF1F5F8);

  /// Color object representing mint 100 (#E3F0F3).
  static const Color mint100 = Color(0xFFE3F0F3);

  /// Color object representing mint 200 (#D5ECEE).
  static const Color mint200 = Color(0xFFD5ECEE);

  /// Color object representing mint 300 (#C7E8E9).
  static const Color mint300 = Color(0xFFC7E8E9);

  /// Color object representing mint 400 (#BBE3E4).
  static const Color mint400 = Color(0xFFBBE3E4);

  /// Color object representing mint 500 (#ADDEDF).
  static const Color mint500 = Color(0xFFADDEDF);

  /// Color object representing mint 600 (#9CDAD9).
  static const Color mint600 = Color(0xFF9CDAD9);

  /// Color object representing mint 700 (#8CC6C3).
  static const Color mint700 = Color(0xFF8CC6C3);

  /// Color object representing mint 800 (#7ABAB7).
  static const Color mint800 = Color(0xFF7ABAB7);

  /// Color object representing mint 900 (#68AACB).
  static const Color mint900 = Color(0xFF68AACB);

  /// Represents zero padding.
  static EdgeInsets e0 = EdgeInsets.zero;

  /// Represents padding with a size of 1.
  static EdgeInsets e1 = const EdgeInsets.all(dp1);

  /// Represents padding with a size of 2.
  static EdgeInsets e2 = const EdgeInsets.all(dp2);

  /// Represents padding with a size of 4.
  static EdgeInsets e4 = const EdgeInsets.all(dp4);

  /// Represents padding with a size of 8.
  static EdgeInsets e8 = const EdgeInsets.all(dp8);

  /// Represents padding with a size of 12.
  static EdgeInsets e12 = const EdgeInsets.all(dp12);

  /// Represents padding with a size of 16.
  static EdgeInsets e16 = const EdgeInsets.all(dp16);

  /// Represents padding with a size of 20.
  static EdgeInsets e20 = const EdgeInsets.all(dp20);

  /// Represents padding with a size of 24.
  static EdgeInsets e24 = const EdgeInsets.all(dp24);

  /// Represents padding with a size of 32.
  static EdgeInsets e32 = const EdgeInsets.all(dp32);

  /// Represents padding with a size of 48.
  static EdgeInsets e48 = const EdgeInsets.all(dp48);

  /// Represents padding with a size of 64.
  static EdgeInsets e64 = const EdgeInsets.all(dp64);

  /// Represents custom padding.
  static EdgeInsets e(double value) => EdgeInsets.all(value);

  /// Represents zero vertical padding.
  static const ey0 = EdgeInsets.zero;

  /// Represents zero horizontal padding.
  static const ex0 = EdgeInsets.zero;

  /// Represents vertical padding with a size of 1.
  static const ey1 = EdgeInsets.symmetric(vertical: dp1);

  /// Represents horizontal padding with a size of 1.
  static const ex1 = EdgeInsets.symmetric(horizontal: dp1);

  /// Represents vertical padding with a size of 2.
  static const ey2 = EdgeInsets.symmetric(vertical: dp2);

  /// Represents horizontal padding with a size of 2.
  static const ex2 = EdgeInsets.symmetric(horizontal: dp2);

  /// Represents vertical padding with a size of 4.
  static const ey4 = EdgeInsets.symmetric(vertical: dp4);

  /// Represents horizontal padding with a size of 4.
  static const ex4 = EdgeInsets.symmetric(horizontal: dp4);

  /// Represents vertical padding with a size of 8.
  static const ey8 = EdgeInsets.symmetric(vertical: dp8);

  /// Represents horizontal padding with a size of 8.
  static const ex8 = EdgeInsets.symmetric(horizontal: dp8);

  /// Represents horizontal padding with a size of 12.
  static const ex12 = EdgeInsets.symmetric(horizontal: dp12);

  /// Represents vertical padding with a size of 12.
  static const ey12 = EdgeInsets.symmetric(vertical: dp12);

  /// Represents vertical padding with a size of 16.
  static const ey16 = EdgeInsets.symmetric(vertical: dp16);

  /// Represents horizontal padding with a size of 16.
  static const ex16 = EdgeInsets.symmetric(horizontal: dp16);

  /// Represents vertical padding with a size of 20.
  static const ey20 = EdgeInsets.symmetric(vertical: dp20);

  /// Represents horizontal padding with a size of 20.
  static const ex20 = EdgeInsets.symmetric(horizontal: dp20);

  /// Represents vertical padding with a size of 24.
  static const ey24 = EdgeInsets.symmetric(vertical: dp24);

  /// Represents horizontal padding with a size of 24.
  static const ex24 = EdgeInsets.symmetric(horizontal: dp24);

  /// Represents vertical padding with a size of 32.
  static const ey32 = EdgeInsets.symmetric(vertical: dp32);

  /// Represents horizontal padding with a size of 32.
  static const ex32 = EdgeInsets.symmetric(horizontal: dp32);

  /// Represents horizontal padding with a size of 48.
  static const ex48 = EdgeInsets.symmetric(horizontal: dp48);

  /// Represents vertical padding with a size of 48.
  static const ey48 = EdgeInsets.symmetric(vertical: dp48);

  /// Represents vertical padding with a size of 64.
  static const ey64 = EdgeInsets.symmetric(vertical: dp64);

  /// Represents horizontal padding with a size of 64.
  static const ex64 = EdgeInsets.symmetric(horizontal: dp64);

  /// Represents custom horizontal padding.
  static EdgeInsets ex(double value) => EdgeInsets.symmetric(horizontal: value);

  /// Represents custom vertical padding.
  static EdgeInsets ey(double value) => EdgeInsets.symmetric(vertical: value);

  /// Represents a rounded shape border with extra small radius of 4.
  static ShapeBorder roundedXS =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(dp4));

  /// Represents a rounded shape border with small radius of 8.
  static ShapeBorder roundedSM =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(dp8));

  /// Represents a rounded shape border with medium radius of 16.
  static ShapeBorder rounded =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(dp16));

  /// Represents a rounded shape border with large radius of 20.
  static ShapeBorder roundedLG =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(dp20));

  /// Represents a rounded shape border with extra large radius of 32.
  static ShapeBorder roundedXL =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(dp32));

  /// Represents a rounded shape border with custom radius.
  static ShapeBorder roundedCustom(double radius) =>
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius));

  /// Logs the given message to the console with optional
  /// dotted line separators.
  ///
  /// The [msg] parameter represents the message to be logged.
  /// The [hasDottedLine] parameter specifies whether to
  /// include dotted line separators in the log output.
  static void log(dynamic msg, {bool? hasDottedLine}) {
    // Existing code...
  }

  /// Send a reference to [object] to any attached debuggers.
  ///
  /// Debuggers may open an inspector on the object. Returns the argument.
  static void inspect(Object object) => dev.inspect(object);

  /// Returns true if the app is running in release mode.
  static bool get isReleaseMode => kReleaseMode;

  /// Returns true if the app is running in debug mode.
  static bool get isDebugMode => kDebugMode;

  /// Returns true if the app is running in profile mode.
  static bool get isProfileMode => kProfileMode;

  /// Returns true if the app is running on the web platform.
  static bool get isWeb => kIsWeb;

  /// Returns true if the app is running on the Android platform.
  static bool get isAndroid =>
      !isWeb && defaultTargetPlatform == TargetPlatform.android;

  /// Returns true if the app is running on the iOS platform.
  static bool get isIOS =>
      !isWeb && defaultTargetPlatform == TargetPlatform.iOS;

  /// Returns true if the app is running on a
  /// mobile operating system (Android or iOS).
  static bool get isMobileOS => !isWeb && (isAndroid || isIOS);

  /// Returns true if the app is running on the Linux platform.
  static bool get isLinux =>
      !isWeb && defaultTargetPlatform == TargetPlatform.linux;

  /// Returns true if the app is running on the macOS platform.
  static bool get isMacOS =>
      !isWeb && defaultTargetPlatform == TargetPlatform.macOS;

  /// Returns true if the app is running on the Windows platform.
  static bool get isWindows =>
      !isWeb && defaultTargetPlatform == TargetPlatform.windows;

  /// Returns true if the app is running on the Fuchsia platform.
  static bool get isFuchsia =>
      !isWeb && defaultTargetPlatform == TargetPlatform.fuchsia;

  /// Returns true if the app is running on a desktop platform
  /// (Linux, macOS, or Windows).
  static bool get isDesktop =>
      !isWeb &&
      (defaultTargetPlatform == TargetPlatform.linux ||
          defaultTargetPlatform == TargetPlatform.macOS ||
          defaultTargetPlatform == TargetPlatform.windows);

  /// Converts a hexadecimal string to ASCII text.
  static String hexToAscii(String hex) {
    final splitted = <String>[];
    for (var i = 0; i < hex.length; i = i + 2) {
      splitted.add(hex.substring(i, i + 2));
    }
    final asciiText = List.generate(
      splitted.length,
      (i) => String.fromCharCode(int.parse(splitted[i], radix: 16)),
    ).join();
    return asciiText;
  }

  /// Converts a hexadecimal color code to a Color object.
  static Color hexToColor(String code) {
    final buffer = StringBuffer();
    if (code.length == 6 || code.length == 7) buffer.write('ff');
    buffer.write(code.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Creates a MaterialColor object based on the provided Color.
  static MaterialColor getMaterialColor(Color color) {
    final red = color.red;
    final green = color.green;
    final blue = color.blue;

    final shades = <int, Color>{
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
    };

    return MaterialColor(color.value, shades);
  }

  /// Returns a Color object with a random opaque color.
  static Color get randomOpaqueColor =>
      Color(Random().nextInt(0xffffffff)).withAlpha(0xff);

  /// Returns a Color object with a random primary color.
  static Color get randomPrimaryColor =>
      Colors.primaries[Random().nextInt(Colors.primaries.length)];

  /// Returns a Color object with a random color and alpha value of 100.
  static Color get randomColor => Color.fromARGB(
        100,
        Random().nextInt(255),
        Random().nextInt(255),
        Random().nextInt(255),
      );

  /// Converts a hexadecimal color code to an integer representation.
  static int hexToIntWithPrefix(String hexCode) {
    final newHexCode = hexCode.toUpperCase().replaceAll('#', '');
    if (newHexCode.length == 6) {
      return int.parse(
        '0xFF$newHexCode',
      ); // Add "0xFF" prefix for 6-character codes
    } else if (newHexCode.length == 8) {
      return int.parse(
        newHexCode,
      ); // Already has "FF" prefix for 8-character codes
    } else {
      throw FormatException('Invalid hex code: $newHexCode');
    }
  }

  /// generate 6 digit random pin
  static String generatePin({int digits = 6}) {
    final randomMax = (pow(10, digits) - 1).toInt();
    return Random().nextInt(randomMax).toString().padLeft(digits, '0');
  }

  /// Copies the provided data to the clipboard.
  static Future<void> toClipboard(String data) =>
      Clipboard.setData(ClipboardData(text: data));
}
