part of '../ui.dart';

class OrderCreateDialog extends StatelessWidget {
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final void Function(String)? onChanged;

  OrderCreateDialog({Key? key, this.backgroundColor, this.onPressed, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AddShopButton(
      onPressed: () => showGeneralDialog<String>(
        barrierLabel: "showGeneralDialog",
        barrierDismissible: true,
        barrierColor: Colors.black.withOpacity(0.6),
        transitionDuration: const Duration(milliseconds: 400),
        context: context,
        pageBuilder: (context, _, __) {
          return _DialogContents(
            backgroundColor: backgroundColor,
            onChanged: onChanged,
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

class _DialogContents extends StatelessWidget {
  final Color? backgroundColor;
  final void Function(String)? onChanged;

  const _DialogContents({Key? key, this.backgroundColor, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
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
              ),
            ),
            child: Material(
              child: Table(
                border: TableBorder.all(color: Colors.black),
                children: [
                  TableRow(
                    children: [
                      Center(child: EnterProduct(onChanged: (value) {
                        context.read<OrderBloc>().add(OrderEvent.addProductNameChange(addProductNameChange: value));
                      })),
                      Center(child: EnterQuantity(onChanged: (value) {
                        context.read<OrderBloc>().add(OrderEvent.addProductCountChange(addProductCountChange: value));
                      })),
                      Center(
                        child: DoneProductButton(
                          onPressed: () {
                            context.read<OrderBloc>().add(const OrderEvent.addProduct());
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
