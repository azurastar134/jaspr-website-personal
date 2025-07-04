import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'package:jaspr_site/components/theme_toggler.dart';
import 'package:jaspr_site/constants/theme.dart';

@client
class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    var activePath = context.url;

    yield header([
      nav([
        for (var route in [
          (label: 'Home', path: '/'),
          (label: 'About', path: '/about'),
          (label: 'Contact', path: '/contact'),
        ])
          div(classes: activePath == route.path ? 'active' : null, [
            Link(to: route.path, child: text(route.label)),
          ]),
        ThemeToggle(),
      ]),
    ]);
  }

  @css
  static final styles = [
    css('header', [
      css('&').styles(
        display: Display.flex,
        padding: Padding.all(1.em),
        justifyContent: JustifyContent.center,
        backgroundColor: background,
      ),
      css('nav', [
        css('&').styles(
          display: Display.flex,
          height: 3.em,
          radius: BorderRadius.all(Radius.circular(8.px)),
          overflow: Overflow.clip,
          justifyContent: JustifyContent.spaceBetween,
          color: textBlack,
          backgroundColor: surface,
        ),
        css('a', [
          css('&').styles(
            display: Display.flex,
            height: 100.percent,
            padding: Padding.symmetric(horizontal: 2.em),
            alignItems: AlignItems.center,
            fontWeight: FontWeight.w700,
            textDecoration: const TextDecoration(line: TextDecorationLine.none),
            color: textBlack,
          ),
          css('&:hover').styles(
            backgroundColor: hoverOverlayColor,
          ),
        ]),
        css('div.active', [
          css('&').styles(position: const Position.relative()),
          css('&::before').styles(
            content: '',
            display: Display.block,
            position:
                Position.absolute(bottom: 0.5.em, left: 20.px, right: 20.px),
            height: 2.px,
            radius: BorderRadius.circular(1.px),
            backgroundColor: primaryMid,
          ),
        ])
      ]),
    ]),
  ];
}
