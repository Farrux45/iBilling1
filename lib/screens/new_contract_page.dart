import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilding/constant/color_size_page.dart';

class NewContractPage extends StatelessWidget {
 NewContractPage({ Key? key }) : super(key: key);
  final List _pages = [NewCreateContact(),NewCreateInvoice()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.black,
      body: _pages[context.watch<ContBloc>().createIndex],
    );
  }
}