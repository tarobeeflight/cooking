import 'package:riverpod_annotation/riverpod_annotation.dart';
part 's1.g.dart';

@riverpod
class S1Notifier extends _$S1Notifier {
  @override
  int build() {
    // 最初のデータ
    return 0;
  }

  // 状態を変更するコード
  void updateState(){
    // 変更前のデータ（stateはパッケージが保持する変数。多分notifierが現在監視している値）
    final oldState = state;
    // 変更後のデータ
    final newState = oldState + 1;
    // データを上書き
    state = newState;
  }
}