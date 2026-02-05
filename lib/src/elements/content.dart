import 'package:jaspr/jaspr.dart' show Component, Key, EventCallback;
import 'package:jaspr/dom.dart' as jaspr;
import '../base.dart';

/// A generic container element.
///
/// The HTML `<div>` element is the generic container for flow content.
Component Div({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.div(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A paragraph element.
///
/// The HTML `<p>` element represents a paragraph.
Component P({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.p(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// An unordered list element.
///
/// The HTML `<ul>` element represents an unordered list of items.
Component Ul({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.ul(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// An ordered list element.
///
/// The HTML `<ol>` element represents an ordered list of items.
Component Ol({
  String? className,
  String? style,
  String? id,
  bool reversed = false,
  int? start,
  jaspr.NumberingType? type,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.ol(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    reversed: reversed,
    start: start,
    type: type,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A list item element.
///
/// The HTML `<li>` element is used to represent an item in a list.
Component Li({
  String? className,
  String? style,
  String? id,
  int? value,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.li(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    value: value,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A description list element.
///
/// The HTML `<dl>` element represents a description list.
Component Dl({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.dl(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A description term element.
///
/// The HTML `<dt>` element specifies a term in a description list.
Component Dt({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.dt(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A description details element.
///
/// The HTML `<dd>` element provides the description for the preceding `<dt>`.
Component Dd({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.dd(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A blockquote element.
///
/// The HTML `<blockquote>` element indicates an extended quotation.
Component Blockquote({
  String? className,
  String? style,
  String? id,
  String? cite,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.blockquote(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    cite: cite,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A preformatted text element.
///
/// The HTML `<pre>` element represents preformatted text.
Component Pre({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.pre(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A horizontal rule element.
///
/// The HTML `<hr>` element represents a thematic break.
Component Hr({
  String? className,
  String? style,
  String? id,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.hr(
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}
