# dart-reactive-state

Fine-grained reactive state container and signal primitives in Dart.

## Architecture
- **Signals**: Atomic observable values with automatic listener notification.
- **Computed**: Memoized derived state evaluating only on dirty dependency changes.
