import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cooking/application/state/nickname.dart';

class Sample extends ConsumerWidget {
  const Sample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nickname = ref.watch(nicknameProvider);

    return Scaffold(
      appBar: AppBar(title: Text(nickname)),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ニックネーム 2
            Text(nickname),
            // ボタン A
            ElevatedButton(onPressed: () => tapA(ref), child: const Text('A')),
            // ボタン B
            ElevatedButton(onPressed: () => tapB(ref), child: const Text('B')),
            // ボタン C
            ElevatedButton(onPressed: () => tapC(ref), child: const Text('C')),
            // ニックネーム 3
            Text(nickname),
          ],
        ),
      ),
    );
  }

  tapA(WidgetRef ref) {
    final notifier = ref.read(nicknameProvider.notifier);
    notifier.state = 'ルビーキャット';
  }

  tapB(WidgetRef ref) {
    final notifier = ref.read(nicknameProvider.notifier);
    notifier.state = 'ルビーバード';
  }

  tapC(WidgetRef ref) {
    final notifier = ref.read(nicknameProvider.notifier);
    notifier.state = 'ルビーフィッシュ';
  }
}