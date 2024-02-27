import 'package:flutter/material.dart';
import 'package:instagram_clone/core/constants/theme_constants.dart';
import 'package:instagram_clone/features/presentation/widgets/search_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _searchController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SearchWidget(
                controller: _searchController,
              ),
              sizeVer(10),
              Expanded(
                child: GridView.builder(
                    itemCount: 32,
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: SizedBox(
                            // width: 100,
                            // height: 100,
                            child: Container(
                          color: secondaryColor,
                        )),
                      );
                    }),
              )
            ])));
  }
}
