import 'package:flutter/material.dart';
import 'package:ibilding/constant/size_config.dart';

class NewInvoicePage extends StatelessWidget {
  const NewInvoicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(16), vertical: getHeight(20.0),
          
          ),
          child: Column(
            children: [
              TextFormContainer(
                name: "Xizmat nomi",
              ),
              TextFormContainer(
                name: "Invoice summasi",
              ),
              TextFormContainer(name: "status of invoice"),
            ],
          ),
    );
  }
}
