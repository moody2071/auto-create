// // import 'package:real_estate_app/res/sizes.dart'

// import 'package:hive/hive.dart';
// import 'package:shein/res/color_app.dart';
// import 'package:shein/res/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:shein/res/app_textsyle.dart';

// bool getCurrentTheme() {
//   var isDarkMode = Hive.box('darkMode');
//   return (isDarkMode.get('darkMode', defaultValue: false));
// }

// class AppThemeData {
//   static final AppTextStyle _textStyle = AppTextStyle.instance;

//   static ThemeData lightTheme() => ThemeData(
//         brightness: Brightness.light,
//         scaffoldBackgroundColor: appScaffoldBackgroundColor,
//         primaryColor: appPrimaryColor,
//         primaryColorDark: appPrimaryColorDark,
//         primaryColorLight: appPrimaryColorLight,

//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ButtonStyle(
//             minimumSize: WidgetStatePropertyAll(Size(100, 50)),
//             foregroundColor: WidgetStatePropertyAll(appWhite),
//             iconColor: WidgetStatePropertyAll(appWhite),
//             backgroundColor: WidgetStatePropertyAll(appPrimaryColor),
//           ),
//         ),

//         //add all colors
//         colorScheme: ColorScheme.fromSeed(seedColor: appPrimaryColor),
//         useMaterial3: true,
//         //appBarTheme
//         //appBarTheme
//         appBarTheme: AppBarTheme(
//           titleTextStyle: TextStyle(
//             color: appBlack,
//             fontFamily: defaultFont,
//             fontSize: 22,
//             height: 3,
//           ),
//           backgroundColor: appScaffoldBackgroundColor,
//           centerTitle: true,
//           scrolledUnderElevation: 3,
//           surfaceTintColor: appScaffoldBackgroundColor,
//           shadowColor: const Color.fromARGB(62, 211, 212, 212),
//           iconTheme: IconThemeData(
//             color: appBlack,
//           ),
//         ),

//         iconTheme: IconThemeData(
//           size: 28,
//           color: appIconColorPrimary,
//         ),

//         cardTheme: CardTheme(
//           color: appPrimaryColorDark,
//         ),

//         dividerColor: appWhite,
//         dividerTheme: DividerThemeData(color: appBlack),

//         sliderTheme: SliderThemeData(
//           activeTickMarkColor: appBlack,
//         ),

//         progressIndicatorTheme: ProgressIndicatorThemeData(color: appPrimaryColor),

//         inputDecorationTheme: InputDecorationTheme(
//           contentPadding: EdgeInsets.fromLTRB(24, 18, 24, 18),
//           filled: true,
//           fillColor: appPrimaryColorDark,
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(40),
//             borderSide: BorderSide(
//               width: 0.0,
//               color: appt,
//             ),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(40),
//             borderSide: const BorderSide(
//               color: appt,
//               width: 0.0,
//             ),
//           ),
//         ),
//         tabBarTheme: TabBarTheme(
//           indicatorColor: PrimaryColor,
//           labelColor: PrimaryColor,
//           unselectedLabelColor: appTextColorPrimary,
//           overlayColor: WidgetStatePropertyAll(
//             appt,
//           ),
//         ),
//         // primarySwatch: primarySwatch,

//         // dividerColor: appDividerColor,

//         // colorScheme: ColorScheme.fromSwatch(
//         //   primarySwatch: colorCustom,
//         //   // primarySwatch: primarySwatch,
//         // ),
//         // switchTheme: SwitchThemeData(
//         //   thumbColor: WidgetStatePropertyAll(appBlack),
//         //   // trackColor: WidgetStatePropertyAll(appWhite),
//         //   trackOutlineColor: WidgetStatePropertyAll(Colors.amberAccent),
//         //   overlayColor: WidgetStatePropertyAll(Colors.red),
//         // ),
//         // iconTheme: IconThemeData(
//         //   color: appBlack,
//         //   size: 50.0,
//         // ),

//         // primaryTextTheme: TextTheme(),
//         // Color Scheme
//         // colorScheme: ColorScheme(
//         //   brightness: Brightness.light,
//         //   primary: primary,
//         //   onPrimary: onPrimary,
//         //   secondary: secondary,
//         //   onSecondary: onSecondary,
//         //   error: error,
//         //   onError: onError,
//         //   surface: surface,
//         //   onSurface: onSurface,
//         // ),

//         //elevatedButtonTheme
//         // elevatedButtonTheme: ElevatedButtonThemeData(
//         //   style: ButtonStyle(
//         //     backgroundColor: WidgetStateProperty.all(
//         //       Colors.white,
//         //     ),
//         //   ),
//         // ),
//         //appBarTheme
//         // appBarTheme: AppBarTheme(
//         //   color: appLayout_background,
//         //   iconTheme: IconThemeData(
//         //     color: appTextColorPrimary,
//         //     size: 24,
//         //   ),
//         // ),

//         // useMaterial3: true,

//         //Text Theme
//         textTheme: TextTheme(
//           displayLarge: _textStyle.displayLarge,
//           displayMedium: _textStyle.displayMedium,
//           displaySmall: _textStyle.displaySmall,
//           headlineLarge: _textStyle.headlineLarge,
//           headlineMedium: _textStyle.headlineMedium,
//           headlineSmall: _textStyle.headlineSmall,
//           titleLarge: _textStyle.titleLarge,
//           titleSmall: _textStyle.titleSmall,
//           titleMedium: _textStyle.titleMedium,
//           labelLarge: _textStyle.labelLarge,
//           labelMedium: _textStyle.labelMedium,
//           labelSmall: _textStyle.labelSmall,
//           bodyLarge: _textStyle.bodyLarge,
//           bodyMedium: _textStyle.bodyMedium,
//           bodySmall: _textStyle.bodySmall,
//         ),
//       );

//   static ThemeData darkTheme() => ThemeData(
//         // brightness: Brightness.dark,
//         scaffoldBackgroundColor: scaffoldBackgroundColor,
//         primaryColor: PrimaryColor,
//         primaryColorDark: PrimaryColorDark,
//         primaryColorLight: PrimaryColorlight,

//         //elevatedButtonTheme
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ButtonStyle(
//             minimumSize: WidgetStatePropertyAll(Size(100, 50)),
//             foregroundColor: WidgetStatePropertyAll(appWhite),
//             iconColor: WidgetStatePropertyAll(appWhite),
//             backgroundColor: WidgetStatePropertyAll(PrimaryColor),
//           ),
//         ),

//         iconTheme: IconThemeData(
//           size: 28,
//           color: iconColorPrimary,
//         ),

//         //appBarTheme
//         appBarTheme: AppBarTheme(
//           titleTextStyle: TextStyle(
//             color: appWhite,
//             fontFamily: defaultFont,
//             fontSize: 22,
//             height: 3,
//           ),
//           backgroundColor: scaffoldBackgroundColor,
//           centerTitle: true,
//           scrolledUnderElevation: 3,
//           surfaceTintColor: scaffoldBackgroundColor,
//           shadowColor: const Color(0xFF0f141c),
//           iconTheme: IconThemeData(
//             color: appWhite,
//           ),
//         ),

//         cardTheme: CardTheme(
//           color: PrimaryColorDark,
//         ),

//         tabBarTheme: TabBarTheme(
//           indicatorColor: PrimaryColor,
//           labelColor: PrimaryColor,
//           unselectedLabelColor: TextColorPrimary,
//           overlayColor: WidgetStatePropertyAll(
//             appt,
//           ),
//         ),
//         //add all colors
//         colorScheme: ColorScheme.fromSeed(seedColor: PrimaryColor),
//         useMaterial3: true,
//         // primarySwatch: primarySwatch,

//         // primaryIconTheme: IconThemeData(),
//         // primaryTextTheme: TextTheme(),
//         dividerColor: appWhite,
//         dividerTheme: DividerThemeData(color: appWhite),

//         progressIndicatorTheme: ProgressIndicatorThemeData(color: PrimaryColor),

//         // colorScheme: ColorScheme.fromSwatch(
//         //   primarySwatch: colorCustom, // primarySwatch: primarySwatch,
//         // ),
//         //Color Scheme
//         // colorScheme: ColorScheme(
//         //   brightness: Brightness.dark,
//         //   primary: appWhite,
//         //   onPrimary: appWhite,
//         //   secondary: appWhite,
//         //   onSecondary: appWhite,
//         //   error: appWhite,
//         //   onError: appWhite,
//         //   surface: PrimaryColorDark,
//         //   onSurface: appWhite,
//         //   // surfaceContainer: Color.fromARGB(255, 150, 205, 117),
//         //   onSurfaceVariant: appWhite,
//         //   // onInverseSurface: appBlack,
//         // ),

//         inputDecorationTheme: InputDecorationTheme(
//           contentPadding: EdgeInsets.fromLTRB(24, 18, 24, 18),
//           filled: true,
//           fillColor: PrimaryColorDark,
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(40),
//             borderSide: BorderSide(
//               width: 0.0,
//               color: appt,
//             ),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(40),
//             borderSide: const BorderSide(
//               color: appt,
//               width: 0.0,
//             ),
//           ),
//         ),
//         // iconTheme: IconThemeData(
//         //   color: appColorPrimaryDark,
//         //   size: 50.0,
//         // ),

//         //elevatedButtonTheme
//         // elevatedButtonTheme: ElevatedButtonThemeData(
//         //   style: ButtonStyle(
//         //     backgroundColor: WidgetStateProperty.all(
//         //       Colors.white,
//         //     ),
//         //   ),
//         // ),

//         //appBarTheme
//         // appBarTheme: AppBarTheme(
//         //   titleTextStyle: TextStyle(color: white, fontFamily: defaultFont, fontSize: 22),
//         //   color: appBackgroundColorDark,
//         //   iconTheme: IconThemeData(
//         //     color: appWhite,
//         //     size: 24,
//         //   ),
//         // ),
//         // highlightColor: appBlack,
//         // hintColor: appBlack,

//         // useMaterial3: true,

//         //textTheme
//         textTheme: TextTheme(
//           displayLarge: _textStyle.displayLarge.copyWith(color: TextColorPrimary),
//           displayMedium: _textStyle.displayMedium.copyWith(color: TextColorPrimary),
//           displaySmall: _textStyle.displaySmall.copyWith(color: TextColorPrimary),
//           headlineLarge: _textStyle.headlineLarge.copyWith(color: TextColorPrimary),
//           headlineMedium: _textStyle.headlineMedium.copyWith(color: TextColorPrimary),
//           headlineSmall: _textStyle.headlineSmall.copyWith(color: TextColorPrimary),
//           titleLarge: _textStyle.titleLarge.copyWith(color: TextColorPrimary),
//           titleSmall: _textStyle.titleSmall.copyWith(color: TextColorPrimary),
//           titleMedium: _textStyle.titleMedium.copyWith(color: TextColorPrimary),
//           labelLarge: _textStyle.labelLarge.copyWith(color: TextColorPrimary),
//           labelMedium: _textStyle.labelMedium.copyWith(color: TextColorPrimary),
//           labelSmall: _textStyle.labelSmall.copyWith(color: TextColorPrimary),
//           bodyLarge: _textStyle.bodyLarge.copyWith(color: TextColorPrimary),
//           bodyMedium: _textStyle.bodyMedium.copyWith(color: TextColorPrimary),
//           bodySmall: _textStyle.bodySmall.copyWith(color: TextColorPrimary),
//         ),
//       );
// }

// // ThemeData(
// //         scaffoldBackgroundColor: appWhite, // الخلفية

// //         iconTheme: IconThemeData(
// //           // الايقونات
// //           color: Colors.blue,
// //           size: 24.0,
// //         ),
// //         textTheme: TextTheme(
// //           // الخلفية
// //           bodyMedium: TextStyle(fontSize: 50.0), //انص الاساسي
// //           // headlineMedium: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
// //         ),
// //         appBarTheme: AppBarTheme(
// //           titleTextStyle: TextStyle(
// //             // نص appbar
// //             color: appBlack,
// //             fontFamily: defaultFont,
// //             fontSize: 22,
// //           ),
// //           backgroundColor: appWhite, //لون appbar
// //           iconTheme: IconThemeData(
// //             // ايقونات appbar
// //             color: appBlack,
// //           ),
// //         ),
// //         colorScheme: ColorScheme.light(),

// //         // lose

// //         primarySwatch: colorCustom,
// //         primaryColor: appColorPrimary,
// //         primaryColorDark: appColorPrimary,
// //       ),
