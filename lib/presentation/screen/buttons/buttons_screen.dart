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
        
                SizedBox(
                  width: 143,
                  height: 50,
                  child:  ElevatedButton(
                    onPressed: null,
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 131, 178, 59)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                        )
                      )
                    ),
                    child: const Text(
                      'Normal',
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
                      backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 151, 204, 69)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
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
                        borderRadius: BorderRadius.circular(10)
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

                SizedBox(
                  width: 143,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: (){}, 
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 255, 255, 255)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      side: const MaterialStatePropertyAll(
                        BorderSide(
                          color: Color.fromARGB(255, 136, 177, 73)
                        )
                      )
                    ),
                    child: const Text(
                      'Normal',
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
                      backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 219, 239, 190)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
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
                          borderRadius: BorderRadius.circular(10)
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

                SizedBox(
                  width: 75,
                  height: 75,
                  child: IconButton(
                    onPressed: (){}, 
                    icon: const Icon( Icons.home_filled, size: 30),
                    style: ButtonStyle(
                      iconColor: const MaterialStatePropertyAll(Color.fromARGB(255, 216, 70, 15)),
                      backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(200, 251, 244, 244)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
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
                    icon: const Icon( Icons.history, size: 30),
                    style: ButtonStyle(
                      iconColor: const MaterialStatePropertyAll(Color.fromARGB(255, 21, 50, 89)),
                      backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(200, 242, 244, 252)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
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
                          borderRadius: BorderRadius.circular(10)
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
                          borderRadius: BorderRadius.circular(10)
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
                          borderRadius: BorderRadius.circular(10)
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


class CustomButton extends StatelessWidget {

  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;


    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric( horizontal: 20, vertical: 10),
            child: Text('Hola Mundo', style: TextStyle(color: Colors.white))
          ),
        ),
      ),
    );
  }
}