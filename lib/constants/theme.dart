import 'package:jaspr/jaspr.dart';

// Light theme colors
class LightTheme {
  static const primaryColor = Color('#6B46C1'); // Main purple
  static const secondaryColor = Color('#9F7AEA'); // Lighter purple
  static const backgroundColor = Color('#FFFFFF'); // White background
  static const textColor = Color('#2D3748'); // Dark gray for text
  static const accentColor = Color('#B794F4'); // Medium purple accent
  static const errorColor = Color('#E53E3E'); // Red for errors
  static const successColor = Color('#48BB78'); // Green for success
  static const warningColor = Color('#ED8936'); // Orange for warnings

  // Additional purple shades
  static const purpleLight = Color('#E9D8FD'); // Very light purple
  static const purpleMedium = Color('#805AD5'); // Medium purple
  static const purpleDark = Color('#553C9A'); // Dark purple
  static const purpleDeep = Color('#44337A'); // Deep purple
}

// Dark theme colors
class DarkTheme {
  static const primaryColor = Color('#9F7AEA'); // Lighter purple for dark mode
  static const secondaryColor = Color('#B794F4'); // Medium purple
  static const backgroundColor =
      Color('#1E1E1E'); // VS Code dark theme background
  static const textColor = Color('#E4E4E4'); // Light gray for text
  static const accentColor = Color('#6B46C1'); // Main purple as accent
  static const errorColor = Color('#FC8181'); // Lighter red for dark mode
  static const successColor = Color('#68D391'); // Lighter green for dark mode
  static const warningColor = Color('#F6AD55'); // Lighter orange for dark mode

  // Additional purple shades
  static const purpleLight = Color('#E9D8FD'); // Very light purple
  static const purpleMedium = Color('#805AD5'); // Medium purple
  static const purpleDark = Color('#553C9A'); // Dark purple
  static const purpleDeep = Color('#44337A'); // Deep purple
}

// Theme provider
class ThemeProvider extends StatefulComponent {
  const ThemeProvider({super.key});

  @override
  State<ThemeProvider> createState() => ThemeProviderState();
}

class ThemeProviderState extends State<ThemeProvider> {
  bool _isDarkMode = true;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([
      div(classes: 'theme-toggle', [
        button(
          onClick: () {
            setState(() {
              _isDarkMode = !_isDarkMode;
            });
            print('Theme toggled to: ${_isDarkMode ? 'Dark' : 'Light'} mode');
          },
          [text(_isDarkMode ? '🌞 Light Mode' : '🌙 Dark Mode')],
        ),
      ]),
    ]);
  }

  @css
  static final styles = [
    css('.theme-toggle', [
      css('&').styles(
        position: Position.absolute(top: 20.px, right: 20.px),
      ),
      css('button').styles(
        padding: Padding.all(10.px),
        backgroundColor: DarkTheme.primaryColor,
        color: Colors.white,
        radius: BorderRadius.all(Radius.circular(8.px)),
        cursor: Cursor.pointer,
      ),
      css('button:hover').styles(
        opacity: 0.9,
      ),
    ]),
  ];
}
