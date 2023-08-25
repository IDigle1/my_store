import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_store/components/category-button.dart';
import 'package:my_store/constants/Colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: colorBackgroundGray3,
                contentPadding: const EdgeInsets.all(10),
                hintText: 'Поиск',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide.none
                ),
                prefixIcon: const Icon(Icons.search),
                iconColor: const Color(0xFF868889)
              ),
            ),
            const SizedBox(height: 20.0),
            Image.asset("assets/images/main-banner.jpg"),
            const SizedBox(height: 20.0),
            const Text(
              'Категории',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold
              )
            ),
            const SizedBox(height: 20.0),
            CategoryMenu()
          ],
        )
      ),
    );
  }
}

class CategoryMenu extends StatelessWidget {
  CategoryMenu({super.key});

  @override
  Widget build(BuildContext context) {
    var buttons = [
      ICategoryButton(
        icon: SvgPicture.asset("assets/icons/vegetable-icon.svg"),
        backgroundColor: const Color(0xFFE6F2EA),
        text: 'Овощи'
      ),
      ICategoryButton(
        icon: SvgPicture.asset("assets/icons/apple-icon.svg"),
        backgroundColor: const Color(0xFFFFE9E5),
        text: 'Фрукты'
      ),
      ICategoryButton(
        icon: SvgPicture.asset("assets/icons/beverage-icon.svg"),
        backgroundColor: const Color(0xFFFFF6E3),
        text: 'Напитки'
      ),
      ICategoryButton(
        icon: SvgPicture.asset("assets/icons/grocerry-icon.svg"),
        backgroundColor: const Color(0xFFF3EFFA),
        text: 'Бакалея'
      ),
      ICategoryButton(
        icon: SvgPicture.asset("assets/icons/oil-icon.svg"),
        backgroundColor: const Color(0xFFDCF4F5),
        text: 'Масло'
      )
    ];

    return SizedBox(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: buttons.length,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CategoryButton(
                icon: buttons[index].icon,
                backgroundColor: buttons[index].backgroundColor,
                text: buttons[index].text
            ),
          );
        },
      ),
    );
  }
}

class ICategoryButton {
  SvgPicture icon;
  Color backgroundColor;
  String text;

  ICategoryButton({required this.text, required this.backgroundColor, required this.icon});
}