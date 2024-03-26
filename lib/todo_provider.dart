import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_provider.g.dart';

@riverpod
class Todo extends _$Todo {
  @override
  List<String> build() {
    return [];
  }

  void add(String title) {
    state.add(title);
  }
}
