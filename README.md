# Flutter Responsive Builder Kit

[![ResponsiveBuilderKit](https://img.shields.io/badge/RzRaselFlutter-ResponsiveBuilderKit-blue.svg)](https://github.com/rzrasel/flutter-responsive-builder-kit)
[![Flutter Responsive](https://img.shields.io/badge/flutter-responsive-brightgreen.svg?style=flat-square)](https://github.com/rzrasel/flutter-responsive-builder-kit)
[![pub package](https://img.shields.io/pub/v/responsive_builder_kit.svg)](https://pub.dartlang.org/packages/responsive_builder_kit)
![GitHub License](https://img.shields.io/github/license/rzrasel/flutter-responsive-builder-kit)
[![GitHub stars](https://img.shields.io/github/stars/rzrasel/flutter-responsive-builder-kit)](https://github.com/rzrasel/flutter-responsive-builder-kit)

## responsive_builder_kit

## Usage

### 1. Add library to your pubspec.yaml

latest version: [![pub package](https://img.shields.io/pub/v/responsive_builder_kit.svg)](https://pub.dartlang.org/packages/responsive_builder_kit)

```yaml
dependencies:
  responsive_builder_kit: ^latest_version
```

### 2. Import library in dart file

```dart
import 'package:responsive_builder_kit/responsive_builder_kit.dart';
```

### 3. Wrap your app widget

```responsive_screen_builder_builder
MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: .fromSeed(seedColor: Colors.deepPurple),
    ),
    home: ResponsiveScreenBuilder.builder(
      desktop: (BuildContext context) => HomePage(title: "Responsive Layout Builder"),
      tablet: (BuildContext context) => Container(color:Colors.yellow),
      mobile: (BuildContext context) => OrientationLayoutBuilder(
        portrait: (context) => Container(color:Colors.blue),
        landscape: (context) => Container(color:Colors.black),
      ),
      watch: (BuildContext context) => Container(color:Colors.purple),
    )
);
```

- Called by breakpoints:

```responsive_screen_builder_builder
MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      colorScheme: .fromSeed(seedColor: Colors.deepPurple),
    ),
    home: ResponsiveScreenBuilder.builder(
      breakpoints: ScreenBreakpoints(desktop: 900, tablet: 650, mobile: 650, watch: 250),
      desktop: (BuildContext context) => HomePage(title: "Responsive Layout Builder"),
      tablet: (BuildContext context) => Container(color:Colors.yellow),
      mobile: (BuildContext context) => OrientationLayoutBuilder(
        portrait: (context) => Container(color:Colors.blue),
        landscape: (context) => Container(color:Colors.black),
      ),
      watch: (BuildContext context) => Container(color:Colors.purple),
    )
);
```

### 4. Conditional statements:

- Without breakpoint

```conditional_statements_without
if(ResponsiveLayoutHelper.isDesktop(context)) {
  print("Desktop mode");
} else if(ResponsiveLayoutHelper.isTablet(context)) {
  print("Tablet mode");
} else if(ResponsiveLayoutHelper.isMobile(context)) {
  print("Mobile mode");
} else if(ResponsiveLayoutHelper.isWatch(context)) {
  print("Watch mode");
}
```

* Use Responsive class:

```conditional_statements_without
if(Responsive.isExtraLargeScreen(context)) {
  print("Extra large screen mode");
} else if(Responsive.isDesktop(context)) {
  print("Desktop screen mode");
} else if(Responsive.isTablet(context)) {
  print("Tablet screen mode");
} else if(Responsive.isLargeMobile(context)) {
  print("Large mobile screen mode");
} else if(Responsive.isMobile(context)) {
  print("Mobile screen mode");
} else if(Responsive.isWatch(context)) {
  print("Watch screen mode");
}
```

- With breakpoint

```conditional_statements_with
if(ResponsiveLayoutHelper.isDesktop(context, maxWidth: 900)) {
  print("Desktop mode");
} else if(ResponsiveLayoutHelper.isTablet(context, minWidth: 650, maxWidth: 900)) {
  print("Tablet mode");
} else if(ResponsiveLayoutHelper.isMobile(context, minWidth: 250, maxWidth: 650)) {
  print("Mobile mode");
} else if(ResponsiveLayoutHelper.isWatch(context, maxWidth: 250)) {
  print("Watch mode");
}
```

* Use Responsive class:

```conditional_statements_with
if(Responsive.isExtraLargeScreen(context, minWidth: 3840)) {
  print("Extra large screen mode");
} else if(Responsive.isDesktop(context, minWidth: 900)) {
  print("Desktop screen mode");
} else if(Responsive.isTablet(context, maxWidth: 900)) {
  print("Tablet screen mode");
} else if(Responsive.isLargeMobile(context, maxWidth: 650)) {
  print("Large mobile screen mode");
} else if(Responsive.isMobile(context, maxWidth: 500)) {
  print("Mobile screen mode");
} else if(Responsive.isWatch(context, maxWidth: 250)) {
  print("Watch screen mode");
}
```

### Publish in Pub Dev

```publish_in_pub_dev
flutter pub publish --dry-run
flutter pub publish
```