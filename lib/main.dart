import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';
import 'package:vyapardost_flutter/base/widgets/custom_button.dart';
import 'package:vyapardost_flutter/constants/theme_constants.dart';
import 'package:vyapardost_flutter/route/my_router.dart';

Future<void> main() async {
  //Call this before any async task
  WidgetsFlutterBinding.ensureInitialized();

  final routerClass = MyRouter();
  GoRouter appRouter =
      await routerClass.appRouter(userObject: '', initialLink: '');

  runApp(MyApp(appRouter: appRouter));
}

class MyApp extends StatefulWidget {
  final GoRouter? appRouter;
  const MyApp({super.key, this.appRouter});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp.router(
        title: 'VyaparDost',
        debugShowCheckedModeBanner: false,
        theme: ThemeConstants.appTheme(context),
        routeInformationProvider: widget.appRouter?.routeInformationProvider,
        routeInformationParser: widget.appRouter?.routeInformationParser,
        routerDelegate: widget.appRouter?.routerDelegate,
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VyaparDost'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: 'Bottom Button',
              onPressed: () {},
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
