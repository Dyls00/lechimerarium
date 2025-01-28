import 'package:flutter/material.dart';

class Table extends StatelessWidget {
  const Table({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      sortAscending: true,
      columns: const <DataColumn>[
        DataColumn(
          label: Expanded(
            child: Text(
              'Name',
              style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Age',
              style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Role',
              style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
            ),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          selected: true,
          cells: <DataCell>[
            DataCell(Text('Anas', style: TextStyle(color: Colors.white),)),
            DataCell(Text('26', style: TextStyle(color: Colors.white),), showEditIcon: true),
            DataCell(Text('Student', style: TextStyle(color: Colors.white),)),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Janine', style: TextStyle(color: Colors.white),)),
            DataCell(Text('43', style: TextStyle(color: Colors.white),)),
            DataCell(Text('Professor', style: TextStyle(color: Colors.white),)),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('William', style: TextStyle(color: Colors.white),)),
            DataCell(Text('27', style: TextStyle(color: Colors.white),)),
            DataCell(Text('Associate Professor', style: TextStyle(color: Colors.white),)),
          ],
        ),
      ],
    );
  }
}