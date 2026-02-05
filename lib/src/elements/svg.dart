import 'package:jaspr/jaspr.dart' show Component, Key, EventCallback;
import 'package:jaspr/dom.dart' as jaspr;
import 'package:jaspr/dom.dart' show Unit, Color;
import '../base.dart';

/// An SVG container element.
///
/// The `<svg>` element is a container that defines a new coordinate system and viewport.
Component Svg({
  String? className,
  String? style,
  String? id,
  String? viewBox,
  Unit? width,
  Unit? height,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.svg(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    viewBox: viewBox,
    width: width,
    height: height,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// An SVG rectangle element.
///
/// The `<rect>` element is a basic SVG shape that draws rectangles.
Component Rect({
  String? className,
  String? style,
  String? id,
  String? x,
  String? y,
  String? rx,
  String? ry,
  String? width,
  String? height,
  Color? fill,
  Color? stroke,
  String? strokeWidth,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.rect(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    x: x,
    y: y,
    rx: rx,
    ry: ry,
    width: width,
    height: height,
    fill: fill,
    stroke: stroke,
    strokeWidth: strokeWidth,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// An SVG circle element.
///
/// The `<circle>` SVG element draws circles based on a center point and radius.
Component Circle({
  String? className,
  String? style,
  String? id,
  String? cx,
  String? cy,
  String? r,
  Color? fill,
  Color? stroke,
  String? strokeWidth,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.circle(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    cx: cx,
    cy: cy,
    r: r,
    fill: fill,
    stroke: stroke,
    strokeWidth: strokeWidth,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// An SVG ellipse element.
///
/// The `<ellipse>` element creates ellipses based on a center coordinate and both radii.
Component Ellipse({
  String? className,
  String? style,
  String? id,
  String? cx,
  String? cy,
  String? rx,
  String? ry,
  Color? fill,
  Color? stroke,
  String? strokeWidth,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.ellipse(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    cx: cx,
    cy: cy,
    rx: rx,
    ry: ry,
    fill: fill,
    stroke: stroke,
    strokeWidth: strokeWidth,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// An SVG line element.
///
/// The `<line>` element creates a line connecting two points.
Component Line({
  String? className,
  String? style,
  String? id,
  String? x1,
  String? y1,
  String? x2,
  String? y2,
  Color? fill,
  Color? stroke,
  String? strokeWidth,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.line(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    x1: x1,
    y1: y1,
    x2: x2,
    y2: y2,
    fill: fill,
    stroke: stroke,
    strokeWidth: strokeWidth,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// An SVG path element.
///
/// The `<path>` SVG element is the generic element to define a shape.
Component Path({
  String? className,
  String? style,
  String? id,
  String? d,
  Color? fill,
  Color? stroke,
  String? strokeWidth,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.path(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    d: d,
    fill: fill,
    stroke: stroke,
    strokeWidth: strokeWidth,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// An SVG polygon element.
///
/// The `<polygon>` element defines a closed shape consisting of connected straight lines.
Component Polygon({
  String? className,
  String? style,
  String? id,
  String? points,
  Color? fill,
  Color? stroke,
  String? strokeWidth,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.polygon(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    points: points,
    fill: fill,
    stroke: stroke,
    strokeWidth: strokeWidth,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// An SVG polyline element.
///
/// The `<polyline>` SVG element creates straight lines connecting several points.
Component Polyline({
  String? className,
  String? style,
  String? id,
  String? points,
  Color? fill,
  Color? stroke,
  String? strokeWidth,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.polyline(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    points: points,
    fill: fill,
    stroke: stroke,
    strokeWidth: strokeWidth,
    attributes: attributes,
    events: events,
    key: key,
  );
}
