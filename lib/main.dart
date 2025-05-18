import 'package:flutter/material.dart';
import 'package:expense_tracker_app/expenses.dart';
// import 'package:flutter/services.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
  brightness: Brightness.light,
);

var kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 5, 99, 125),
  brightness: Brightness.dark,
);

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        scaffoldBackgroundColor: kDarkColorScheme.surfaceVariant,
        appBarTheme: AppBarTheme(
          backgroundColor: kDarkColorScheme.primary,
          foregroundColor: kDarkColorScheme.onPrimary,
          elevation: 4,
          centerTitle: true,
          titleTextStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        cardTheme: CardTheme(
          color: kDarkColorScheme.surface,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 6,
          shadowColor: Colors.black.withOpacity(0.2),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 2,
          ),
        ),
        textTheme: ThemeData.dark().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: kDarkColorScheme.onSurface,
          ),
          bodyMedium: TextStyle(
            color: kDarkColorScheme.onSurface.withOpacity(0.87),
          ),
          bodySmall: TextStyle(
            color: kDarkColorScheme.onSurface.withOpacity(0.6),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: kDarkColorScheme.surfaceVariant,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          hintStyle: TextStyle(
            color: kDarkColorScheme.onSurface.withOpacity(0.6),
          ),
          labelStyle: TextStyle(color: kDarkColorScheme.onSurface),
        ),
      ),

      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        scaffoldBackgroundColor: kColorScheme.background,
        appBarTheme: AppBarTheme(
          backgroundColor: kColorScheme.primary,
          foregroundColor: kColorScheme.onPrimary,
          elevation: 4,
          centerTitle: true,
        ),
        cardTheme: CardTheme(
          color: kColorScheme.surface,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 4,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
            foregroundColor: kColorScheme.onPrimaryContainer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: kColorScheme.onSecondaryContainer,
          ),
          bodyMedium: TextStyle(color: kColorScheme.onPrimaryContainer),
          bodySmall: TextStyle(
            color: kColorScheme.onPrimaryContainer.withOpacity(0.7),
          ),
        ),
      ),
      themeMode: ThemeMode.system, // Supports light & dark mode
      home: const Expenses(),
    ),
  );
}
