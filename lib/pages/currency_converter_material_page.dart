import "package:flutter/material.dart";
import 'package:flutter/services.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({Key? key}) : super(key: key);

  @override
  _CurrencyConverterMaterialPageState createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    print("initState");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant CurrencyConverterMaterialPage oldWidget) {
    print(didUpdateWidget);
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    textEditingController.dispose();
    print('dispose');
    super.dispose();
  }

  void _convert() {
    // debugPrint(textEditingController.text);
    // print(double.parse(textEditingController.text) * 81);
    result = double.parse(textEditingController.text) * 12;
    setState(() {});
    // setState(() {
    //   result = double.parse(textEditingController.text) * 12;
    // });
  }

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

    debugPrint("build");

    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0, // shadow
          title: const Text(
            "Currency Converter",
            textAlign: TextAlign.left,
          ),
          // actions: [Text("Hello!")],
        ),
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
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(color: Colors.black87),
                  decoration: const InputDecoration(
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
                  // keyboardType: const TextInputType.numberWithOptions(
                  //   decimal: true,
                  //   // signed: true,
                  // ),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              TextButton(
                onPressed: _convert,
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.amber),
                  foregroundColor: MaterialStatePropertyAll(Colors.black87),
                  fixedSize:
                      MaterialStatePropertyAll(Size(double.infinity, 50)),
                ),
                child: const Text('Convert'),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                    onPressed: _convert,
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text('Convert')),
              ),
            ])));
  }
}
