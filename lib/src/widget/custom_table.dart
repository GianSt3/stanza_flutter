import 'package:flutter/material.dart';

class CustomTable extends StatelessWidget {
  final List<String> columnNames;
  final List<List<Widget>> rowValues;

  const CustomTable(
      {super.key, required this.columnNames, required this.rowValues});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: columnNames
          .map((name) => DataColumn(
                label: Expanded(
                  child: Text(
                    name,
                    style: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ))
          .toList(),
      rows: rowValues
          .map((rows) =>
              DataRow(cells: rows.map((row) => DataCell(row)).toList()))
          .toList(),
    );
  }
}
