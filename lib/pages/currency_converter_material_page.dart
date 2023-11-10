import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({Key? key}) : super(key: key);

  @override
  _CurrencyConverterMaterialPageState createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
        // Color(0xaarrggbb)
        borderSide: BorderSide(
            // color: Colors.red,
            width: 1,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignOutside),
        borderRadius: BorderRadius.all(Radius.circular(10)));

    return Scaffold(
        backgroundColor: const Color.fromRGBO(48, 109, 215, 1),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                color: Colors.black,
                child: const Text(
                  'Hello world!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const TextField(
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                    helperText: 'Please enter the amount in USD',
                    helperStyle: TextStyle(color: Colors.white60),
                    // label: 'What?',
                    // hintText: Text('Please enter the amount in USD')
                    prefixIcon: Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.black87,
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: border,
                    enabledBorder: border,
                    // enabledBorder: UnderlineInputBorder(),
                  ),
                  // keyboardType: TextInputType.number,
                  keyboardType: TextInputType.numberWithOptions(
                    decimal: true,
                    // signed: true,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  debugPrint("button clicked");
                  // if (kDebugMode) {
                  //   print("button clicked");
                  // }
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.amber),
                  foregroundColor: MaterialStatePropertyAll(Colors.black87),
                  fixedSize:
                      MaterialStatePropertyAll(Size(double.infinity, 50)),
                ),
                child: const Text('Convent'),
              )
            ])));
  }
}
