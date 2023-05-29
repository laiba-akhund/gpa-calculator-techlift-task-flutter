import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final String course;
  final ValueChanged<double> onChange;

  const CustomTextField({Key? key, required this.course, required this.onChange}) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextEditingController _controller = TextEditingController();

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: 200,
        child: TextField(
          controller: _controller,
          keyboardType: TextInputType.number,
          onChanged: (value) {
      final parsedValue = double.tryParse(value);
      final course = widget.course;
      if (parsedValue != null) {
        widget.onChange(parsedValue);
      }
      if(course != null){
        course;
      }

      },
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(
                RegExp(r'[0-9]')),
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(11),
              borderSide: const BorderSide(
                color: Colors.cyan,
                width: 2,
              ),
            ),
          ),
          style: TextStyle(
              color: Colors.pinkAccent.shade100,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
