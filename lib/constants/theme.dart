import 'package:jaspr/jaspr.dart';

// Colors

const primaryDark = Color('#09387e');
const primaryMid = Color('#0066B4');
const primaryMidLow = Color.variable('--primaryMidLow');
const primaryLight = Color('#40C4FF');

const primaryFaded = Color.variable('--primaryFaded');

final primaryGradient =
    'linear-gradient(90deg, ${primaryDark.value}, ${primaryMid.value}, ${primaryLight.value})';

final textDim = Color.variable('--textDim');
final textDark = Color.variable('--textDark');
final textBlack = Color.variable('--textBlack');

final shadowColor1 = Color.variable('--shadowColor1');
final shadowColor2 = Color.variable('--shadowColor2');
final shadowColor3 = Color.variable('--shadowColor3');

final background = Color.variable('--background');
final backgroundFaded = Color.variable('--backgroundFaded');

final borderColor = Color.variable('--borderColor');
final borderColor2 = Color.variable('--borderColor2');

final surface = Color.variable('--surface');
final surfaceLow = Color.variable('--surfaceLow');
final surfaceLowest = Color.variable('--surfaceLowest');

final hoverOverlayColor = Color.variable('--hoverOverlayColor');

final lightTheme = {
  primaryMidLow: Color('#004377'),
  primaryFaded: Color('#0066b41e'),
  textDim: Color('#777'),
  textDark: Color('#555'),
  textBlack: Color('#222'),
  shadowColor1: Color('#0001'),
  shadowColor2: Color('#0004'),
  shadowColor3: Color('#0002'),
  background: Color('#FFF'),
  backgroundFaded: Color('#FFF9'),
  borderColor: Color('#EEE'),
  borderColor2: Color('#CCC'),
  surface: Color('#F5F5F5'),
  surfaceLow: Color('#F8F8F8'),
  surfaceLowest: Color('#FCFCFC'),
  hoverOverlayColor: Color('#0001'),
};

final darkTheme = {
  primaryMidLow: Color('#007ad7'),
  primaryFaded: Color('#6ad0ff1c'),
  textDim: Color('#CCC'),
  textDark: Color('#EEE'),
  textBlack: Color('#F5F5F5'),
  shadowColor1: Color('#0001'),
  shadowColor2: Color('#0004'),
  shadowColor3: Color('#0002'),
  background: Color('#0d1117'),
  backgroundFaded: Color('#0d111799'),
  borderColor: Color('#1d1f25'),
  borderColor2: Color('#292c35'),
  surface: Color('#070c14'),
  surfaceLow: Color('#161b1f'),
  surfaceLowest: Color('#11141a'),
  hoverOverlayColor: Color('#FFF1'),
};
@css
final root = [
  // Global
  css('html, body').styles(padding: Padding.zero, margin: Margin.zero),
  css('html').styles(
    fontFamily: FontFamily.list([
      FontFamilies.uiSansSerif,
      FontFamilies.systemUi,
      FontFamilies.sansSerif
    ]),
    backgroundColor: background,
  ),

  // Theme
  css(':root').styles(raw: {
    for (final color in lightTheme.keys)
      color.value.substring(4, color.value.length - 1):
          lightTheme[color]!.value,
    '--contentPadding': '4rem',
    '--sectionPadding': '16rem',
  }),

  css(':root.dark').styles(raw: {
    for (final color in darkTheme.keys)
      color.value.substring(4, color.value.length - 1): darkTheme[color]!.value,
  }),
];
