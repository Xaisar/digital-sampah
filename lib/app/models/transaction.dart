class Transaction {
  final int id;
  final String to;
  final String amount;
  final String date;
  final String description;

  Transaction(
    this.id,
    this.to,
    this.amount,
    this.date,
    this.description,
  );
}

final List<Transaction> transactions = [
  Transaction(
    1,
    'Penambahan Saldo',
    '350.000',
    '30 Juli 2022 12:13',
    'sukses',
  ),
  Transaction(
    2,
    'Penambahan Saldo',
    '950.000',
    '12 Juli 2023 12:13',
    'sukses',
  ),
  Transaction(
    3,
    'Penambahan Saldo',
    '440.000',
    '13 Juli 2022 12:13',
    'sukses',
  ),
  Transaction(
    4,
    'Penambahan Saldo',
    '4.500.000',
    '10 Juli 2022 12:13',
    'sukses',
  ),
  Transaction(
    5,
    'Penambahan Saldo',
    '2.000.000',
    '20 Juli 2022 12:13',
    'sukses',
  ),
  Transaction(
    6,
    'Penambahan Saldo',
    '2.000.000',
    '20 Juli 2022 12:13',
    'sukses',
  ),
  Transaction(
    7,
   'Penambahan Saldo',
    '2.000.000',
    '20 Juli 2022 12:13',
    'sukses',
  ),
  Transaction(
    8,
   'Penambahan Saldo',
    '2.000.000',
    '20 Juli 2022 12:13',
    'sukses',
  ),
  Transaction(
    9,
    'Penambahan Saldo',
    '2.000.000',
    '20 Juli 2022 12:13',
    'sukses',
  ),
  Transaction(
    10,
    'Penambahan Saldo',
    '2.000.000',
    '20 Juli 2022 12:13',
    'sukses',
  ),
];
