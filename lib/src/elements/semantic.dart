import 'package:jaspr/jaspr.dart' show Component, Key, EventCallback;
import 'package:jaspr/dom.dart' as jaspr;
import '../base.dart';

// ─── HTML5 semantic elements (not in Jaspr's DOM helpers) ───

/// An address element.
///
/// The HTML `<address>` element provides contact information for
/// the author/owner of a document or article.
Component Address({
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
    tag: 'address',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: attributes,
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

/// A heading group element.
///
/// The HTML `<hgroup>` element groups a heading with secondary content
/// like subheadings or taglines.
Component Hgroup({
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
    tag: 'hgroup',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: attributes,
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

/// A search element.
///
/// The HTML `<search>` element is a semantic container for form controls
/// related to search or filtering functionality.
Component Search({
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
    tag: 'search',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: attributes,
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

// ─── Jaspr-wrapped semantic elements ───

/// A header element.
///
/// The HTML `<header>` element represents introductory content.
Component Header({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.header(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A footer element.
///
/// The HTML `<footer>` element represents a footer for its nearest sectioning content.
Component Footer({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.footer(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A navigation element.
///
/// The HTML `<nav>` element represents a section of navigation links.
Component Nav({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.nav(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A main element.
///
/// The HTML `<main>` element represents the dominant content of the body.
Component Main({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.main_(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// An article element.
///
/// The HTML `<article>` element represents a self-contained composition.
Component Article({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.article(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// An aside element.
///
/// The HTML `<aside>` element represents content only indirectly related to the main content.
Component Aside({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.aside(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A section element.
///
/// The HTML `<section>` element represents a generic standalone section.
Component Section({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.section(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A details element.
///
/// The HTML `<details>` element creates a disclosure widget.
Component Details({
  String? className,
  String? style,
  String? id,
  bool open = false,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.details(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    open: open,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A summary element.
///
/// The HTML `<summary>` element specifies a summary for a details element.
Component Summary({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.summary(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A dialog element.
///
/// The HTML `<dialog>` element represents a dialog box or interactive component.
Component Dialog({
  String? className,
  String? style,
  String? id,
  bool open = false,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.dialog(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    open: open,
    attributes: attributes,
    events: events,
    key: key,
  );
}
