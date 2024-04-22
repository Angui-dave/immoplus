import 'package:flutter/material.dart';
import 'package:immoplus/domain/entities/house.dart';
import 'package:immoplus/screens/widgets/containerWidget/container_widget.dart';
import 'package:immoplus/screens/widgets/searchBarWidget/search_bar_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 5),
          child: Column(
            children: [
              const SearchBarWidget(),
              ContainerWidget(house: House(image: '', title: '', description: ''),),
            ],
          ),
        ),
      ),
      
    );
  }
}