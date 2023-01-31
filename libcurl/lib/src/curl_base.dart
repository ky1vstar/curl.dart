import 'dart:ffi';

import 'package:libcurl/libcurl.dart';
import 'package:meta/meta.dart';

final _finalizers = <Type, NativeFinalizer>{};

typedef CleanupFunc<T extends NativeType> = void Function(Pointer<T>);

abstract class CurlOption {
  const CurlOption();

  int get rawValue;
}

abstract class CurlHandle<T extends NativeType> implements Finalizable {
  CurlHandle(
    this._handle, {
    required Pointer<NativeFinalizerFunction> finalizerCallback,
    required CleanupFunc<T> cleanupFunc,
  }) : _cleanupFunc = cleanupFunc {
    _finalizer = _finalizers[runtimeType] ??= NativeFinalizer(finalizerCallback);
    _attachFinalizer();
  }

  Pointer<T> _handle;
  final CleanupFunc<T> _cleanupFunc;
  late final NativeFinalizer _finalizer;
  var _closed = false;

  @internal
  Pointer<T> get handle => _handle;

  @mustCallSuper
  void close() {
    if (_closed) {
      return;
    }
    _closed = true;
    _detachFinalizer();
    _cleanupFunc(_handle);
  }

  void _attachFinalizer() {
    _finalizer.attach(this, _handle.cast(), detach: this);
  }

  void _detachFinalizer() {
    _finalizer.detach(this);
  }
}

abstract class CurlHotSwappableHandle<T extends NativeType> extends CurlHandle<T> {
  CurlHotSwappableHandle(super.handle, {required super.finalizerCallback, required super.cleanupFunc});

  @internal
  void howSwapHandle(Pointer<T> newHandle) {
    if (handle == newHandle) {
      return;
    }
    _detachFinalizer();
    _handle = newHandle;
    _attachFinalizer();
  }
}

abstract class CurlStorableHandle<T extends NativeType> extends CurlHandle<T> {
  CurlStorableHandle(super.handle, {required super.finalizerCallback, required super.cleanupFunc})
      : assert(handle != nullptr) {
    _instances[_handle] = this;
  }

  static final _instances = <Pointer, CurlStorableHandle>{};

  static T existingInstance<T extends CurlStorableHandle>(Pointer handle) {
    final existing = _instances[handle];
    if (existing == null) {
      throw CurlException("Cannot find existing handle for pointer $handle of $T");
    } else if (existing is T) {
      return existing;
    } else {
      throw CurlException(
        "Existing handle for pointer $handle is expected to be a type of $T, but ${existing.runtimeType} is found instead",
      );
    }
  }

  @override
  void close() {
    _instances.remove(_handle);
    super.close();
  }
}
