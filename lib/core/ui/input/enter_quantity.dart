part of '../ui.dart';

class EnterQuantity extends StatelessWidget {
  final TextFormField? textFormField;
  final void Function(String) onChanged;
  final String? labelText;
  final String? hintText;
  final String? errorText;

  const EnterQuantity(
      {
        super.key,
        this.textFormField,
        this.errorText,
        required this.onChanged,
        this.labelText,
        this.hintText
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 40,
        width: 100,
        child: TextFormField(
          keyboardType: TextInputType.number,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            hintText: "Кол-во",
            errorText: errorText,
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
