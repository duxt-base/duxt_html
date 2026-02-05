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
