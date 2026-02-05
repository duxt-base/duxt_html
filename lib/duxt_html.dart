/// Flutter-style HTML components for Jaspr.
///
/// This library provides PascalCase HTML components with Flutter-like patterns,
/// making it easier for Flutter developers to work with Jaspr.
///
/// ## Example
///
/// ```dart
/// import 'package:duxt_html/duxt_html.dart';
///
/// Div(
///   className: 'container mx-auto',
///   children: [
///     H1(child: Text('Welcome')),
///     P(className: 'text-gray-600', child: Text('Hello world')),
///     Ul(children: [
///       Li(child: Text('Item 1')),
///       Li(child: Text('Item 2')),
///     ]),
///     Form(
///       children: [
///         Input(type: 'text', name: 'email', placeholder: 'Email'),
///         Button(type: 'submit', child: Text('Submit')),
///       ],
///     ),
///   ],
/// )
/// ```
library duxt_html;

// Re-export jaspr core types that are commonly used
export 'package:jaspr/jaspr.dart' show
    Component,
    Key,
    EventCallback,
    VoidCallback,
    ValueChanged;

// Re-export DOM types from jaspr/dom.dart
export 'package:jaspr/dom.dart' show
    Styles,
    // Form types
    FormMethod,
    FormEncType,
    AutoComplete,
    InputType,
    ButtonType,
    SpellCheck,
    TextWrap,
    NumberingType,
    // Link/Target types
    Target,
    ReferrerPolicy,
    // Media types
    CrossOrigin,
    Preload,
    MediaLoading,
    // Style types
    Unit,
    Color;

// Base utilities
export 'src/base.dart' show Text, Raw, Fragment, resolveChildren, parseStyles;

// HTML Elements
export 'src/elements/content.dart';
export 'src/elements/text.dart';
export 'src/elements/headings.dart';
export 'src/elements/forms.dart';
export 'src/elements/table.dart';
export 'src/elements/media.dart';
export 'src/elements/semantic.dart';
export 'src/elements/svg.dart';
