import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/themes/app_theme.dart';

// Color list inmutable
final colorListProvider = Provider((ref) => colorList);
// Dark mode state
final isDarkModeProvider = StateProvider((ref) => false);
// Color state
final selectedColorProvider = StateProvider((ref) => 0);

// objet of appTheme custom
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

class ThemeNotifier extends StateNotifier<AppTheme> {
  // State = AppTheme
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.compyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.compyWith(selectedColor: colorIndex);
  }
}
