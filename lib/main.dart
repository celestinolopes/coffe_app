import 'package:asset_cache/asset_cache.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_coffe/data/data.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.black,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFFCFA353),
        ),
        textTheme: TextTheme(
          bodyText2: GoogleFonts.montserrat(
            fontSize: 12,
            color: Colors.black,
          ),
        ),
      ),
      title: 'Coffe App',
      home: ShowCase(),
    );
  }
}

class ShowCase extends StatelessWidget {
  const ShowCase({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      body: PageView.builder(
        itemCount: SliderItem.sliderItems.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                SliderItem.sliderItems[index].image,
              ),
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            )),
            height: screenHeigth,
            child: Text(SliderItem.sliderItems[index].subtitle),
          );
        },
      ),
    );
  }
}
