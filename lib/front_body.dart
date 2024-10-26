import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:select_body_parts/body_part_paths.dart';
import 'package:select_body_parts/body_part_provider.dart';
import 'package:select_body_parts/muscle_button.dart';

class FrontBody extends StatelessWidget {
  const FrontBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        SizedBox(
          height: 500,
          width: 280,
          child: Consumer<BodyPartProvider>(
            builder: (context, value, child) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 1.5),
                    child: SvgPicture.asset("assets/front_body.svg"),
                  ),
                  const Align(
                    alignment: Alignment(-0.22, -0.695),
                    child: SizedBox(
                      height: 18,
                      width: 25,
                      child: MuscleButton(
                        bodyPartName: "Traps",
                        bodyShapePath: BodyPartPaths.leftTrap,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment(0.22, -0.695),
                    child: SizedBox(
                      height: 18,
                      width: 25,
                      child: MuscleButton(
                        bodyPartName: "Traps",
                        bodyShapePath: BodyPartPaths.rightTrap,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment(0.405, -0.613),
                    child: SizedBox(
                      height: 30,
                      width: 35,
                      child: MuscleButton(
                        bodyPartName: "Shoulder",
                        bodyShapePath: BodyPartPaths.rightFrontShoulder,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment(-0.405, -0.613),
                    child: SizedBox(
                      height: 30,
                      width: 35,
                      child: MuscleButton(
                        bodyPartName: "Shoulder",
                        bodyShapePath: BodyPartPaths.leftFrontShoulder,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment(0.575, -0.45),
                    child: SizedBox(
                      height: 50,
                      width: 30,
                      child: MuscleButton(
                        bodyPartName: "Biceps",
                        bodyShapePath: BodyPartPaths.rightBiceps,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment(-0.575, -0.45),
                    child: SizedBox(
                      height: 50,
                      width: 30,
                      child: MuscleButton(
                        bodyPartName: "Biceps",
                        bodyShapePath: BodyPartPaths.leftBiceps,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment(0.248, -0.58),
                    child: SizedBox(
                      height: 40,
                      width: 40,
                      child: MuscleButton(
                        bodyPartName: "Chest",
                        bodyShapePath: BodyPartPaths.rightChest,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment(-0.248, -0.58),
                    child: SizedBox(
                      height: 40,
                      width: 40,
                      child: MuscleButton(
                        bodyPartName: "Chest",
                        bodyShapePath: BodyPartPaths.leftChest,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment(0, -0.32),
                    child: SizedBox(
                      height: 120,
                      width: 60,
                      child: MuscleButton(
                        bodyPartName: "Abdominals",
                        bodyShapePath: BodyPartPaths.abdonminals,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment(0.8, -0.274),
                    child: SizedBox(
                      height: 60,
                      width: 30,
                      child: MuscleButton(
                        bodyPartName: "Front Arm",
                        bodyShapePath: BodyPartPaths.rightFrontArm,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment(-0.8, -0.274),
                    child: SizedBox(
                      height: 60,
                      width: 30,
                      child: MuscleButton(
                        bodyPartName: "Front Arm",
                        bodyShapePath: BodyPartPaths.leftFrontArm,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment(-0.285, -0.37),
                    child: SizedBox(
                      height: 80,
                      width: 25,
                      child: MuscleButton(
                        bodyPartName: "Obliques",
                        bodyShapePath: BodyPartPaths.leftObliques,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment(0.285, -0.37),
                    child: SizedBox(
                      height: 80,
                      width: 25,
                      child: MuscleButton(
                        bodyPartName: "Obliques",
                        bodyShapePath: BodyPartPaths.rightObliques,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment(0.24, 0.185),
                    child: SizedBox(
                      height: 110,
                      width: 40,
                      child: MuscleButton(
                        bodyPartName: "Quads",
                        bodyShapePath: BodyPartPaths.rightQuad,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment(-0.24, 0.185),
                    child: SizedBox(
                      height: 110,
                      width: 40,
                      child: MuscleButton(
                        bodyPartName: "Quads",
                        bodyShapePath: BodyPartPaths.leftQuad,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment(0.385, 0.93),
                    child: SizedBox(
                      height: 110,
                      width: 30,
                      child: MuscleButton(
                        bodyPartName: "Calf",
                        bodyShapePath: BodyPartPaths.frontRightCalf,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment(-0.385, 0.93),
                    child: SizedBox(
                      height: 110,
                      width: 30,
                      child: MuscleButton(
                        bodyPartName: "Calf",
                        bodyShapePath: BodyPartPaths.frontLeftCalf,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    ));
  }
}
