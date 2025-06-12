// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:jaspr_site/components/counter.dart' as prefix0;
import 'package:jaspr_site/components/header.dart' as prefix1;
import 'package:jaspr_site/components/theme_toggler.dart' as prefix2;
import 'package:jaspr_site/constants/theme.dart' as prefix3;
import 'package:jaspr_site/pages/about.dart' as prefix4;
import 'package:jaspr_site/pages/contact.dart' as prefix5;
import 'package:jaspr_site/pages/home.dart' as prefix6;
import 'package:jaspr_site/app.dart' as prefix7;

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
    prefix1.Header: ClientTarget<prefix1.Header>('components/header'),

    prefix4.About: ClientTarget<prefix4.About>('pages/about'),

    prefix5.Contact: ClientTarget<prefix5.Contact>('pages/contact'),

    prefix6.Home: ClientTarget<prefix6.Home>('pages/home'),
  },
  styles: () => [
    ...prefix0.CounterState.styles,
    ...prefix1.Header.styles,
    ...prefix2.ThemeToggleState.styles,
    ...prefix3.root,
    ...prefix4.About.styles,
    ...prefix5.Contact.styles,
    ...prefix7.App.styles,
  ],
);
