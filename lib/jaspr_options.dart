// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:jaspr_site/components/counter.dart' as prefix0;
import 'package:jaspr_site/components/header.dart' as prefix1;
import 'package:jaspr_site/constants/theme.dart' as prefix2;
import 'package:jaspr_site/pages/about.dart' as prefix3;
import 'package:jaspr_site/pages/contact.dart' as prefix4;
import 'package:jaspr_site/pages/home.dart' as prefix5;
import 'package:jaspr_site/app.dart' as prefix6;

/// Default [JasprOptions] for use with your jaspr project.
///
/// Use this to initialize jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'jaspr_options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultJasprOptions,
///   );
///
///   runApp(...);
/// }
/// ```
JasprOptions get defaultJasprOptions => JasprOptions(
  clients: {
    prefix3.About: ClientTarget<prefix3.About>('pages/about'),

    prefix4.Contact: ClientTarget<prefix4.Contact>('pages/contact'),

    prefix5.Home: ClientTarget<prefix5.Home>('pages/home'),
  },
  styles: () => [
    ...prefix0.CounterState.styles,
    ...prefix1.Header.styles,
    ...prefix2.ThemeProviderState.styles,
    ...prefix3.About.styles,
    ...prefix4.Contact.styles,
    ...prefix6.App.styles,
  ],
);
