import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:namoz_najotdir/core/const_islam.dart';
import 'package:namoz_najotdir/core/routes/router.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:flutter/services.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();
  await Hive.initFlutter();
  ConstIslam.adapter();
  await Hive.openBox("myBoolean");
  await Hive.openBox("check");
  await Hive.openBox("region");
  await Hive.openBox("tasbehSanoq");
  await JustAudioBackground.init(
    androidNotificationChannelId: 'com.ryanheise.bg_demo.channel.audio',
    androidNotificationChannelName: 'Audio playback',
    androidNotificationOngoing: true,
    notificationColor: Colors.amber,
    
  );
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Namozda najot top',
      initialRoute: '/',
      onGenerateRoute: (settings) =>
          RouteGenerateIslam.routeGenerateIslam(settings),
    );
  }
}
