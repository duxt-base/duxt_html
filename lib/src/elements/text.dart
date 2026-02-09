import 'package:jaspr/jaspr.dart' show Component, Key, EventCallback, VoidCallback;
import 'package:jaspr/dom.dart' as jaspr;
import '../base.dart';

/// An anchor (hyperlink) element.
///
/// The HTML `<a>` element creates a hyperlink to web pages, files, email addresses, etc.
Component A({
  required String href,
  String? className,
  String? style,
  String? id,
  String? download,
  jaspr.Target? target,
  String? type,
  jaspr.ReferrerPolicy? referrerPolicy,
  VoidCallback? onClick,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.a(
    resolveChildren(child, children),
    href: href,
    classes: className,
    styles: parseStyles(style),
    id: id,
    download: download,
    target: target,
    type: type,
    referrerPolicy: referrerPolicy,
    onClick: onClick,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A bold text element.
///
/// The HTML `<b>` element draws attention to text without indicating special importance.
Component B({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.b(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A span element.
///
/// The HTML `<span>` element is a generic inline container.
Component Span({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.span(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A strong importance element.
///
/// The HTML `<strong>` element indicates that its contents have strong importance.
Component Strong({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.strong(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// An emphasis element.
///
/// The HTML `<em>` element marks text that has stress emphasis.
Component Em({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.em(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A code element.
///
/// The HTML `<code>` element displays text styled to indicate computer code.
Component Code({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.code(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// An italic/idiomatic text element.
///
/// The HTML `<i>` element represents a range of text set off from normal text.
Component I({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.i(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A strikethrough element.
///
/// The HTML `<s>` element renders text with a strikethrough.
Component S({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.s(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// An underline element.
///
/// The HTML `<u>` element represents a span of text with non-textual annotation.
Component U({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.u(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A small print element.
///
/// The HTML `<small>` element represents side-comments and small print.
Component Small({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.small(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A line break element.
///
/// The HTML `<br>` element produces a line break in text.
Component Br({
  String? className,
  String? style,
  String? id,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.br(
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A word break opportunity element.
///
/// The HTML `<wbr>` element represents a word break opportunity.
Component Wbr({
  String? className,
  String? style,
  String? id,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.wbr(
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

// ─── HTML5 text elements (not in Jaspr's DOM helpers) ───

/// An abbreviation element.
///
/// The HTML `<abbr>` element marks an abbreviation or acronym.
/// Use `title` to provide the full expansion.
Component Abbr({
  String? title,
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return Component.element(
    tag: 'abbr',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: {
      if (title != null) 'title': title,
      ...?attributes,
    },
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

/// A bidirectional isolate element.
///
/// The HTML `<bdi>` element isolates a span of text that might be
/// formatted in a different direction from surrounding text.
Component Bdi({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return Component.element(
    tag: 'bdi',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: attributes,
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

/// A bidirectional override element.
///
/// The HTML `<bdo>` element overrides the current text directionality.
/// Use `dir` to set the direction (`ltr` or `rtl`).
Component Bdo({
  String? dir,
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return Component.element(
    tag: 'bdo',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: {
      if (dir != null) 'dir': dir,
      ...?attributes,
    },
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

/// A citation element.
///
/// The HTML `<cite>` element marks the title of a creative work
/// (book, article, song, film, etc.).
Component Cite({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return Component.element(
    tag: 'cite',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: attributes,
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

/// A data element.
///
/// The HTML `<data>` element links content with a machine-readable
/// translation via the `value` attribute.
///
/// Named `HtmlData` to avoid confusion with common Dart class names.
Component HtmlData({
  String? value,
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return Component.element(
    tag: 'data',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: {
      if (value != null) 'value': value,
      ...?attributes,
    },
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

/// A definition element.
///
/// The HTML `<dfn>` element indicates the term being defined.
Component Dfn({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return Component.element(
    tag: 'dfn',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: attributes,
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

/// A keyboard input element.
///
/// The HTML `<kbd>` element represents user input from a keyboard
/// or other input device.
Component Kbd({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return Component.element(
    tag: 'kbd',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: attributes,
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

/// A mark/highlight element.
///
/// The HTML `<mark>` element highlights text for reference or notation.
Component Mark({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return Component.element(
    tag: 'mark',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: attributes,
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

/// An inline quotation element.
///
/// The HTML `<q>` element indicates a short inline quotation.
/// Browsers automatically add quotation marks.
Component Q({
  String? cite,
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return Component.element(
    tag: 'q',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: {
      if (cite != null) 'cite': cite,
      ...?attributes,
    },
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

/// A ruby fallback parenthesis element.
///
/// The HTML `<rp>` element provides fallback parentheses for browsers
/// that don't support ruby annotations.
Component Rp({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return Component.element(
    tag: 'rp',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: attributes,
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

/// A ruby text element.
///
/// The HTML `<rt>` element specifies the ruby text (pronunciation annotation)
/// for East Asian typography.
Component Rt({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return Component.element(
    tag: 'rt',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: attributes,
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

/// A ruby annotation element.
///
/// The HTML `<ruby>` element represents a ruby annotation for
/// East Asian typography.
Component Ruby({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return Component.element(
    tag: 'ruby',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: attributes,
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

/// A sample output element.
///
/// The HTML `<samp>` element represents sample or quoted output
/// from a computer program.
Component Samp({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return Component.element(
    tag: 'samp',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: attributes,
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

/// A subscript element.
///
/// The HTML `<sub>` element renders text as subscript (e.g., H₂O).
Component Sub({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return Component.element(
    tag: 'sub',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: attributes,
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

/// A superscript element.
///
/// The HTML `<sup>` element renders text as superscript (e.g., x²).
Component Sup({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return Component.element(
    tag: 'sup',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: attributes,
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

/// A time element.
///
/// The HTML `<time>` element represents a specific period in time.
/// Use `dateTime` for the machine-readable value.
Component Time({
  String? dateTime,
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return Component.element(
    tag: 'time',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: {
      if (dateTime != null) 'datetime': dateTime,
      ...?attributes,
    },
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

/// A variable element.
///
/// The HTML `<var>` element represents a variable in a math expression
/// or programming context.
///
/// Named `HtmlVar` to avoid confusion with Dart's `var` keyword.
Component HtmlVar({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return Component.element(
    tag: 'var',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: attributes,
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

/// A deleted text element.
///
/// The HTML `<del>` element marks text that has been deleted from a document.
Component Del({
  String? cite,
  String? dateTime,
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return Component.element(
    tag: 'del',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: {
      if (cite != null) 'cite': cite,
      if (dateTime != null) 'datetime': dateTime,
      ...?attributes,
    },
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

/// An inserted text element.
///
/// The HTML `<ins>` element marks text that has been added to a document.
Component Ins({
  String? cite,
  String? dateTime,
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return Component.element(
    tag: 'ins',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: {
      if (cite != null) 'cite': cite,
      if (dateTime != null) 'datetime': dateTime,
      ...?attributes,
    },
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}
