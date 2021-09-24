/*
 * esc_pos_utils
 * Created by Andrey U.
 * 
 * Copyright (c) 2019-2020. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

enum PosAlign { left, center, right }
enum PosCutMode { full, partial }
enum PosFontType { fontA, fontB }
enum PosDrawer { pin2, pin5 }

/// Choose image printing function
/// bitImageRaster: GS v 0 (obsolete)
/// graphics: GS ( L
enum PosImageFn { bitImageRaster, graphics }

enum PosTextSize {
  size1,
  size2,
  size3,
  size4,
  size5,
  size6,
  size7,
  size8,
}

extension PosTextSizeExt on PosTextSize {
  static int decSize(PosTextSize height, PosTextSize width) =>
      16 * (width.value - 1) + (height.value - 1);

  int get value {
    switch (this) {
      case PosTextSize.size1:
        return 1;
      case PosTextSize.size2:
        return 2;
      case PosTextSize.size3:
        return 3;
      case PosTextSize.size4:
        return 4;
      case PosTextSize.size5:
        return 5;
      case PosTextSize.size6:
        return 6;
      case PosTextSize.size7:
        return 7;
      case PosTextSize.size8:
        return 8;
    }
  }
}

enum PaperSize { mm58, mm80 }

extension PaperSizeExt on PaperSize {
  int get value {
    switch (this) {
      case PaperSize.mm58:
        return 1;
      case PaperSize.mm80:
        return 2;
    }
  }

  int get width => this == PaperSize.mm58 ? 350 : 512;
}

enum PosBeepDuration {
  beep50ms,
  beep100ms,
  beep150ms,
  beep200ms,
  beep250ms,
  beep300ms,
  beep350ms,
  beep400ms,
  beep450ms,
}

extension PosBeepDurationExt on PosBeepDuration {
  int get value {
    switch (this) {
      case PosBeepDuration.beep50ms:
        return 1;
      case PosBeepDuration.beep100ms:
        return 2;
      case PosBeepDuration.beep150ms:
        return 3;
      case PosBeepDuration.beep200ms:
        return 4;
      case PosBeepDuration.beep250ms:
        return 5;
      case PosBeepDuration.beep300ms:
        return 6;
      case PosBeepDuration.beep350ms:
        return 7;
      case PosBeepDuration.beep400ms:
        return 8;
      case PosBeepDuration.beep450ms:
        return 9;
    }
  }
}

class PosCodeTable {
  const PosCodeTable(this.value);

  final int value;

  /// PC437 - U.S.A., Standard Europe
  static const pc437_1 = PosCodeTable(0);

  /// Katakana
  static const katakana1 = PosCodeTable(1);

  /// PC850 Multilingual
  static const pc850 = PosCodeTable(2);

  /// PC860 - Portuguese
  static const pc860_1 = PosCodeTable(3);

  /// PC863 - Canadian-French
  static const pc863 = PosCodeTable(4);

  /// PC865 - Nordic
  static const pc865 = PosCodeTable(5);

  /// Western Europe
  static const westEur = PosCodeTable(6);

  /// Greek
  static const greek = PosCodeTable(7);

  /// Hebrew
  static const hebrew1 = PosCodeTable(8);

  /// East Europe
  static const eastEur = PosCodeTable(9);

  /// Iran
  static const iran1 = PosCodeTable(10);

  /// WPC1252
  static const wpc1252_1 = PosCodeTable(16);

  /// PC866 - Cyrillic #2
  static const pc866_2 = PosCodeTable(17);

  /// PC852 - Latin2
  static const pc852_1 = PosCodeTable(18);

  /// PC858
  static const pc858_1 = PosCodeTable(19);

  /// IranII
  static const iran2 = PosCodeTable(20);

  /// Latvian
  static const latvian = PosCodeTable(21);

  /// Arabic (ISO-8859-6)
  static const arabic = PosCodeTable(22);

  /// PT1511251
  static const pt1511251 = PosCodeTable(23);

  /// PC747
  static const pc747 = PosCodeTable(24);

  /// WPC1257
  static const wpc1257 = PosCodeTable(25);

  /// Vietnam
  static const vietnam = PosCodeTable(27);

  /// PC864
  static const pc864_1 = PosCodeTable(28);

  /// PC1001
  static const pc1001_1 = PosCodeTable(29);

  /// Uigur
  static const uigur = PosCodeTable(30);

  /// Hebrew
  static const hebrew2 = PosCodeTable(31);

  /// WPC1255 - Israel
  static const israel = PosCodeTable(32);

  /// PC437 - Std.Europe
  static const pc437_2 = PosCodeTable(50);

  /// Katakana
  static const katakana2 = PosCodeTable(51);

  /// PC437 - Std.Europe
  static const pc437_3 = PosCodeTable(52);

  /// PC858 - Multilingual
  static const pc858_2 = PosCodeTable(53);

  /// PC852 - Latin-2
  static const pc852_2 = PosCodeTable(54);

  /// PC860 - Portuguese
  static const pc860_2 = PosCodeTable(55);

  /// PC866 - Russian
  static const pc866_1 = PosCodeTable(59);

  /// PC857 - Turkey
  static const pc857 = PosCodeTable(61);

  /// PC862 - Hebrew
  static const pc862 = PosCodeTable(62);

  /// PC864 - Arabic
  static const pc864_2 = PosCodeTable(63);

  /// PC737 - Greek
  static const pc737 = PosCodeTable(64);

  /// PC851 - Greek
  static const pc851 = PosCodeTable(65);

  /// PC869 - Greek
  static const pc869 = PosCodeTable(66);

  /// PC928 - Greek
  static const pc928 = PosCodeTable(67);

  /// PC874 - Thai
  static const pc874 = PosCodeTable(70);

  /// WPC1252 - Latin1
  static const wpc1252_2 = PosCodeTable(71);

  /// WPC1251 - Cyrillic
  static const wpc1251 = PosCodeTable(73);

  /// IBM-Russian
  static const pc3840 = PosCodeTable(74);

  /// PC3843 - Polish
  static const pc3843 = PosCodeTable(76);

  /// PC3846 - Turkish
  static const pc3846 = PosCodeTable(79);

  /// PC1001 - Arabic
  static const pc1001_2 = PosCodeTable(82);

  /// PC3011 - Latvian-1
  static const pc3011 = PosCodeTable(86);

  /// PC3012 - Latvian-2
  static const pc3012 = PosCodeTable(87);

  /// WPC1256 - Arabic
  static const wp1256 = PosCodeTable(92);

  /// PC720 - Arabic
  static const pc720 = PosCodeTable(93);

  /// Thai
  static const thai_2 = PosCodeTable(96);

  /// Thai
  static const thai_1 = PosCodeTable(255);
}
