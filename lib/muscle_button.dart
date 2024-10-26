import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:select_body_parts/body_part_provider.dart';
import 'package:select_body_parts/muscle_path_painter.dart';

class MuscleButton extends StatelessWidget {
  final String bodyShapePath;
  final String bodyPartName;

  const MuscleButton({
    super.key,
    required this.bodyShapePath,
    required this.bodyPartName,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BodyPartProvider>(context);
    bool isActive = provider.isSelected(bodyPartName);
    return GestureDetector(
      onTap: () {
        provider.toggleSelection(bodyPartName);
      },
      child: CustomPaint(
        painter: MusclePathPainter(pathData: bodyShapePath, isAcitve: isActive),
      ),
    );
  }
}
