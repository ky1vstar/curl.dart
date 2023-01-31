import 'dart:collection';
import 'dart:convert';
import 'dart:ffi';

import 'package:ffi/ffi.dart';

extension PointerExtensions<T extends NativeType> on Pointer<T> {
  Pointer<T>? get nullIfNullptr => this == nullptr ? null : this;
}

extension ScopeFunctions<T> on T {
  R let<R>(R Function(T it) block) => block(this);
}

extension StringExtensions on String {
  String? get nullIfEmpty => isEmpty ? null : this;
}

extension Utf8PointerPointer on Pointer<Pointer<Utf8>> {
  List<String> toDartStringList() {
    _ensureNotNullptr('toDartStringList');
    return asNullTerminatedIterable().map((strPtr) {
      return strPtr.cast<Utf8>().toDartString();
    }).toList(growable: false);
  }

  void _ensureNotNullptr(String operation) {
    if (this == nullptr) {
      throw UnsupportedError("Operation '$operation' not allowed on a 'nullptr'.");
    }
  }
}

extension PointerPointer<T extends NativeType> on Pointer<Pointer<T>> {
  Iterable<Pointer<T>> asNullTerminatedIterable() => _PointerPointerIterable(this);
}

class _PointerPointerIterable<T extends NativeType> with IterableMixin<Pointer<T>> {
  _PointerPointerIterable(this.pointer);

  final Pointer<Pointer<T>> pointer;

  @override
  Iterator<Pointer<T>> get iterator => _PointerPointerIterator(pointer);
}

class _PointerPointerIterator<T extends NativeType> extends Iterator<Pointer<T>> {
  _PointerPointerIterator(this.pointer);

  final Pointer<Pointer<T>> pointer;
  @override
  Pointer<T> get current => _current;

  var _index = 0;
  Pointer<T> _current = nullptr;

  @override
  bool moveNext() {
    _current = pointer[_index++];
    return _current != nullptr;
  }
}
