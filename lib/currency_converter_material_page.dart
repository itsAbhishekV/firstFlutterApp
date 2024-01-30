import 'package:flutter/material.dart';



class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState()  => _CurrencyConverterMaterialPage();
}

class _CurrencyConverterMaterialPage extends State<CurrencyConverterMaterialPage>{

  double result = 0;

  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        color: Colors.black,
      ),
      borderRadius: BorderRadius.circular(10),
    );

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('Currency Converter',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 0,
        ),
        backgroundColor: Colors.blueGrey,
        body: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                      style: const TextStyle(
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                    const SizedBox(height: 10.0,),
                    TextField(
                      controller: textEditingController,
                      keyboardType: const TextInputType.numberWithOptions(
                          decimal: true
                      ),
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Please enter amount in USD',
                        hintStyle: const TextStyle(
                            color: Colors.black26,
                            fontSize: 18
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: border,
                        enabledBorder: border,
                        prefixIcon: const Icon(Icons.monetization_on_outlined),
                        prefixIconColor: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10.0,),
                    TextButton(onPressed: () {
                      setState(() {
                        result = double.parse(textEditingController.text) * 80;
                      });
                      textEditingController.clear();
                    },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                            )
                        ),
                        child: const Text('Convert!'))
                  ]
              ),
            )
        )
    );
  }

}



// class CurrencyConverterMaterialPage extends StatelessWidget {
//   const CurrencyConverterMaterialPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//
//     final border = OutlineInputBorder(
//       borderSide: const BorderSide(
//           width: 2.0,
//           style: BorderStyle.solid,
//           strokeAlign: BorderSide.strokeAlignOutside
//       ),
//       borderRadius: BorderRadius.circular(5),
//     );
//
//     return Scaffold(
//       backgroundColor: Colors.blueGrey,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text('0',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 45,
//               color: Colors.white60,
//             ),
//             ),
//             Container(
//               padding: const EdgeInsets.all(10.0),
//               child: TextField(
//                 keyboardType: const TextInputType.numberWithOptions(
//                   decimal: true
//                 ),
//                 style: const TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.w500,
//                 ),
//                 decoration: InputDecoration(
//                   focusedBorder: border,
//                   enabledBorder: border,
//                   hintText:'Enter amount in USD',
//                   hintStyle: const TextStyle(
//                     color: Colors.black,
//                   ),
//                   filled: true,
//                   fillColor: Colors.white60,
//                   prefixIconColor: Colors.black,
//                   prefixIcon: const Icon(Icons.monetization_on_outlined),
//                 ),
//               ),
//             )
//           ]
//         )
//       ),
//     );
//   }
// }
