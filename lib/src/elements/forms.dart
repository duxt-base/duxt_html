import 'package:jaspr/jaspr.dart' show Component, Key, EventCallback, VoidCallback, ValueChanged;
import 'package:jaspr/dom.dart' as jaspr;
import '../base.dart';

/// A form element.
///
/// The HTML `<form>` element represents a document section containing interactive controls.
Component Form({
  String? className,
  String? style,
  String? id,
  String? action,
  jaspr.FormMethod? method,
  jaspr.FormEncType? encType,
  jaspr.AutoComplete? autoComplete,
  String? name,
  bool noValidate = false,
  jaspr.Target? target,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.form(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    action: action,
    method: method,
    encType: encType,
    autoComplete: autoComplete,
    name: name,
    noValidate: noValidate,
    target: target,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// An input element.
///
/// The HTML `<input>` element is used to create interactive controls for forms.
Component Input({
  String? type,
  String? name,
  String? value,
  String? placeholder,
  String? className,
  String? style,
  String? id,
  bool disabled = false,
  bool? checked,
  bool? indeterminate,
  ValueChanged<String>? onInput,
  ValueChanged<String>? onChange,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.input(
    type: type != null ? _parseInputType(type) : null,
    name: name,
    value: value,
    classes: className,
    styles: parseStyles(style),
    id: id,
    disabled: disabled,
    checked: checked,
    indeterminate: indeterminate,
    onInput: onInput,
    onChange: onChange,
    attributes: {...?attributes, if (placeholder != null) 'placeholder': placeholder},
    events: events,
    key: key,
  );
}

/// Parses a string input type to InputType enum.
jaspr.InputType? _parseInputType(String type) {
  return switch (type.toLowerCase()) {
    'button' => jaspr.InputType.button,
    'checkbox' => jaspr.InputType.checkbox,
    'color' => jaspr.InputType.color,
    'date' => jaspr.InputType.date,
    'datetime-local' => jaspr.InputType.dateTimeLocal,
    'email' => jaspr.InputType.email,
    'file' => jaspr.InputType.file,
    'hidden' => jaspr.InputType.hidden,
    'image' => jaspr.InputType.image,
    'month' => jaspr.InputType.month,
    'number' => jaspr.InputType.number,
    'password' => jaspr.InputType.password,
    'radio' => jaspr.InputType.radio,
    'range' => jaspr.InputType.range,
    'reset' => jaspr.InputType.reset,
    'search' => jaspr.InputType.search,
    'submit' => jaspr.InputType.submit,
    'tel' => jaspr.InputType.tel,
    'text' => jaspr.InputType.text,
    'time' => jaspr.InputType.time,
    'url' => jaspr.InputType.url,
    'week' => jaspr.InputType.week,
    _ => null,
  };
}

/// A button element.
///
/// The HTML `<button>` element is an interactive element activated by a user.
Component Button({
  String? type,
  String? className,
  String? style,
  String? id,
  bool autofocus = false,
  bool disabled = false,
  VoidCallback? onClick,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.button(
    resolveChildren(child, children),
    type: type != null ? _parseButtonType(type) : null,
    classes: className,
    styles: parseStyles(style),
    id: id,
    autofocus: autofocus,
    disabled: disabled,
    onClick: onClick,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// Parses a string button type to ButtonType enum.
jaspr.ButtonType? _parseButtonType(String type) {
  return switch (type.toLowerCase()) {
    'submit' => jaspr.ButtonType.submit,
    'reset' => jaspr.ButtonType.reset,
    'button' => jaspr.ButtonType.button,
    _ => null,
  };
}

/// A select element.
///
/// The HTML `<select>` element represents a control that provides a menu of options.
Component Select({
  String? className,
  String? style,
  String? id,
  String? name,
  String? value,
  bool multiple = false,
  bool required = false,
  bool disabled = false,
  bool autofocus = false,
  String? autocomplete,
  int? size,
  ValueChanged<List<String>>? onInput,
  ValueChanged<List<String>>? onChange,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.select(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    name: name,
    value: value,
    multiple: multiple,
    required: required,
    disabled: disabled,
    autofocus: autofocus,
    autocomplete: autocomplete,
    size: size,
    onInput: onInput,
    onChange: onChange,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// An option element.
///
/// The HTML `<option>` element is used to define an item in a select, optgroup, or datalist.
Component Option({
  String? className,
  String? style,
  String? id,
  String? label,
  String? value,
  bool selected = false,
  bool disabled = false,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.option(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    label: label,
    value: value,
    selected: selected,
    disabled: disabled,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A textarea element.
///
/// The HTML `<textarea>` element represents a multi-line plain-text editing control.
Component Textarea({
  String? className,
  String? style,
  String? id,
  String? name,
  String? placeholder,
  int? cols,
  int? rows,
  int? minLength,
  bool autofocus = false,
  bool disabled = false,
  bool readonly = false,
  bool required = false,
  jaspr.AutoComplete? autoComplete,
  jaspr.SpellCheck? spellCheck,
  jaspr.TextWrap? wrap,
  ValueChanged<String>? onInput,
  ValueChanged<String>? onChange,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.textarea(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    name: name,
    placeholder: placeholder,
    cols: cols,
    rows: rows,
    minLength: minLength,
    autofocus: autofocus,
    disabled: disabled,
    readonly: readonly,
    required: required,
    autoComplete: autoComplete,
    spellCheck: spellCheck,
    wrap: wrap,
    onInput: onInput,
    onChange: onChange,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A label element.
///
/// The HTML `<label>` element represents a caption for an item in a user interface.
Component Label({
  String? className,
  String? style,
  String? id,
  String? htmlFor,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.label(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    htmlFor: htmlFor,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A fieldset element.
///
/// The HTML `<fieldset>` element is used to group several controls and labels.
Component Fieldset({
  String? className,
  String? style,
  String? id,
  String? name,
  bool disabled = false,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.fieldset(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    name: name,
    disabled: disabled,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A legend element.
///
/// The HTML `<legend>` element represents a caption for the content of its parent fieldset.
Component Legend({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.legend(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A datalist element.
///
/// The HTML `<datalist>` element contains a set of option elements.
Component Datalist({
  String? className,
  String? style,
  String? id,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.datalist(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A meter element.
///
/// The HTML `<meter>` element represents a scalar value within a known range.
Component Meter({
  String? className,
  String? style,
  String? id,
  double? value,
  double? min,
  double? max,
  double? low,
  double? high,
  double? optimum,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.meter(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    value: value,
    min: min,
    max: max,
    low: low,
    high: high,
    optimum: optimum,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// A progress element.
///
/// The HTML `<progress>` element displays an indicator showing completion progress.
Component Progress({
  String? className,
  String? style,
  String? id,
  double? value,
  double? max,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.progress(
    resolveChildren(child, children),
    classes: className,
    styles: parseStyles(style),
    id: id,
    value: value,
    max: max,
    attributes: attributes,
    events: events,
    key: key,
  );
}

/// An optgroup element.
///
/// The HTML `<optgroup>` element creates a grouping of options within a select element.
Component Optgroup({
  required String label,
  String? className,
  String? style,
  String? id,
  bool disabled = false,
  Component? child,
  List<Component>? children,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
  Key? key,
}) {
  return jaspr.optgroup(
    resolveChildren(child, children),
    label: label,
    classes: className,
    styles: parseStyles(style),
    id: id,
    disabled: disabled,
    attributes: attributes,
    events: events,
    key: key,
  );
}
