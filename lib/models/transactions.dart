import 'dart:ffi';

class Transaction {
  final double type;
  final String title;
  final String desc;
  final double amount;

  Transaction(this.type, this.title, this.desc, this.amount);
}

List<Transaction> transactions = [
  Transaction(0, "Sent", "Sending Payments to Clients", 150),
  Transaction(1, "Recieve", "Receive Salary", 250),
  Transaction(2, "Loan", "Loan for the Car", 400),
];
