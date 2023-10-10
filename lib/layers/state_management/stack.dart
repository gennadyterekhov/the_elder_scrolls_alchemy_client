import 'dart:collection';

class Entry<T> extends LinkedListEntry<Entry<Map<String, dynamic>>> {
  T value;
  Entry(this.value);

  getValue() {
    return value;
  }

  @override
  String toString() {
    return '$value';
  }
}

class Stack {
  Stack() {
    items = LinkedList<Entry<Map<String, dynamic>>>();
  }

  late LinkedList<Entry<Map<String, dynamic>>> items;
  int length = 0;

  int getLength() {
    return length;
  }

  Map<String, dynamic>? getCurrent() {
    if (length != 0) {
      final tailEntry = items.last;
      return tailEntry.getValue();
    }
    return null;
  }

  push(Map<String, dynamic> entry) {
    items.add(Entry(entry));
    length++;
  }

  Map<String, dynamic>? pop() {
    if (length != 0) {
      length--;
      final tailEntry = items.last;
      tailEntry.unlink();
      return tailEntry.getValue();
    }
    return null;
  }
}
