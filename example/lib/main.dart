import 'package:flutter/material.dart';
import 'package:responsive_builder_kit/responsive_builder_kit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    if(ResponsiveLayoutHelper.isDesktop(context)) {
      print("Desktop mode 1");
    } else if(ResponsiveLayoutHelper.isTablet(context)) {
      print("Tablet mode 1");
    } else if(ResponsiveLayoutHelper.isMobile(context)) {
      print("Mobile mode 1");
    } else if(ResponsiveLayoutHelper.isWatch(context)) {
      print("Watch mode 1");
    }

    if(ResponsiveLayoutHelper.isDesktop(context, maxWidth: 900)) {
      print("Desktop mode 2");
    } else if(ResponsiveLayoutHelper.isTablet(context, minWidth: 650, maxWidth: 900)) {
      print("Tablet mode 2");
    } else if(ResponsiveLayoutHelper.isMobile(context, minWidth: 250, maxWidth: 650)) {
      print("Mobile mode 2");
    } else if(ResponsiveLayoutHelper.isWatch(context, maxWidth: 250)) {
      print("Watch mode 2");
    }

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


    return MaterialApp(
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
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => MyHomePage();
}

class MyHomePage extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
                ResponsiveLayoutHelper.orientation == Orientation.portrait ?
                'You have pushed the button this many times (portrait):'
                    : 'You have pushed the button this many times (landscape):'
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}