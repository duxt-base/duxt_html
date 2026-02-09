import 'package:jaspr/jaspr.dart' show Component, Key, EventCallback;
import '../base.dart';

/// A template element.
///
/// The HTML `<template>` element holds HTML fragments that are not rendered
/// on load but can be instantiated via JavaScript at runtime.
///
/// Named `HtmlTemplate` to avoid potential naming conflicts.
Component HtmlTemplate({
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
    tag: 'template',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: attributes,
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}

/// A slot element.
///
/// The HTML `<slot>` element is a placeholder in a web component's
/// shadow DOM that accepts projected content.
Component Slot({
  String? name,
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
    tag: 'slot',
    id: id,
    classes: className,
    styles: parseStyles(style),
    attributes: {
      if (name != null) 'name': name,
      ...?attributes,
    },
    events: events,
    children: resolveChildren(child, children),
    key: key,
  );
}
