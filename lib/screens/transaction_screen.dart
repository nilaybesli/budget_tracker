import 'package:budget_tracker/widgets/category_list.dart';
import 'package:budget_tracker/widgets/tab_bar_view.dart';
import 'package:budget_tracker/widgets/time_line_month.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  var category = "All";
  var monthyear;

  @override
  void initState() {
    super.initState();
    DateTime now = DateTime.now();
    setState(() {
      monthyear = DateFormat('MMM y').format(now);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expansive"),
      ),
      body: Column(
        children: [
          TimeLineMonth(
            onChanged: (String? value) {
              if (value != null) {
                setState(() {
                  monthyear = value;

                });
              }
            },
          ),
          CategoryList(onChanged: (String? value) {
            if (value != null) {
              setState(() {
                category = value;

              });
            }
          }),
          TypeTabBar(
            category: category,
            monthyear: monthyear,
          ),
        ],
      ),
    );
  }
}
