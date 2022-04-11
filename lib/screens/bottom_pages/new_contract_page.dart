import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilding/bloc/container_bloc.dart';
import 'package:ibilding/constant/color_size_page.dart';
import 'package:ibilding/screens/create_folder/newContacts.dart';
import 'package:ibilding/screens/create_folder/newInvoice.dart';

class NewContractPage extends StatelessWidget {
 NewContractPage({ Key? key }) : super(key: key);
  final List _pages = [NewContactPage(),NewInvoicePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.black,
      body: _pages[context.watch<ContainerCubit>().createIndex],
    );
  }
}