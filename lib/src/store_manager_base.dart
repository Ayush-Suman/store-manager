/// Stores objects of type [V] with keys of type [K]
/// This is useful for storing values that can be fetched
/// their known meta data such as an id, name etc.
///
/// Extend this class to create your own [StoreManager]
abstract class StoreManager<K, V> {
  StoreManager();

  final Map<K, V> _store = <K, V>{};

  /// Adds an element to the store
  void addToStore(Map<K, V> element) {
    return _store.addAll(element);
  }

  /// Returns the element with the given key
  bool storeContains(K key) {
    return _store.containsKey(key);
  }

  /// Removes the element with the given key
  bool removeFromStore(K key) {
    return _store.remove(key) != null;
  }

  /// Removes all elements that satisfy the given [filter]
  void removeFromStoreIf(bool Function(K, V) filter) {
    _store.removeWhere(filter);
  }

  Map<K, V> createNewStoreObject();
}
