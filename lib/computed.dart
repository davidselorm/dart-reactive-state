import "signal.dart";

class Computed<T> {
  final T Function() _compute;
  late T _cachedValue;
  Computed(this._compute) {
    _cachedValue = _compute();
  }
  T get value => _compute();
}
