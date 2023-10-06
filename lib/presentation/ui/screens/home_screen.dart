
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/presentation/ui/utility/app_color.dart';
import 'package:ecommerce/presentation/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final ValueNotifier<int> _selected = ValueNotifier(0);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            SvgPicture.asset(ImageAssets.CraftBayNavLogoSvg , fit: BoxFit.cover, width: 80, height: 40,),
            const Spacer(),
            InkWell(
              onTap: (){},
              borderRadius: BorderRadius.circular(40),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.grey.shade300,
                child: const Icon(Icons.person , color: Colors.grey,),
              ),
            ),
            const SizedBox(width: 10,),
            InkWell(
              onTap: (){},
              borderRadius: BorderRadius.circular(40),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.grey.shade300,
                child: const Icon(Icons.call , color: Colors.grey,),
              ),
            ),
            const SizedBox(width: 10,),
            InkWell(
              onTap: (){},
              borderRadius: BorderRadius.circular(40),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.grey.shade300,
                child: const Icon(Icons.notifications , color: Colors.grey,),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                style: const TextStyle(fontSize: 22),
                decoration:  InputDecoration(
                  prefixIcon: const Icon(Icons.search,size: 30,),
                  fillColor: Colors.grey.shade300,
                  filled: true,
                  hintText: 'Search',
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )
                ),
              ),
              const SizedBox(height: 16,),
              CarouselSlider(
                options: CarouselOptions(
                  height: 180.0,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2),
                  onPageChanged: (int page, _){
                    _selected.value = page;
                  },
                ),
                items: [1,2,3,4,5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: const BoxDecoration(
                              color: Colors.amber
                          ),
                          child: Text('text $i', style: const TextStyle(fontSize: 16.0),)
                      );
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 10,),
              ValueListenableBuilder(
                valueListenable: _selected,
                builder: (context, value, _) {
                  List<Widget> list = [];
                  for (int i = 0; i < 5; i++) {
                   list.add(Container(
                      width: 20,
                      height: 20,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                        color: value == i ? AppColor.primaryColor : null,
                      ),
                   ));
                  }
                  return Row(
                    children: list,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
