import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Employee_reports_page extends StatefulWidget {
  @override
  _Employee_reports_pageState createState() => _Employee_reports_pageState();
}

class _Employee_reports_pageState extends State<Employee_reports_page> {
  final mydata _mydata = mydata();
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  void _filterData(String query) {
    setState(() {
      _searchQuery = query.toLowerCase();
      _mydata.filterData(_searchQuery);
    });
  }

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      _filterData(_searchController.text);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: PaginatedDataTable(
                  actions: [
                    Text(AppLocalizations.of(context)!.start_date,style: TextStyle(fontSize: 18),),
                    SizedBox(
                      width: 120,
                      height: 30,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(AppLocalizations.of(context)!.end_date,style: TextStyle(fontSize: 18)),
                    SizedBox(
                      width: 120,
                      height: 30,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightGreenAccent
                        ),
                        onPressed:(){
                          setState(() {
                            _filterData(_searchQuery);
                          });
                        },
                        child:Text(AppLocalizations.of(context)!.filter,style: TextStyle(fontSize: 18))),
                    SizedBox(width: 10,),
                    Text(AppLocalizations.of(context)!.search_by),
                    SizedBox(
                      width: 120,
                      height: 30,
                      child: TextFormField(
                        controller: _searchController,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                    ),
                  ],

                  source: _mydata,
                  columns: [
                    DataColumn(label: Container(width:20,child: Text("#"))),
                    DataColumn(label: Text(AppLocalizations.of(context)!.employee_name)),
                    DataColumn(label: Container(width:80,child: Text(AppLocalizations.of(context)!.salesamount))),
                    DataColumn(label: Container(width:80,child: Text(AppLocalizations.of(context)!.prescription_count))),
                  ],
                  header: Center(child: Text(AppLocalizations.of(context)!.employee_reports)),
                  columnSpacing: 150,
                  horizontalMargin: 100,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class mydata extends DataTableSource {
  List<Map<String, String>> _prescriptions = [
    {"number": "1", "patient_name": "Patient A", "contact_number": "1234567890", "prescription_number": "RX001", "total_amount": "1000", "paid_amount": "900"},
    {"number": "2", "patient_name": "Patient B", "contact_number": "0987654321", "prescription_number": "RX002", "total_amount": "1500", "paid_amount": "1400"},
    {"number": "2", "patient_name": "Patient B", "contact_number": "0987654321", "prescription_number": "RX002", "total_amount": "1500", "paid_amount": "1400"},
    {"number": "2", "patient_name": "Patient B", "contact_number": "0987654321", "prescription_number": "RX002", "total_amount": "1500", "paid_amount": "1400"},
    {"number": "2", "patient_name": "Patient B", "contact_number": "0987654321", "prescription_number": "RX002", "total_amount": "1500", "paid_amount": "1400"},
    {"number": "2", "patient_name": "Patient B", "contact_number": "0987654321", "prescription_number": "RX002", "total_amount": "1500", "paid_amount": "1400"},
    {"number": "2", "patient_name": "Patient B", "contact_number": "0987654321", "prescription_number": "RX002", "total_amount": "1500", "paid_amount": "1400"},
    {"number": "2", "patient_name": "Patient B", "contact_number": "0987654321", "prescription_number": "RX002", "total_amount": "1500", "paid_amount": "1400"},
    {"number": "2", "patient_name": "Patient B", "contact_number": "0987654321", "prescription_number": "RX002", "total_amount": "1500", "paid_amount": "1400"},
    {"number": "2", "patient_name": "Patient B", "contact_number": "0987654321", "prescription_number": "RX002", "total_amount": "1500", "paid_amount": "1400"},
    {"number": "2", "patient_name": "Patient B", "contact_number": "0987654321", "prescription_number": "RX002", "total_amount": "1500", "paid_amount": "1400"},
    {"number": "2", "patient_name": "Patient B", "contact_number": "0987654321", "prescription_number": "RX002", "total_amount": "1500", "paid_amount": "1400"},
    {"number": "2", "patient_name": "Patient B", "contact_number": "0987654321", "prescription_number": "RX002", "total_amount": "1500", "paid_amount": "1400"},
    {"number": "2", "patient_name": "Patient B", "contact_number": "0987654321", "prescription_number": "RX002", "total_amount": "1500", "paid_amount": "1400"},
    {"number": "2", "patient_name": "Patient B", "contact_number": "0987654321", "prescription_number": "RX002", "total_amount": "1500", "paid_amount": "1400"},
    {"number": "2", "patient_name": "Patient B", "contact_number": "0987654321", "prescription_number": "RX002", "total_amount": "1500", "paid_amount": "1400"},
    {"number": "2", "patient_name": "Patient B", "contact_number": "0987654321", "prescription_number": "RX002", "total_amount": "1500", "paid_amount": "1400"},
  ];

  List<Map<String, String>> _filteredPrescriptions = [];

  void filterData(String query) {
    if (query.isEmpty) {
      _filteredPrescriptions = List.from(_prescriptions);
    } else {
      _filteredPrescriptions = _prescriptions.where((item) {
        return item.values.any((value) => value.toLowerCase().contains(query));
      }).toList();
    }
    notifyListeners();
  }
  @override
  DataRow getRow(int index) {
    final prescription = _filteredPrescriptions[index];
    return DataRow(cells: [
      DataCell(Text(prescription["number"] ?? '')),
      DataCell(Text(prescription["patient_name"] ?? '')),
      DataCell(Text(prescription["contact_number"] ?? '')),
      DataCell(Text(prescription["prescription_number"] ?? '')),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _filteredPrescriptions.length;

  @override
  int get selectedRowCount => 0;
}
