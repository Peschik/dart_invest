import 'package:flutter/material.dart';
import 'package:flutter_study/features/add_action/presentation/add_action_sheet.dart';
import 'package:flutter_study/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

class MainShell extends StatelessWidget {
  const MainShell({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  void _onTap(BuildContext context, int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: navigationShell,
      floatingActionButton: FloatingActionButton(
        onPressed: () => showAddActionSheet(context),
        shape: CircleBorder(),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap: (index) => _onTap(context, index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: l10n.navHome),
          BottomNavigationBarItem(
            icon: Icon(Icons.candlestick_chart_sharp),
            label: l10n.navAssets,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.change_circle_outlined),
            label: l10n.navOperations,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: l10n.navAnalytics,
          ),
        ],
      ),
    );
  }
}
