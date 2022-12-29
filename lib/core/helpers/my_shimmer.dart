import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MyShimmer extends StatefulWidget {
  double length, height, width;

  MyShimmer({Key? key, this.height = 40, this.length = 264, this.width = 40})
      : super(key: key);

  @override
  State<MyShimmer> createState() => _MyShimmerState();
}

class _MyShimmerState extends State<MyShimmer> {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.white10,
        highlightColor: const Color.fromARGB(255, 185, 183, 183),
        child: SizedBox(
          height: widget.length,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Container(
                        height: widget.height,
                        width: widget.width,
                        color: const Color(0xfff9f9fb),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
