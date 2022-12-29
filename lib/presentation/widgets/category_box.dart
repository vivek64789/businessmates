import 'package:business_mates/data/models/course_categories_model.dart';

import '../../core/theme/color.dart';
import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox(
      {Key? key,
      required this.data,
      this.isSelected = false,
      this.onTap,
      this.selectedColor = actionColor})
      : super(key: key);
  final CategoriesModel data;
  final Color selectedColor;
  final bool isSelected;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: AnimatedContainer(
              width: MediaQuery.of(context).size.width * 0.13,
              height: MediaQuery.of(context).size.width * 0.13,
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: shadowColor.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(1, 1), // changes position of shadow
                    ),
                  ],
                  shape: BoxShape.circle),
              child: Image.network(
                data.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            data.name,
            maxLines: 1,
            overflow: TextOverflow.fade,
            style:
                const TextStyle(color: textColor, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
