import 'package:jaspr/jaspr.dart' show Component, Key, EventCallback;
import 'package:jaspr/dom.dart' as jaspr;
import '../base.dart';

/// An HTML document element.
///
/// The HTML `<html>` element represents the root of an HTML document.
Component Html({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.html(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A head element.
///
/// The HTML `<head>` element contains machine-readable information (metadata)
/// about the document, like its title, scripts, and style sheets.
Component Head({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.head(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A body element.
///
/// The HTML `<body>` element represents the content of an HTML document.
Component Body({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.body(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A meta element.
///
/// The HTML `<meta>` element represents metadata that cannot be represented
/// by other HTML meta-related elements like `<base>`, `<link>`, `<script>`,
/// `<style>`, or `<title>`.
Component Meta({
  String? name,
  String? content,
  String? charset,
  String? httpEquiv,
  String? className,
  String? style,
  String? id,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.meta(
    name: name,
    content: content,
    charset: charset,
    httpEquiv: httpEquiv,
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A link element.
///
/// The HTML `<link>` element specifies relationships between the current
/// document and an external resource (stylesheets, icons, etc.).
///
/// Named `HtmlLink` to avoid confusion with jaspr_router's `Link` component
/// which is used for SPA navigation.
Component HtmlLink({
  required String href,
  String? rel,
  String? type,
  String? as,
  String? className,
  String? style,
  String? id,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.link(
    href: href,
    rel: rel,
    type: type,
    as: as,
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}
