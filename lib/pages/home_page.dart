import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wine_shop/controllers/app_controller.dart';
import 'package:wine_shop/widgets/address_widget.dart';
import 'package:wine_shop/widgets/category_button.dart';
import 'package:wine_shop/widgets/decorated_icon_button.dart';
import 'package:wine_shop/widgets/image_container.dart';
import 'package:wine_shop/widgets/wine_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final AppController controller = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Address(
                    location: 'Donnerville Drive',
                    address:
                        "4 Donnerville Hall, Donnerville Drive, Admaston...",
                  ),
                  DecoratedIconButton(
                    icon: Icons.notifications_outlined,
                    size: 50,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SearchBar(
                leading: const Icon(Icons.search),
                trailing: [
                  const VerticalDivider(
                    width: 10,
                    thickness: 2,
                    color: Colors.black,
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.mic_outlined)),
                ],
                hintText: 'Search',
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Shop wines by',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.categoryList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CategoryButton(
                        name: controller.categoryList[index],
                        onTap: () {},
                        isSelected: index == 0 ? true : false,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.wineColorList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: ImageContainer(
                        image:
                            (controller.wineColorList[index] == "White wines")
                                ? "assets/images/white-wine.png"
                                : "assets/images/red-wine.png",
                        title: controller.wineColorList[index],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Wines',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextButton(onPressed: () {}, child: const Text('see all'))
                ],
              ),
              SizedBox(
                height: 400,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.wineList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: WineCard(wine: controller.wineList[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
