import 'package:jaspr/jaspr.dart' show Component, Key, EventCallback;
import 'package:jaspr/dom.dart' as jaspr;
import '../base.dart';

/// An image element.
///
/// The HTML `<img>` element embeds an image into the document.
Component Img({
  required String src,
  String? alt,
  String? className,
  String? style,
  String? id,
  int? width,
  int? height,
  jaspr.CrossOrigin? crossOrigin,
  jaspr.MediaLoading? loading,
  jaspr.ReferrerPolicy? referrerPolicy,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.img(
    src: src,
    alt: alt,
    classes: className,
    styles: parseStyles(style),
    id: id,
    width: width,
    height: height,
    crossOrigin: crossOrigin,
    loading: loading,
    referrerPolicy: referrerPolicy,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A video element.
///
/// The HTML `<video>` element embeds a media player for video playback.
Component Video({
  String? className,
  String? style,
  String? id,
  String? src,
  String? poster,
  int? width,
  int? height,
  bool autoplay = false,
  bool controls = false,
  bool loop = false,
  bool muted = false,
  jaspr.CrossOrigin? crossOrigin,
  jaspr.Preload? preload,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.video(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    src: src,
    poster: poster,
    width: width,
    height: height,
    autoplay: autoplay,
    controls: controls,
    loop: loop,
    muted: muted,
    crossOrigin: crossOrigin,
    preload: preload,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// An audio element.
///
/// The HTML `<audio>` element embeds sound content in documents.
Component Audio({
  String? className,
  String? style,
  String? id,
  String? src,
  bool autoplay = false,
  bool controls = false,
  bool loop = false,
  bool muted = false,
  jaspr.CrossOrigin? crossOrigin,
  jaspr.Preload? preload,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.audio(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    src: src,
    autoplay: autoplay,
    controls: controls,
    loop: loop,
    muted: muted,
    crossOrigin: crossOrigin,
    preload: preload,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A source element.
///
/// The HTML `<source>` element specifies multiple media resources for picture, audio, or video.
Component Source({
  String? className,
  String? style,
  String? id,
  String? src,
  String? type,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.source(
    classes: className,
    styles: parseStyles(style),
    id: id,
    src: src,
    type: type,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// An iframe element.
///
/// The HTML `<iframe>` element represents a nested browsing context.
Component Iframe({
  required String src,
  String? className,
  String? style,
  String? id,
  String? allow,
  String? csp,
  String? name,
  String? sandbox,
  int? width,
  int? height,
  jaspr.MediaLoading? loading,
  jaspr.ReferrerPolicy? referrerPolicy,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.iframe(
    resolveChildren(child, children),
    src: src,
    classes: className,
    styles: parseStyles(style),
    id: id,
    allow: allow,
    csp: csp,
    name: name,
    sandbox: sandbox,
    width: width,
    height: height,
    loading: loading,
    referrerPolicy: referrerPolicy,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// An embed element.
///
/// The HTML `<embed>` element embeds external content.
Component Embed({
  required String src,
  String? className,
  String? style,
  String? id,
  String? type,
  int? width,
  int? height,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.embed(
    src: src,
    classes: className,
    styles: parseStyles(style),
    id: id,
    type: type,
    width: width,
    height: height,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A script element.
///
/// The HTML `<script>` element embeds executable code or references an external script.
///
/// For external scripts, use the `src` parameter. For inline scripts, use `content`.
/// Note: `content` is not escaped — only use trusted content, never user input.
Component Script({
  String? src,
  String? content,
  bool async = false,
  bool defer = false,
  String? className,
  String? style,
  String? id,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.script(
    src: src,
    content: content,
    async: async,
    defer: defer,
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A figure element.
///
/// The HTML `<figure>` element represents self-contained content with an optional caption.
Component Figure({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.figure(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A figcaption element.
///
/// The HTML `<figcaption>` element represents a caption for a figure element.
Component Figcaption({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.figcaption(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}
