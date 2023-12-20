import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {

  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Wrap(
              spacing: 10,
              alignment: WrapAlignment.center,
              children: [
        
                const CustomElevatedButton(text: 'Normal', backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 131, 178, 59))),
        
                SizedBox(
                  width: 143,
                  height: 50,
                  child:  ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 151, 204, 69)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                        )
                      )
                    ),
                    child: const Text(
                      'Hover',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255)
                      ),
                    ),
                  )
                ),
        
                SizedBox(
                  width: 143,
                  height: 50,
                  child:  ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(200, 178, 199, 146)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                        )
                      )
                    ),
                    child: const Text(
                      'Disabled',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255)
                      ),
                    ),
                  )
                ),
              ],
            ),
          ),
        ),

        SizedBox(
          width: double.infinity,
          child: Padding (
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Wrap(
              spacing: 10,
              alignment: WrapAlignment.center,
              children: [

                const CustomOutlinedButton(text: "Normal", backgroundColor: MaterialStatePropertyAll(Colors.white)),
        
                SizedBox(
                  width: 143,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: (){}, 
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 219, 239, 190)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),
                      side: const MaterialStatePropertyAll(
                        BorderSide(
                          color: Color.fromARGB(255, 195, 213, 167)
                        )
                      )
                    ),
                    child: const Text(
                      'Hover',
                      style: TextStyle(
                        color: Color.fromARGB(255, 131, 178, 59)  
                      ),
                    ),
                  ),
                ),
        
                SizedBox(
                  width: 143,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: (){}, 
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(100, 255, 255, 255)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),
                      side: const MaterialStatePropertyAll(
                        BorderSide(
                          color: Color.fromARGB(100, 131, 178, 59)
                        )
                      )
                    ),
                    child: const Text(
                      'Disabled',
                      style: TextStyle(
                        color: Color.fromARGB(150, 131, 178, 59)  
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(
          width: double.infinity,
          child: Padding (
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Wrap(
              spacing: 10,
              alignment: WrapAlignment.center,
              children: [

                const CustomIconButton(
                  icon: Icon(Icons.home_filled), 
                  iconColor: MaterialStatePropertyAll(Color.fromARGB(255, 216, 70, 15)),
                  backgroundColor: MaterialStatePropertyAll(Color.fromARGB(200, 251, 244, 244)),
                ),

                SizedBox(
                  width: 75,
                  height: 75,
                  child: IconButton(
                    onPressed: (){}, 
                    icon: const Icon( Icons.history, size: 30),
                    style: ButtonStyle(
                      iconColor: const MaterialStatePropertyAll(Color.fromARGB(255, 21, 50, 89)),
                      backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(200, 242, 244, 252)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: 75,
                  height: 75,
                  child: IconButton(
                    onPressed: (){}, 
                    icon: const Icon( Icons.person, size: 30),
                    style: ButtonStyle(
                      iconColor: const MaterialStatePropertyAll(Color.fromARGB(255, 217, 142, 4)),
                      backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(200, 254, 241, 233)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: 75,
                  height: 75,
                  child: IconButton(
                    onPressed: (){}, 
                    icon: const Icon( Icons.notifications, size: 30),
                    style: ButtonStyle(
                      iconColor: const MaterialStatePropertyAll(Color.fromARGB(255, 131, 178, 59)),
                      backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(200, 239, 252, 238)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: 75,
                  height: 75,
                  child: IconButton(
                    onPressed: (){}, 
                    icon: const Icon( Icons.shopping_cart, size: 30),
                    style: ButtonStyle(
                      iconColor: const MaterialStatePropertyAll(Color.fromARGB(255, 131, 178, 59)),
                      backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(200, 219, 239, 190)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        )
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
        )
      ],
    );
  }
}


class CustomElevatedButton extends StatelessWidget {

  final String text;
  final Function? onPressed;
  final double width;
  final double height;
  final MaterialStateProperty<Color?> backgroundColor;
  final Color textColor;

  const CustomElevatedButton({
    super.key,
    required this.text,
    this.width = 143,
    this.height = 50,
    this.backgroundColor = const MaterialStatePropertyAll(Color.fromARGB(255, 151, 204, 69)),

    this.textColor = const Color.fromARGB(255, 255, 255, 255),
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: width,
      height: height,
      child:  ElevatedButton(
        onPressed: onPressed as void Function()?,
        style: ButtonStyle(
          backgroundColor: backgroundColor,
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
            )
          )
        ),
        child:  Text(
          text,
          style: TextStyle(
            color: textColor
          ),
        ),
      )
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {

  final String text;
  final double width;
  final double height;
  final MaterialStateProperty<Color?>? backgroundColor;
  final Color borderSideColor;
  final Color textColor;
  final Function? onPressed;

  const CustomOutlinedButton({
    super.key,
    required this.text,
    this.width = 143,
    this.height = 50,
    this.backgroundColor,
    this.borderSideColor = const Color.fromARGB(255, 131, 178, 59),
    this.textColor = const Color.fromARGB(255, 131, 178, 59),
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed as void Function()?,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.background),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            )
          ),
          side: MaterialStatePropertyAll(
            BorderSide(
              width: 1.5,
              color: borderSideColor,
            )
          ),
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered) || 
                  (states.contains(MaterialState.focused) ||
                  (states.contains(MaterialState.pressed))))
                return Color.fromARGB(255, 151, 204, 69);
              return null; 
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered) ||
                  states.contains(MaterialState.focused) ||
                  states.contains(MaterialState.pressed))
                return Colors.white;
              return textColor; 
            },
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );

  }
}

class CustomOutlinedButtonWithIcon extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final MaterialStateProperty<Color?> backgroundColor;
  final Color borderSideColor;
  final Color textColor;
  final Function? onPressed;
  final Icon icon;

  const CustomOutlinedButtonWithIcon({
    Key? key,
    required this.text,
    required this.icon,
    this.width = 143,
    this.height = 50,
    this.backgroundColor = const MaterialStatePropertyAll(Colors.white),
    this.borderSideColor = const Color.fromARGB(255, 131, 178, 59),
    this.textColor = const Color.fromARGB(255, 131, 178, 59),
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed as void Function()?,
        style: ButtonStyle(
          backgroundColor:  MaterialStatePropertyAll(Theme.of(context).colorScheme.background),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          side: MaterialStatePropertyAll(
            BorderSide(
              width: 1.5,
              color: borderSideColor,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Spacer(),
            Text(text, style: TextStyle(color: textColor)),
          ],
        ),
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {

  final Icon icon;
  final double width;
  final double height;
  final Function? onPressed;
  final MaterialStateProperty<Color?> iconColor;
  final MaterialStateProperty<Color?> backgroundColor;
  

  const CustomIconButton({
    super.key,
    required this.icon,
    this.width = 50,
    this.height = 50,
    required this.iconColor,
    required this.backgroundColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: IconButton(
        onPressed: onPressed as void Function()?,
        icon: icon,
        style: ButtonStyle(
          iconColor: iconColor,
          backgroundColor: backgroundColor,
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            )
          ),
        ),
      ),
    );
  }
}