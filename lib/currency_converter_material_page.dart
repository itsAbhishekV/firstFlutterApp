import 'package:flutter/material.dart';


class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

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
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('0',
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
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
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(onPressed: () =>
                  debugPrint('button clicked'),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ),
                  child: const Text('Convert!')),
            )
          ]
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
