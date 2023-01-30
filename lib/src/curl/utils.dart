import 'dart:ffi';

extension PointerExtensions<T extends NativeType> on Pointer<T> {
  Pointer<T>? get nullIfNullptr => this == nullptr ? null : this;
}

extension ScopeFunctions<T> on T {
  R let<R>(R Function(T it) block) => block(this);
}

extension StringExtensions on String {
  String? get nullIfEmpty => isEmpty ? null : this;
}
