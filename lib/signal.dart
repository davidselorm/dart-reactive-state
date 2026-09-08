typedef VoidCallback = void Function();

class Signal<T> {
  T _value;
  final Set<VoidCallback> _subscribers = {};

  Signal(this._value);

  T get value {
    return _value;
  }

  set value(T newValue) {
    if (_value != newValue) {
      _value = newValue;
      notify();
    }
  }

  void subscribe(VoidCallback listener) {
    _subscribers.add(listener);
  }

  void unsubscribe(VoidCallback listener) {
    _subscribers.remove(listener);
  }

  void notify() {
    for (final listener in List.of(_subscribers)) {
      listener();
    }
  }
}
