import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:immoplus/domain/entities/house.dart';

class DetailView extends StatefulWidget {
  final House house;

  const DetailView({Key? key, required this.house}) : super(key: key);

  @override
  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  late List<String> imageUrls;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    imageUrls = [
      widget.house.image,
      widget.house.image,
      widget.house.image,
      widget.house.image,
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 350,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: imageUrls.map((url) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Colors.amber,
                        ),
                        child: Image.asset(
                          url,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              Positioned(
                bottom: 420,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageUrls.asMap().entries.map((entry) {
                    return GestureDetector(
                      // onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 12.0,
                        height: 12.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == entry.key
                              ? Colors.red
                              : Colors.grey.withOpacity(0.9),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    Positioned(
                      top: 320,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        height: 419,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[300]!,
                              blurRadius: 0.1,
                              spreadRadius: 0.1,
                              offset: const Offset(3.0, 3.0),
                            ),
                          ],
                        ),
                        // child: BackdropFilter(
                        //   filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20),
                            Text(
                              widget.house.title,
                              style: const TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Text('Description de l\'offre'),
                            const Divider(
                              color: Colors.red,
                              endIndent: 190,
                              height: 5,
                              thickness: 2,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              widget.house.description,
                              style: const TextStyle(fontSize: 16.0),
                            ),
                            const SizedBox(height: 20),
                            const SizedBox(height: 30),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),

                    // ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
