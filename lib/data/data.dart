import 'dart:math';

import '../model/category_model.dart';
import '../model/expense_model.dart';

final rand = Random();

final List<double> weeklySpending = [
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
];

_generateExpenses() {
  List<Expense> expenses = [
    Expense(name: 'Item 1',cost: rand.nextDouble() * 90),
    Expense(name: 'Item 2',cost: rand.nextDouble() * 90),
    Expense(name: 'Item 3',cost: rand.nextDouble() * 90),
    Expense(name: 'Item 4',cost: rand.nextDouble() * 90),
    Expense(name: 'Item 5',cost: rand.nextDouble() * 90),
    Expense(name: 'Item 6',cost: rand.nextDouble() * 90),
  ];
  return expenses;
}

List<Category> categories = [
  Category(name: 'Food', maxAmount: 750, expenses: _generateExpenses()),
  Category(name: 'Clothing', maxAmount: 500, expenses: _generateExpenses()),
  Category(name: 'Utilities', maxAmount: 600, expenses: _generateExpenses()),
  Category(name: 'Entertainment', maxAmount: 370, expenses: _generateExpenses()),
  Category(name: 'Transportation', maxAmount: 500, expenses: _generateExpenses()),
  Category(name: 'Housing', maxAmount: 1000, expenses: _generateExpenses()),
];
