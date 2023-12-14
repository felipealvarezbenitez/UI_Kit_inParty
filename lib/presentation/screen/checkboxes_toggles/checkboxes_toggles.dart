import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  final String? name;
  final Function? onPressed;
  final bool isSelected;

  const UiControlsScreen({
    Key? key,
    this.onPressed,
    this.name,
    this.isSelected = false,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {

  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Normal Shiwch'),
          activeColor: Colors.white,
          activeTrackColor: const Color.fromARGB(255, 139, 184, 79),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        const SwitchListTile(
          title: Text('Disable Shiwch'),
          activeColor: Colors.white,
          activeTrackColor: Color.fromARGB(255, 139, 184, 79),
          value: false,
          onChanged: null,
        ),
        
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5.0,
                  spreadRadius: 0.5,
                  offset: Offset(0.7,0.5),
                )
              ],
            ),
            child: ExpansionTile(
              title: const Text('Toggle'),
              children: [
                Container(
                  color: selectedTransportation == Transportation.car ? const Color.fromARGB(60, 195, 213, 165) : null,
                  child: ListTile(
                    title: const Text('opcion 1'),
                    onTap: () => setState(() {
                      selectedTransportation = Transportation.car;
                    }),
                  ),
                ),
                Container(
                  color: selectedTransportation == Transportation.boat ? const Color.fromARGB(60, 195, 213, 165) : null,
                  child: ListTile(
                    title: const Text('opcion 2'),
                    onTap: () => setState(() {
                      selectedTransportation = Transportation.boat;
                    }),
                  ),
                ),
                Container(
                  color: selectedTransportation == Transportation.plane ? const Color.fromARGB(60, 195, 213, 165) : null,
                  child: ListTile(
                    title: const Text('opcion 3'),
                    onTap: () => setState(() {
                      selectedTransportation = Transportation.plane;
                    }),
                  ),
                ),
                Container(
                  color: selectedTransportation == Transportation.submarine ? const Color.fromARGB(60, 195, 213, 165) : null,
                  child: ListTile(
                    title: const Text('opcion 4'),
                    onTap: () => setState(() {
                      selectedTransportation = Transportation.submarine;
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),

        CheckboxListTile(
          title: const Text('Checkbox 1'),
          value: wantsBreakfast,
          side: const BorderSide(color:Colors.black38),
          activeColor: const Color.fromARGB(150, 219, 239, 190),
          checkColor: const Color.fromARGB(255, 182, 213, 134),
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Checkbox 2'),
          value: wantsLunch, 
          side: const BorderSide(color:Colors.black38),
          activeColor: const Color.fromARGB(150, 219, 239, 190),
          checkColor: const Color.fromARGB(255, 182, 213, 134),
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Checkbox 3'),
          value: wantsDinner,
          side: const BorderSide(color:Colors.black38),
          activeColor: const Color.fromARGB(150, 219, 239, 190),
          checkColor: const Color.fromARGB(255, 182, 213, 134),
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),

      ],
    );
  }
}