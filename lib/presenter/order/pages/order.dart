import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_product/presenter/login/bloc/login_bloc.dart';
import 'package:list_product/presenter/order/bloc/order_bloc.dart';
import 'package:list_product/secure_storage/secure_storage.dart';

import '../../../core/ui/ui.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final id =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    context.read<OrderBloc>().add(OrderEvent.getListName(
        listName: id['list_name'].toString(),
        listNamedId: id['id'].toString()));
    context.read<OrderBloc>().add(const OrderEvent.loadingProducts());
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidget(
                text: id['list_name'].toString(),
                color: Colors.black,
                fontSize: 30),
            MenuButton(),
          ],
        ),
      ),
      body: Column(
        children: [
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            border: TableBorder.all(color: Colors.black54),
            children: [
              TableRow(
                  decoration: BoxDecoration(color: Colors.greenAccent),
                  children: [
                    Center(
                        child: TextWidget(
                            text: 'Продукты',
                            color: Colors.black,
                            fontSize: 20)),
                    Center(
                        child: TextWidget(
                            text: 'Кол-во', color: Colors.black, fontSize: 20)),
                  ]),
            ],
          ),
          BlocBuilder<OrderBloc, OrderState>(builder: (context, state) {
            if (state.isLoadingProducts) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return Expanded(
                child: ListView.builder(
                  itemCount: state.myProducts.length,
                  itemBuilder: (context, index) {
                    return Table(
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      border: TableBorder.all(color: Colors.black54),
                      children: [
                        TableRow(children: [
                          Center(
                              child: TextWidget(
                                  text: state.myProducts[index]['product']
                                      .toString(),
                                  color: Colors.black,
                                  fontSize: 18)),
                          Center(
                              child: TextWidget(
                                  text: state.myProducts[index]['count']
                                      .toString(),
                                  color: Colors.black,
                                  fontSize: 18)),
                          //Center(child: EnterCost(onChanged: (value) {})),
                        ]),
                      ],
                    );
                  },
                ),
              );
            }
          }),
          Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OrderCreateDialog(),
                  CompleteDialog(),
                ],
              )),
        ],
      ),
    );
  }
}
