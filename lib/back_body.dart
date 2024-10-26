import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:select_body_parts/body_part_paths.dart';
import 'package:select_body_parts/muscle_button.dart';

class BackBody extends StatelessWidget {
  const BackBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 500,
        width: 280,
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(left: 2.1),
            child: SvgPicture.asset("assets/back_body.svg"),
          ),
          const Align(
            alignment: Alignment(0.435, -0.62),
            child: SizedBox(
              height: 30,
              width: 35,
              child: MuscleButton(
                bodyPartName: "Shoulder",
                bodyShapePath: BodyPartPaths.rearShoulderRight,
              ),
            ),
          ),
          const Align(
            alignment: Alignment(-0.415, -0.62),
            child: SizedBox(
              height: 30,
              width: 35,
              child: MuscleButton(
                bodyPartName: "Shoulder",
                bodyShapePath: BodyPartPaths.rearShoulderLeft,
              ),
            ),
          ),
          const Align(
            alignment: Alignment(-0.592, -0.468),
            child: SizedBox(
              height: 50,
              width: 30,
              child: MuscleButton(
                bodyPartName: "Triceps",
                bodyShapePath: BodyPartPaths.leftTriceps,
              ),
            ),
          ),
          const Align(
            alignment: Alignment(0.602, -0.458),
            child: SizedBox(
              height: 40,
              width: 30,
              child: MuscleButton(
                bodyPartName: "Triceps",
                bodyShapePath: BodyPartPaths.rightTriceps,
              ),
            ),
          ),
          const Align(
            alignment: Alignment(-0.85, -0.26),
            child: SizedBox(
              height: 70,
              width: 40,
              child: MuscleButton(
                bodyPartName: "Forearm",
                bodyShapePath: BodyPartPaths.leftForearm,
              ),
            ),
          ),
          const Align(
            alignment: Alignment(0.865, -0.26),
            child: SizedBox(
              height: 70,
              width: 40,
              child: MuscleButton(
                bodyPartName: "Forearm",
                bodyShapePath: BodyPartPaths.rightForearm,
              ),
            ),
          ),
          const Align(
            alignment: Alignment(0.01, -0.674),
            child: SizedBox(
              height: 20,
              width: 70,
              child: MuscleButton(
                bodyPartName: "Upper Back",
                bodyShapePath: BodyPartPaths.backTraps,
              ),
            ),
          ),
          const Align(
            alignment: Alignment(0.01, -0.57),
            child: SizedBox(
              height: 60,
              width: 45,
              child: MuscleButton(
                bodyPartName: "Middle Back",
                bodyShapePath: BodyPartPaths.middleTraps,
              ),
            ),
          ),
          const Align(
            alignment: Alignment(0.01, -0.30),
            child: SizedBox(
              height: 60,
              width: 40,
              child: MuscleButton(
                bodyPartName: "Lower Back",
                bodyShapePath: BodyPartPaths.lowerback,
              ),
            ),
          ),
          const Align(
            alignment: Alignment(0.26, -0.475),
            child: SizedBox(
              height: 120,
              width: 40,
              child: MuscleButton(
                bodyPartName: "Back Lats",
                bodyShapePath: BodyPartPaths.rightBackLat,
              ),
            ),
          ),
          const Align(
            alignment: Alignment(-0.25, -0.475),
            child: SizedBox(
              height: 120,
              width: 40,
              child: MuscleButton(
                bodyPartName: "Back Lats",
                bodyShapePath: BodyPartPaths.leftBackLat,
              ),
            ),
          ),
          const Align(
            alignment: Alignment(-0.17, -0.052),
            child: SizedBox(
              height: 50,
              width: 40,
              child: MuscleButton(
                bodyPartName: "Glutes",
                bodyShapePath: BodyPartPaths.leftGlute,
              ),
            ),
          ),
          const Align(
            alignment: Alignment(0.18, -0.052),
            child: SizedBox(
              height: 50,
              width: 40,
              child: MuscleButton(
                bodyPartName: "Glutes",
                bodyShapePath: BodyPartPaths.rightGlute,
              ),
            ),
          ),
          const Align(
            alignment: Alignment(-0.255, 0.21),
            child: SizedBox(
              height: 110,
              width: 50,
              child: Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: MuscleButton(
                  bodyPartName: "Hamstring",
                  bodyShapePath: BodyPartPaths.leftHamstring,
                ),
              ),
            ),
          ),
          const Align(
            alignment: Alignment(0.25, 0.21),
            child: SizedBox(
              height: 100,
              width: 50,
              child: Padding(
                padding: EdgeInsets.only(bottom: 9.0, left: 5),
                child: MuscleButton(
                  bodyPartName: "Hamstring",
                  bodyShapePath: BodyPartPaths.rightHamstring,
                ),
              ),
            ),
          ),
          const Align(
            alignment: Alignment(-0.345, 0.65),
            child: SizedBox(
              height: 40,
              width: 40,
              child: MuscleButton(
                bodyPartName: "Calf",
                bodyShapePath: BodyPartPaths.leftCalf,
              ),
            ),
          ),
          const Align(
            alignment: Alignment(0.362, 0.65),
            child: SizedBox(
              height: 40,
              width: 40,
              child: MuscleButton(
                bodyPartName: "Calf",
                bodyShapePath: BodyPartPaths.rightCalf,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
