import 'package:flutter/material.dart';

class DateTimePickerWidget extends StatefulWidget {
  const DateTimePickerWidget({super.key});

  @override
  State<DateTimePickerWidget> createState() => _DateTimePickerWidgetState();
}

class _DateTimePickerWidgetState extends State<DateTimePickerWidget> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date & Time Picker"),
        backgroundColor: const Color.fromARGB(255, 212, 196, 244),
      ),
      body: Center( // ⬅️ supaya semua isi di tengah
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // ⬅️ vertikal tengah
          crossAxisAlignment: CrossAxisAlignment.center, // ⬅️ horizontal tengah
          children: <Widget>[
            ElevatedButton(
              onPressed: () => _selectDate(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 174, 165, 189),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text("Pilih Tanggal"),
            ),
            const SizedBox(height: 10),
            Text(
              "Tanggal: ${selectedDate != null ? selectedDate.toString().split(' ')[0] : 'Belum dipilih'}",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => _selectTime(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 174, 165, 189),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text("Pilih Waktu"),
            ),
            const SizedBox(height: 10),
            Text(
              "Waktu: ${selectedTime != null ? selectedTime!.format(context) : 'Belum dipilih'}",
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
