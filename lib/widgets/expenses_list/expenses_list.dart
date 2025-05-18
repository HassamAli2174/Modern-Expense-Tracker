import 'package:expense_tracker_app/model/expense.dart';
import 'package:expense_tracker_app/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenseList,
    required this.onRemoveExpense,
  });
  final List<Expense> expenseList;
  final void Function(Expense expense) onRemoveExpense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenseList.length,
      itemBuilder:
          (BuildContext context, int index) => Dismissible(
            background: Container(
              color: Theme.of(context).colorScheme.error.withOpacity(0.75),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            ),
            key: ValueKey(expenseList[index]),
            onDismissed: (direction) {
              onRemoveExpense(expenseList[index]);
            },
            child: ExpensesItem(expenseList[index]),
          ),
    );
  }
}
