import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {

    final border = OutlineInputBorder(
      borderSide: const BorderSide(
          width: 2.0,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignOutside
      ),
      borderRadius: BorderRadius.circular(5),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('0',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 45,
              color: Colors.white60,
            ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true
                ),
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  focusedBorder: border,
                  enabledBorder: border,
                  hintText:'Enter amount in USD',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  filled: true,
                  fillColor: Colors.white60,
                  prefixIconColor: Colors.black,
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                ),
              ),
            )
          ]
        )
      ),
    );
  }
}
