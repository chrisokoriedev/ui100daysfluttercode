import 'package:flutter/material.dart';
import 'package:helloworld/reuseable_component/widget.dart';
import 'package:flutter_native_contact_picker/flutter_native_contact_picker.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({Key? key}) : super(key: key);

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  final FlutterContactPicker _contactPicker = FlutterContactPicker();

  late Contact _contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Add Expense',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            heightsizeCutsom(20),
            TextFormField(),
            TextFormField(),
            Row(
              children: [
                InkWell(
                    onTap: () async {
                      Contact? contact = await _contactPicker.selectContact();
                      setState(() {
                        _contact = contact!;
                      });
                    },
                    child: Icon(Icons.import_contacts_sharp)),
                SizedBox(width: 280, child: TextFormField()),
              ],
            ),
            InkWell(
                onTap: () => showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2040)),
                child: TextFormField(
                  enabled: false,
                )),
          ],
        ),
      ),
    );
  }
}
