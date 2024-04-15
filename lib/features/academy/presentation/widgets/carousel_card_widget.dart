import 'dart:async';

import 'package:academy/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/utils/carousel_item.dart';


class CarouselCard extends StatefulWidget {
  final List<CarouselItem> items;

  const CarouselCard({required this.items, super.key});

  @override
  State<CarouselCard> createState() => _CarouselCardState();
}

class _CarouselCardState extends State<CarouselCard> {
  late final PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0, viewportFraction: 0.90);
    WidgetsBinding.instance.addPostFrameCallback((_) => _animateSlider());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _animateSlider() async {
    await Future.delayed(const Duration(seconds: 4));
    if (mounted) {
      int nextPage = _controller.hasClients
          ? _controller.page!.round() + 1
          : _controller.initialPage;
      if (nextPage == widget.items.length) {
        nextPage = 0;
      }
      if (_controller.hasClients) {
        await _controller.animateToPage(nextPage,
            duration: const Duration(seconds: 1), curve: Curves.ease);
        _animateSlider();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.items.isNotEmpty
        ? SizedBox(
            height: 230,
            child: PageView.builder(
                itemCount: widget.items.length,
                controller: _controller,
                itemBuilder: (_, int index) {
                  var item = widget.items[index];
                  return AnimatedBuilder(
                    animation: _controller,
                    builder: (cxt, child) {
                      return child!;
                    },
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      margin: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      decoration: BoxDecoration(
                          color: context.colorScheme.primary.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(24)),
                      child: Stack(fit: StackFit.passthrough, children: [
                        const Icon(
                          Icons.image,
                          size: 42,
                        ),
                        Image.network(
                          item.image,
                          fit: BoxFit.cover,
                        ),
                        Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment(0, 1),
                                colors: <Color>[
                                  Color(0x00000000),
                                  Color(0xCC000000),
                                ],
                                // Gradient from https://learnui.design/tools/gradient-generator.html
                                tileMode: TileMode.mirror,
                              ),
                            )),
                        Positioned(
                          // width: double.infinity,
                          bottom: 0,
                          right: 0,
                          left: 0,
                          // top: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: context.width,
                              child: Text(
                                item.title,
                                softWrap: false,
                                maxLines: 2,
                                style: context.textTheme.titleMedium?.copyWith(
                                    color: context.colorScheme.onPrimary,
                                    overflow: TextOverflow.ellipsis),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                  );
                }),
          )
        : Container();
  }
}
