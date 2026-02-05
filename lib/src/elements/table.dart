import 'package:jaspr/jaspr.dart' show Component, Key, EventCallback;
import 'package:jaspr/dom.dart' as jaspr;
import '../base.dart';

/// A table element.
///
/// The HTML `<table>` element represents tabular data.
Component Table({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.table(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A table row element.
///
/// The HTML `<tr>` element defines a row of cells in a table.
Component Tr({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.tr(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A table data cell element.
///
/// The HTML `<td>` element defines a cell of a table that contains data.
Component Td({
  String? className,
  String? style,
  String? id,
  int? colspan,
  int? rowspan,
  String? headers,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.td(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    colspan: colspan,
    rowspan: rowspan,
    headers: headers,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A table header cell element.
///
/// The HTML `<th>` element defines a cell as a header of a group of table cells.
Component Th({
  String? className,
  String? style,
  String? id,
  String? abbr,
  int? colspan,
  int? rowspan,
  String? headers,
  String? scope,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.th(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    abbr: abbr,
    colspan: colspan,
    rowspan: rowspan,
    headers: headers,
    scope: scope,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A table head element.
///
/// The HTML `<thead>` element encapsulates a set of table rows indicating the head of a table.
Component Thead({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.thead(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A table body element.
///
/// The HTML `<tbody>` element encapsulates a set of table rows indicating the body of a table.
Component Tbody({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.tbody(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A table foot element.
///
/// The HTML `<tfoot>` element encapsulates a set of table rows indicating the foot of a table.
Component Tfoot({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.tfoot(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A table caption element.
///
/// The HTML `<caption>` element specifies the caption (or title) of a table.
Component Caption({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.caption(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A table column element.
///
/// The HTML `<col>` element defines a column within a table.
Component Col({
  String? className,
  String? style,
  String? id,
  int? span,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.col(
    classes: className,
    styles: parseStyles(style),
    id: id,
    span: span,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A table column group element.
///
/// The HTML `<colgroup>` element defines a group of columns within a table.
Component Colgroup({
  String? className,
  String? style,
  String? id,
  int? span,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.colgroup(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    span: span,
    attributes: attributes,
    events: events,
    key: key,
  );
}
