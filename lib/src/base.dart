import 'package:jaspr/jaspr.dart';
import 'package:jaspr/dom.dart';

/// Resolves child vs children parameters.
///
/// Throws [ArgumentError] if both child and children are specified.
/// Returns an empty list if neither is provided.
List<Component> resolveChildren(Component? child, List<Component>? children) {
  if (child != null && children != null) {
    throw ArgumentError('Cannot specify both child and children');
  }
  if (child != null) return [child];
  return children ?? [];
}

/// Parses a raw CSS string into a Styles object.
///
/// Example: `parseStyles('color: red; font-size: 16px')`
Styles? parseStyles(String? styleString) {
  if (styleString == null || styleString.isEmpty) return null;

  final Map<String, String> raw = {};
  final pairs = styleString.split(';');
  for (final pair in pairs) {
    final trimmed = pair.trim();
    if (trimmed.isEmpty) continue;
    final colonIndex = trimmed.indexOf(':');
    if (colonIndex > 0) {
      final property = trimmed.substring(0, colonIndex).trim();
      final value = trimmed.substring(colonIndex + 1).trim();
      if (property.isNotEmpty && value.isNotEmpty) {
        raw[property] = value;
      }
    }
  }
  return raw.isEmpty ? null : Styles(raw: raw);
}

/// Creates a Text component from a string.
///
/// This is the Flutter-style wrapper for jaspr's text() function.
Component Text(String content, {Key? key}) {
  return Component.text(content, key: key);
}

/// Creates a raw HTML component from a string.
///
/// **WARNING**: This component does not escape any user input and is vulnerable to
/// cross-site scripting (XSS) attacks. Make sure to sanitize any user input.
Component Raw(String content, {Key? key}) {
  return RawText(content, key: key);
}

/// Creates a fragment containing multiple children without a wrapping element.
Component Fragment(List<Component> children, {Key? key}) {
  return Component.fragment(children, key: key);
}
