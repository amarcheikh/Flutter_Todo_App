import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../Core/Constants/colors.dart';
import '../../../Core/providers/task_provider.dart';
import '../../custom_widgets/cusom_buttons.dart';
import '../../custom_widgets/custom_snackbars.dart';
import '../../custom_widgets/custom_textfield.dart';


class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(builder: (context, taskProvider, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Adding  Task Screen'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/add.png',
                    height: 200,
                  ),
                ),
                CustomTextField(
                  prefixIcon: const Icon(
                    Icons.title,
                    color: kPrimaryColor,
                  ),
                  controller: titleController,
                  hintText: 'Title',
                ),
                const SizedBox(height: 15),
                CustomTextField(
                  prefixIcon: const Icon(
                    Icons.description,
                    color: kPrimaryColor,
                  ),
                  controller: descriptionController,
                  hintText: 'Description...',
                ),
                const SizedBox(height: 10.0),
                CustomTextField(
                  readOnly: true,
                  prefixIcon: const Icon(
                    Icons.calendar_today,
                    color: kPrimaryColor,
                  ),
                  controller: TextEditingController(
                      text: taskProvider.selectedDueDate != null
                          ? DateFormat('yyyy-MM-dd')
                              .format(taskProvider.selectedDueDate!)
                          : 'Date de fin'),
                  hintText: 'Date de fin',
                  onTap: () {
                    taskProvider.selectDate(context);
                  },
                ),
                const SizedBox(height: 10.0),
                const SizedBox(height: 10.0),
                const SizedBox(height: 40.0),
                MyButtonLong(
                    name: 'Add Task',
                    onTap: () {
                      if (titleController.text.isEmpty) {
                        return CustomSnackBar.showError('Please provide title');
                      }
                      taskProvider.addTask(titleController.text,
                          descriptionController.text, context);
                    }),
              ],
            ),
          ),
        ),
      );
    });
  }
}
