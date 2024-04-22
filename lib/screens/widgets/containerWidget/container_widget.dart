import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:immoplus/domain/entities/house.dart';
import 'package:immoplus/screens/pages/detail/views/detail_view.dart';
import 'package:immoplus/screens/pages/home/controllers/home_controller.dart';

class ContainerWidget extends StatelessWidget {
  final House house;
  const ContainerWidget({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put<HomeController>(HomeController(house: house));
    return StaggeredGrid.count(
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        crossAxisCount: 2,
        children: [
          for (var i = 0; i < controller.houseList.length; i++)
            InkWell(
              onTap: () {
                Get.to(
                  () => DetailView(
                    house: controller.houseList[i],
                  ),
                );
              },
              child: Container(
                height: 205,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300]!,
                      blurRadius: 15.0,
                      spreadRadius: 0.5,
                      offset: const Offset(
                        3.0,
                        3.0,
                      ),
                    ),
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                        child: SizedBox(
                          height: 130,
                          width: MediaQuery.of(context).size.width,
                          child: controller.houseList[i].image != ''
                              ? Image.asset(
                                  controller.houseList[i].image,
                                  fit: BoxFit.cover,
                                )
                              : const SizedBox(),
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        controller.houseList[i].title,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          controller.houseList[i].description,
                          style:
                              TextStyle(fontSize: 9, color: Colors.grey[500]),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ]);
  }
}
