import 'signal.dart';

class Computed<T> {
  final T Function() _compute;
  late T _cachedValue;
  bool _dirty = true;

  Computed(this._compute);

  T get value {
    if (_dirty) {
      _cachedValue = _compute();
      _dirty = false;
    }
    return _cachedValue;
  }

  void markDirty() {
    _dirty = true;
  }
}
