import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_product/presenter/list/bloc/list_bloc.dart';
import 'package:list_product/presenter/order/pages/order.dart';
import 'package:list_product/secure_storage/secure_storage.dart';
import 'package:intl/intl.dart';
import '../../../core/ui/ui.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ListBloc>().add(const ListEvent.loadingList());
    return Scaffold(
        body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LogoIconButton(),
                Row(
                  children: [
                    AddPersonButton(),
                    MenuButton(),
                  ],
                ),
              ],
            ),
          ),
        const Divider(
          height: 3,
          color: Colors.black,
          thickness: 1,
        ),
        BlocBuilder<ListBloc, ListState>(
          builder: (context, state) {
            if (state.isLoadingList) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            else {
              return Expanded(
                child: ListView.builder(
                  itemCount: state.myListProduct.length,
                  itemBuilder: (context, index) {
                    DateTime createdAt = DateTime.parse(state.myListProduct[index]['created_at']);
                    String formattedDate = DateFormat.yMMMMd('ru').format(createdAt);
                    String id = state.myListProduct[index]['id'].toString();
                    String listName = state.myListProduct[index]['list_name'];
                    return OrderButton(
                        text: state.myListProduct[index]['list_name'],
                        data: formattedDate.toString(),
                      onPressed: () {
                          Navigator.popAndPushNamed(context, '/order', arguments: {'id': id, 'list_name': listName});
                      },
                    );
                  },
                ),
              );
            }
          },
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: ListCreateDialog(),
        ),
      ],
    ),
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'List',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'Story',
        ),
      ],
      onTap: (index) {
        if (index == 1) {
          Navigator.pushNamed(context, '/story');
        }
      },
    ),
    );
  }
}
