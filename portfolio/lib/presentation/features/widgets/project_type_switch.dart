import 'package:flutter/material.dart';

class ProjectTypeSwitch extends StatefulWidget {
  final ValueChanged<bool> onChanged;

  const ProjectTypeSwitch({super.key, required this.onChanged});

  @override
  State<ProjectTypeSwitch> createState() => _ProjectTypeSwitchState();
}

class _ProjectTypeSwitchState extends State<ProjectTypeSwitch> {
  bool isPersonal = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Personal"),
        Switch(
          value: isPersonal,
          onChanged: (value) {
            setState(() {
              isPersonal = value;
            });

            // Call the callback with the updated value
            widget.onChanged(isPersonal);
          },
        ),
        //const Text("Personal"),
      ],
    );
  }
}
