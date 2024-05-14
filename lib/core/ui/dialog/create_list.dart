part of '../ui.dart';

class ListCreateDialog extends StatelessWidget {
  final Color? bacgroundcolor;
  final VoidCallback? onPressed;
  final void Function(String)? onChanged;
  final now = DateTime.now();

  ListCreateDialog(
      {super.key, this.bacgroundcolor, this.onPressed, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return AddOrderButton(
        onPressed: () => showGeneralDialog(
              barrierLabel: "showGeneralDialog",
              barrierDismissible: true,
              barrierColor: Colors.black.withOpacity(0.6),
              transitionDuration: const Duration(milliseconds: 400),
              context: context,
              pageBuilder: (context, _, __) {
                context
                    .read<ListBloc>()
                    .add(const ListEvent.listNameChange(listName: ''));
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: _buildDialogContent(),
                  ),
                );
              },
              transitionBuilder: (_, animation1, __, child) {
                return SlideTransition(
                  position: Tween(
                    begin: const Offset(0, 1),
                    end: const Offset(0, 0),
                  ).animate(animation1),
                  child: child,
                );
              },
            ));
  }

  Widget _buildDialogContent() {
    return IntrinsicHeight(
      child: Container(
        width: double.maxFinite,
        clipBehavior: Clip.antiAlias,
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: Material(
          child: Column(
            children: [
              const SizedBox(height: 16),
              _buildImage(),
              const SizedBox(height: 8),
              _buildContinueText(),
              const SizedBox(height: 16),
              _buildEmapleText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextWidget(text: 'Создать список ', color: Colors.black, fontSize: 20),
      ],
    );
  }

  Widget _buildContinueText() {
    return BlocBuilder<ListBloc, ListState>(
      builder: (context, state) {
        return Container(
          height: 100,
          child: Column(
            children: [
              const Divider(
                indent: 5,
                endIndent: 5,
                height: 2,
                color: Colors.black,
                thickness: 1,
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                  height: 50,
                  child: EnterNameList(
                      controller: state.listNameController,
                      errorText: state.listNameError != null ? state.listNameError : null,
                      onChanged: (value) {
                        context
                            .read<ListBloc>()
                            .add(ListEvent.listNameChange(listName: value));
                      },
                      labelText: 'Введите имя списка',
                      hintText: 'Аптека')),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  TextWidget(
                      text: 'Дата создания: ',
                      color: Colors.black,
                      fontSize: 15),
                  TextWidget(
                      text: DateFormat('dd-MM-yyyy').format(DateTime.now()),
                      color: Colors.black,
                      fontSize: 15),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildEmapleText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CreatButton(
          onPressed: onPressed,
          text: "Создать",
        ),
      ],
    );
  }
}
