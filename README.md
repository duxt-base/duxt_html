# duxt_html

Complete HTML5 components for [Jaspr](https://github.com/schultek/jaspr).

## Overview

`duxt_html` provides **every HTML5 element** as a Flutter-style PascalCase component for Jaspr. Instead of lowercase function calls, you get named parameters, `child`/`children` patterns, and `className` props — all returning standard Jaspr `Component` types.

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  duxt_html: ^1.0.0
```

## Usage

### Before (Jaspr)

```dart
import 'package:jaspr/dom.dart';

div(classes: 'flex gap-4', [
  img(src: '/logo.png', alt: 'Logo'),
  a(href: '/about', [text('About')]),
])
```

### After (duxt_html)

```dart
import 'package:duxt_html/duxt_html.dart';

Div(
  className: 'flex gap-4',
  children: [
    Img(src: '/logo.png', alt: 'Logo'),
    A(href: '/about', child: Text('About')),
  ],
)
```

## Features

- **Complete HTML5 coverage** - Every standard HTML5 element as a component
- **PascalCase components** - `Div`, `Span`, `Button` instead of `div`, `span`, `button`
- **Flutter-like child pattern** - Use `child` for single child, `children` for multiple
- **className prop** - Use `className` instead of `classes`
- **CSS string styles** - Pass CSS as a string: `style: 'color: red; font-size: 16px'`
- **Full Jaspr compatibility** - All components return Jaspr `Component` types

## All Components (117)

Complete HTML5 coverage — every standard element has a duxt_html wrapper.

### Document Elements
`Html`, `Head`, `Body`, `Title`, `StyleElement`, `Base`, `Meta`, `HtmlLink`, `Noscript`

### Content Elements
`Div`, `P`, `Ul`, `Ol`, `Li`, `Dl`, `Dt`, `Dd`, `Blockquote`, `Pre`, `Hr`, `Menu`

### Text Elements
`A`, `B`, `Br`, `Code`, `Em`, `I`, `S`, `Small`, `Span`, `Strong`, `U`, `Wbr`, `Abbr`, `Bdi`, `Bdo`, `Cite`, `HtmlData`, `Dfn`, `Kbd`, `Mark`, `Q`, `Rp`, `Rt`, `Ruby`, `Samp`, `Sub`, `Sup`, `Time`, `HtmlVar`, `Del`, `Ins`

### Headings
`H1`, `H2`, `H3`, `H4`, `H5`, `H6`

### Form Elements
`Form`, `Input`, `Button`, `Select`, `Option`, `Textarea`, `Label`, `Fieldset`, `Legend`, `Datalist`, `Meter`, `Progress`, `Optgroup`, `Output`

### Table Elements
`Table`, `Tr`, `Td`, `Th`, `Thead`, `Tbody`, `Tfoot`, `Caption`, `Col`, `Colgroup`

### Media Elements
`Img`, `Video`, `Audio`, `Source`, `Iframe`, `Embed`, `ObjectEmbed`, `Picture`, `Canvas`, `Track`, `ImageMap`, `Area`, `Figure`, `Figcaption`, `Script`

### Semantic Elements
`Header`, `Footer`, `Nav`, `Main`, `Article`, `Aside`, `Section`, `Details`, `Summary`, `Dialog`, `Address`, `Hgroup`, `Search`

### SVG Elements
`Svg`, `Rect`, `Circle`, `Ellipse`, `Line`, `Path`, `Polygon`, `Polyline`

### Web Components
`HtmlTemplate`, `Slot`

### Helpers
`Text`, `Raw`, `Fragment`

> **Naming conventions:** Some components are renamed to avoid Dart conflicts:
> `HtmlLink` (vs jaspr_router's Link), `ObjectEmbed` (vs Dart's Object),
> `ImageMap` (vs Dart's Map), `HtmlVar` (vs `var` keyword),
> `StyleElement` (vs Styles class), `HtmlTemplate`, `HtmlData`

## Examples

### Basic Layout

```dart
Div(
  className: 'container mx-auto p-4',
  children: [
    Header(
      className: 'flex justify-between items-center',
      children: [
        H1(child: Text('My App')),
        Nav(children: [
          A(href: '/', child: Text('Home')),
          A(href: '/about', child: Text('About')),
        ]),
      ],
    ),
    Main(
      child: Article(
        children: [
          H2(child: Text('Welcome')),
          P(child: Text('This is a paragraph.')),
        ],
      ),
    ),
  ],
)
```

### Form

```dart
Form(
  method: FormMethod.post,
  children: [
    Label(
      htmlFor: 'email',
      child: Text('Email'),
    ),
    Input(
      type: 'email',
      name: 'email',
      id: 'email',
      placeholder: 'Enter your email',
      onInput: (value) => print('Email: $value'),
    ),
    Button(
      type: 'submit',
      className: 'btn btn-primary',
      child: Text('Subscribe'),
    ),
  ],
)
```

### Table

```dart
Table(
  className: 'table-auto',
  children: [
    Thead(
      child: Tr(children: [
        Th(child: Text('Name')),
        Th(child: Text('Age')),
      ]),
    ),
    Tbody(children: [
      Tr(children: [
        Td(child: Text('Alice')),
        Td(child: Text('30')),
      ]),
      Tr(children: [
        Td(child: Text('Bob')),
        Td(child: Text('25')),
      ]),
    ]),
  ],
)
```

### SVG

```dart
Svg(
  viewBox: '0 0 100 100',
  width: 100.px,
  height: 100.px,
  children: [
    Circle(cx: '50', cy: '50', r: '40', fill: Color.hex(0x3B82F6)),
    Rect(x: '25', y: '40', width: '50', height: '20', fill: Color.hex(0xFFFFFF)),
  ],
)
```

## API Reference

### Common Parameters

All components support these parameters:

| Parameter | Type | Description |
|-----------|------|-------------|
| `className` | `String?` | CSS class names |
| `style` | `String?` | Inline CSS styles |
| `id` | `String?` | Element ID |
| `attributes` | `Map<String, String>?` | Additional HTML attributes |
| `events` | `Map<String, EventCallback>?` | Event handlers |
| `key` | `Key?` | Jaspr key for reconciliation |
| `child` | `Component?` | Single child component |
| `children` | `List<Component>?` | Multiple child components |

Note: You cannot use both `child` and `children` on the same component.

## License

MIT License - see LICENSE file for details.
