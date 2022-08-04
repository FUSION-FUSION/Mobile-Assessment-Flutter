import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'providers/providers.dart';
import 'routes/router.gr.dart' as gr;

import 'utilities/theme.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(Shipify());
}

class Shipify extends StatelessWidget {
  Shipify({Key? key}) : super(key: key);

  final appRouter = gr.AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
      ],
      child: ScreenUtilInit(
          designSize: const Size(428, 926),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return Consumer<ThemeProvider>(
                builder: (context, themeProvider, child) {
              return MaterialApp.router(
                routeInformationParser: appRouter.defaultRouteParser(),
                routerDelegate: appRouter.delegate(),
                title: 'Shipify',
                debugShowCheckedModeBanner: false,
                theme: themeProvider.darkTheme
                    ? AppTheme().darkTheme(
                        themeProvider.primaryColor, themeProvider.fontSize)
                    : AppTheme().lightTheme(
                        themeProvider.primaryColor, themeProvider.fontSize),
                builder: (context, widget) {
                  return MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                    child: Builder(
                      builder: (context) => widget!,
                    ),
                  );
                },
              );
            });
          }),
    );
  }
}
