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

enum PosTextSize { size1, size2, size3, size4, size5, size6, size7, size8 }

class PosTextSizes {
  static int decSize(PosTextSize height, PosTextSize width) =>
      6 * (width.value - 1) + (height.value - 1);
}

extension PosTextSizeExtension on PosTextSize {
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

extension PaperSizeExtension on PaperSize {
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

extension PosBeepDurationExtension on PosBeepDuration {
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

enum PosCodeTable {

  /// PC437 - U.S.A., Standard Europe
  pc437_1,

  /// Katakana
  katakana1,

  /// PC850 Multilingual
  pc850,

  /// PC860 - Portuguese
  pc860_1,

  /// PC863 - Canadian-French
  pc863,

  /// PC865 - Nordic
  pc865,

  /// Western Europe
  westEur,

  /// Greek
  greek,

  /// Hebrew
  hebrew1,

  /// East Europe
  eastEur,

  /// Iran
  iran1,

  /// WPC1252
  wpc1252_1,

  /// PC866 - Cyrillic #2
  pc866_2,

  /// PC852 - Latin2
  pc852_1,

  /// PC858
  pc858_1,

  /// IranII
  iran2,

  /// Latvian
  latvian,

  /// Arabic (ISO-8859-6)
  arabic,

  /// PT1511251
  pt1511251,

  /// PC747
  pc747,

  /// WPC1257
  wpc1257,

  /// Vietnam
  vietnam,

  /// PC864
  pc864_1,

  /// PC1001
  pc1001_1,

  /// Uigur
  uigur,

  /// Hebrew
  hebrew2,

  /// WPC1255 - Israel
  israel,

  /// PC437 - Std.Europe
  pc437_2,

  /// Katakana
  katakana2,

  /// PC437 - Std.Europe
  pc437_3,

  /// PC858 - Multilingual
  pc858_2,

  /// PC852 - Latin-2
  pc852_2,

  /// PC860 - Portuguese
  pc860_2,

  /// PC866 - Russian
  pc866_1,

  /// PC857 - Turkey
  pc857,

  /// PC862 - Hebrew
  pc862,

  /// PC864 - Arabic
  pc864_2,

  /// PC737 - Greek
  pc737,

  /// PC851 - Greek
  pc851,

  /// PC869 - Greek
  pc869,

  /// PC928 - Greek
  pc928,

  /// PC874 - Thai
  pc874,

  /// WPC1252 - Latin1
  wpc1252_2,

  /// WPC1251 - Cyrillic
  wpc1251,

  /// IBM-Russian
  pc3840,

  /// PC3843 - Polish
  pc3843,

  /// PC3846 - Turkish
  pc3846,

  /// PC1001 - Arabic
  pc1001_2,

  /// PC3011 - Latvian-1
  pc3011,

  /// PC3012 - Latvian-2
  pc3012,

  /// WPC1256 - Arabic
  wp1256,

  /// PC720 - Arabic
  pc720,

  /// Thai
  thai_2,

  /// Thai
  thai_1,
}

extension PosCodeTableExt on PosCodeTable {
  int get value {
    switch (this) {
      case PosCodeTable.pc437_1:
        return 0;
      case PosCodeTable.katakana1:
        return 1;
      case PosCodeTable.pc850:
        return 2;
      case PosCodeTable.pc860_1:
        return 3;
      case PosCodeTable.pc863:
        return 4;
      case PosCodeTable.pc865:
        return 5;
      case PosCodeTable.westEur:
        return 6;
      case PosCodeTable.greek:
        return 7;
      case PosCodeTable.hebrew1:
        return 8;
      case PosCodeTable.eastEur:
        return 9;
      case PosCodeTable.iran1:
        return 10;
      case PosCodeTable.wpc1252_1:
        return 16;
      case PosCodeTable.pc866_2:
        return 17;
      case PosCodeTable.pc852_1:
        return 18;
      case PosCodeTable.pc858_1:
        return 19;
      case PosCodeTable.iran2:
        return 20;
      case PosCodeTable.latvian:
        return 21;
      case PosCodeTable.arabic:
        return 22;
      case PosCodeTable.pt1511251:
        return 23;
      case PosCodeTable.pc747:
        return 24;
      case PosCodeTable.wpc1257:
        return 25;
      case PosCodeTable.vietnam:
        return 27;
      case PosCodeTable.pc864_1:
        return 28;
      case PosCodeTable.pc1001_1:
        return 29;
      case PosCodeTable.uigur:
        return 30;
      case PosCodeTable.hebrew2:
        return 31;
      case PosCodeTable.israel:
        return 32;
      case PosCodeTable.pc437_2:
        return 50;
      case PosCodeTable.katakana2:
        return 51;
      case PosCodeTable.pc437_3:
        return 52;
      case PosCodeTable.pc858_2:
        return 53;
      case PosCodeTable.pc852_2:
        return 54;
      case PosCodeTable.pc860_2:
        return 55;
      case PosCodeTable.pc866_1:
        return 59;
      case PosCodeTable.pc857:
        return 61;
      case PosCodeTable.pc862:
        return 62;
      case PosCodeTable.pc864_2:
        return 63;
      case PosCodeTable.pc737:
        return 64;
      case PosCodeTable.pc851:
        return 65;
      case PosCodeTable.pc869:
        return 66;
      case PosCodeTable.pc928:
        return 67;
      case PosCodeTable.pc874:
        return 70;
      case PosCodeTable.wpc1252_2:
        return 71;
      case PosCodeTable.wpc1251:
        return 73;
      case PosCodeTable.pc3840:
        return 74;
      case PosCodeTable.pc3843:
        return 76;
      case PosCodeTable.pc3846:
        return 79;
      case PosCodeTable.pc1001_2:
        return 82;
      case PosCodeTable.pc3011:
        return 86;
      case PosCodeTable.pc3012:
        return 87;
      case PosCodeTable.wp1256:
        return 92;
      case PosCodeTable.pc720:
        return 93;
      case PosCodeTable.thai_2:
        return 96;
      case PosCodeTable.thai_1:
        return 255;
    }
  }
}
