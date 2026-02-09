# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.2.0] - 2026-02-09

### Added
- Full Jaspr DOM coverage — all Jaspr HTML elements now have duxt_html wrappers
- Document elements: `Html`, `Head`, `Body` — wraps `<html>`, `<head>`, `<body>`
- `Meta` — wraps `<meta>` with `name`, `content`, `charset`, `httpEquiv` parameters
- `HtmlLink` — wraps `<link>` with `href`, `rel`, `type`, `as` parameters (named `HtmlLink` to avoid conflict with jaspr_router's `Link`)
- `ObjectEmbed` — wraps `<object>` with `data`, `name`, `type`, `width`, `height` parameters (named `ObjectEmbed` to avoid conflict with Dart's `Object` class)

## [0.1.2] - 2026-02-09

### Added
- `Script()` component — wraps Jaspr's `script()` with `src`, `content`, `async`, and `defer` parameters

## [0.1.1] - 2026-02-05

### Added
- Export `Colors` class for named colors and `Colors.transparent`

## [0.1.0] - 2026-02-05

### Added

- Initial release with 80 HTML components
- Content elements: `Div`, `P`, `Ul`, `Ol`, `Li`, `Dl`, `Dt`, `Dd`, `Blockquote`, `Pre`, `Hr`
- Text elements: `A`, `B`, `Br`, `Code`, `Em`, `I`, `S`, `Small`, `Span`, `Strong`, `U`, `Wbr`
- Heading elements: `H1`, `H2`, `H3`, `H4`, `H5`, `H6`
- Form elements: `Form`, `Input`, `Button`, `Select`, `Option`, `Textarea`, `Label`, `Fieldset`, `Legend`, `Datalist`, `Meter`, `Progress`, `Optgroup`
- Table elements: `Table`, `Tr`, `Td`, `Th`, `Thead`, `Tbody`, `Tfoot`, `Caption`, `Col`, `Colgroup`
- Media elements: `Img`, `Video`, `Audio`, `Source`, `Iframe`, `Embed`, `Figure`, `Figcaption`
- Semantic elements: `Header`, `Footer`, `Nav`, `Main`, `Article`, `Aside`, `Section`, `Details`, `Summary`, `Dialog`
- SVG elements: `Svg`, `Rect`, `Circle`, `Ellipse`, `Line`, `Path`, `Polygon`, `Polyline`
- Helper functions: `Text`, `Raw`, `Fragment`, `resolveChildren`, `parseStyles`
- Full test coverage for all element categories
