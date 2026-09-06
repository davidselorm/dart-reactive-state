class Signal<T> {
  T _value;
  final List<void Function(T)> _listeners = [];
  Signal(this._value);
  T get value => _value;
  set value(T newValue) {
    if (_value != newValue) {
      _value = newValue;
      for (final listener in _listeners) {
        listener(_value);
      }
    }
  }
  void Function() subscribe(void Function(T) listener) {
    _listeners.add(listener);
    return () => _listeners.remove(listener);
  }
}
