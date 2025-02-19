import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  final int starCount;
  final double size;
  final Color color;
  final Color selectedColor;
  final ValueChanged<int>? onChanged;
  final int initialRating;

  const StarRating(
      {super.key,
      this.starCount = 5,
      this.size = 25.0,
      this.color = Colors.grey,
      this.selectedColor = Colors.amber,
      this.onChanged,
      this.initialRating = 0});

  @override
  StarRatingState createState() => StarRatingState();
}

class StarRatingState extends State<StarRating> {
  late int currentRating;

  @override
  void initState() {
    super.initState();
    currentRating = widget.initialRating;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          currentRating.toString(),
          style: const TextStyle(fontSize: 20),
        ),
        SizedBox(width: 5),
        Row(
          children: List.generate(widget.starCount, (index) {
            return SizedBox(
              height: 25,
              width: 25,
              child: IconButton(
                padding: EdgeInsets.zero,
                iconSize: widget.size,
                icon: Icon(
                  index < currentRating ? Icons.star : Icons.star_border,
                  color: index < currentRating
                      ? widget.selectedColor
                      : widget.color,
                ),
                onPressed: () {
                  setState(() {
                    currentRating = index + 1;
                  });
                  widget.onChanged?.call(currentRating);
                },
              ),
            );
          }),
        ),
      ],
    );
  }
}
