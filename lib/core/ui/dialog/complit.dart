part of '../ui.dart';

class CompleteDialog extends StatelessWidget {
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final void Function(String)? onChanged;

  const CompleteDialog({super.key, this.backgroundColor, this.onPressed, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return DoneButton(
      onPressed: () => showGeneralDialog<String>(
        barrierLabel: "showGeneralDialog",
        barrierDismissible: true,
        barrierColor: Colors.black.withOpacity(0.6),
        transitionDuration: const Duration(milliseconds: 400),
        context: context,
        pageBuilder: (context, _, __) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: _DialogContent(
              backgroundColor: backgroundColor,
              onChanged: onChanged,
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
      ),
    );
  }
}

class _DialogContent extends StatelessWidget {
  final Color? backgroundColor;
  final void Function(String)? onChanged;

  const _DialogContent({super.key, this.backgroundColor, this.onChanged});


  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: BlocListener<OrderBloc, OrderState>(
        listener: (context, state){
          if (state.finishList){
            Navigator.pop(context);
            Navigator.popAndPushNamed(context, '/list');
          }
        },
        child: SingleChildScrollView(
        reverse: true,
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: IntrinsicHeight(
          child: Container(
            width: double.maxFinite,
            clipBehavior: Clip.antiAlias,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: backgroundColor ?? Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
            child: Material(
                child: Column(
                  children: [
                    TextWidget(
                        text: 'Завершить список',
                        color: Colors.black,
                        fontSize: 20),
                    const SizedBox(height: 5,),
                    const Divider(
                      indent: 5,
                      endIndent: 5,
                      height: 2,
                      color: Colors.black,
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: TextWidget(
                                text: 'Нет', color: Colors.black, fontSize: 14)),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightGreen[400],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: () {
                              context.read<OrderBloc>().add(const OrderEvent.finishList());
                            },
                            child: TextWidget(
                                text: 'Да', color: Colors.black, fontSize: 14))
                      ],
                    )
                  ],
                )),
          ),
        ),
      ),
      ),
    );
  }
}
