import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:ibilding/model/card_name_model.dart';
import 'package:ibilding/screens/home%20page/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter<NameModel>(NameModelAdapter());
  await Hive.openBox<NameModel>("cantracts");

  runApp(EasyLocalization(
    supportedLocales: const [Locale("uz"), Locale("ru"), Locale("eng")],
    path: "assets/lang",
    fallbackLocale: const Locale("eng"),
    startLocale: const Locale("eng"),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: MyHomePage(),
    );
  }
}
