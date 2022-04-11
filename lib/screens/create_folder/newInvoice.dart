import 'package:flutter/material.dart';
import 'package:ibilding/constant/size_config.dart';
import 'package:ibilding/core/widgets/text_form_field_page.dart';

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
              TextForm(
                name: "Xizmat nomi",
              ),
              TextForm(
                name: "Invoice summasi",
              ),
              TextForm(name: "status of invoice"),
            ],
          ),
    );
  }
}
