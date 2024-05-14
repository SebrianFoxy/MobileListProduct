import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list_product/presenter/login/bloc/login_bloc.dart';
import 'package:list_product/presenter/story/bloc/story_bloc.dart';
import 'package:list_product/secure_storage/secure_storage.dart';
import 'package:intl/intl.dart';
import '../../../core/ui/ui.dart';


class StoryPage extends StatelessWidget {
  const StoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<StoryBloc>().add(const StoryEvent.loadingStoryProducts());
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
            BlocBuilder<StoryBloc, StoryState>(
              builder: (context, state) {
                if (state.isLoadingStoryList) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                else {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: state.myStoryProducts.length,
                      itemBuilder: (context, index) {
                        DateTime createdAt = DateTime.parse(state.myStoryProducts[index]['created_at']);
                        String formattedDate = DateFormat.yMMMMd('ru').format(createdAt);
                        return OrderButton(
                          text: state.myStoryProducts[index]['list_name'],
                          data: formattedDate.toString(),
                          onPressed: () {
                            Navigator.popAndPushNamed(context, '/order_story', arguments: {'id': state.myStoryProducts[index]['list_name_id'], 'list_name': state.myStoryProducts[index]['list_name']});
                          },
                        );
                      },
                    ),
                  );
                }
              },
            ),
          ],
        ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
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
          if (index == 0) {
            Navigator.pushNamed(context, '/list');
          }
        },
      ),
    );
  }
}
