import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_study/features/assets/presentation/assets_providers.dart';
import 'package:flutter_study/core/format/money_format.dart';
import 'package:flutter_study/core/format/format_signed_percent.dart';

final class AssetsScreen extends ConsumerWidget {
  const AssetsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncAssets = ref.watch(assetsProvider);

    return Scaffold(
      body: SafeArea(
        child: asyncAssets.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, _) =>
              Center(child: Text('Error while getting assets: $error')),
          data: (assets) => ListView.builder(
            itemCount: assets.length,
            itemBuilder: (context, index) {
              final asset = assets[index];

              return ListTile(
                title: Text(asset.name),
                subtitle: Text(asset.type.name),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(formatMoney(asset.value)),
                    Text(formatSignedPercent(asset.changePercent)),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
