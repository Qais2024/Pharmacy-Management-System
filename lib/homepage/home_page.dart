import 'package:fargard_pharmacy_management_system/customer/customer_List_page.dart';
import 'package:fargard_pharmacy_management_system/expenses_page/expenses_List_page.dart';
import 'package:fargard_pharmacy_management_system/expenses_page/expenses_page.dart';
import 'package:fargard_pharmacy_management_system/medicines%20List/medicines%20List.dart';
import 'package:fargard_pharmacy_management_system/patient_regis_page/patient_regis_page.dart';
import 'package:fargard_pharmacy_management_system/patient_regis_page/patients_List_page.dart';
import 'package:fargard_pharmacy_management_system/Stock_page_of_medicine/Stock_page_of_medicine.dart';
import 'package:fargard_pharmacy_management_system/purches_page/purchese_List_page.dart';
import 'package:fargard_pharmacy_management_system/doctors_page/doctprs_List_page.dart';
import 'package:fargard_pharmacy_management_system/reports/reports_page.dart';
import 'package:fargard_pharmacy_management_system/salse_page/prescription.dart';
import 'package:fargard_pharmacy_management_system/salse_page/salse_List_page.dart';
import 'package:fargard_pharmacy_management_system/users_page/users_List_page.dart';
import 'package:fargard_pharmacy_management_system/visit_page/visit_List_page.dart';
import 'package:fargard_pharmacy_management_system/visit_page/visit_regis_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:neumorphic_button/neumorphic_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../LanguageChange/LanguageChange.dart';
import '../doctors_page/doctor_register_page.dart';
import '../provider/theme_provider.dart';
enum Language { English, Farsi, Pashto }
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var iconcolora=Colors.red;
  List<Map<String, dynamic>> pages(BuildContext context) => [
    {
      "name": AppLocalizations.of(context)!.medicines,
      "icon": Icon(Icons.medication_outlined,),
      "navigate": Medicines_List(),
    },
    {
      "name": AppLocalizations.of(context)!.warehouse,
      "icon": Icon(Icons.book_outlined,),
      "navigate": Stock_page_of_medicine(),
    },
    {
      "name": AppLocalizations.of(context)!.purchase_invoices,
      "icon": Icon(Icons.pending_actions,),
      "navigate": Purchese_List_page(),
    },
    {
      "name": AppLocalizations.of(context)!.sales_invoices,
      "icon": Icon(Icons.screen_rotation_alt,),
      "navigate": Sales_List_page(),
    },
    {
      "name": AppLocalizations.of(context)!.visits,
      "icon": Icon(Icons.volunteer_activism_sharp,),
      "navigate": Visit_List_page(),
    },
    {
      "name": AppLocalizations.of(context)!.expenses,
      "icon": Icon(Icons.filter_list_off_sharp,),
      "navigate": Expenses_List_page(),
    },
    {
      "name": AppLocalizations.of(context)!.customers,
      "icon": Icon(Icons.perm_contact_calendar_outlined,),
      "navigate": Customer_List_page(),
    },
    {
      "name": AppLocalizations.of(context)!.patients,
      "icon": Icon(Icons.medication_outlined,),
      "navigate": Patients_List_page(),
    },
    {
      "name": AppLocalizations.of(context)!.doctors,
      "icon": Icon(Icons.add_card_outlined,),
      "navigate": Doctors_List_page(),
    },
    {
      "name": AppLocalizations.of(context)!.employees,
      "icon": Icon(Icons.people_alt,),
      "navigate": Users_List_page(),
    },

    {
      "name": AppLocalizations.of(context)!.reports,
      "icon": Icon(Icons.repeat_outlined,),
      "navigate": All_reports_page(),
    },
    {
      "name":AppLocalizations.of(context)!.backup,
      "icon": Icon(Icons.backup,),
      "navigate": Patients_regis_page(),
    },
    {
      "name": AppLocalizations.of(context)!.settings,
      "icon": Icon(Icons.settings,),
      "navigate": Patients_regis_page(),
    },
    {
      "name": AppLocalizations.of(context)!.about,
      "icon": Icon(Icons.report_gmailerrorred,),
      "navigate": Patients_regis_page(),
    },
  ];

  var fontsize=20.0;
  @override
  Widget build(BuildContext context) {
    final pagesList = pages(context);
    final themprovider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 130,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("image/q.jpg"),
                          radius: 50,
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 50,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("کلینیک تخصصی موفق",style: TextStyle(fontSize: 30),),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text(AppLocalizations.of(context)!.daily_sales,style:TextStyle(fontSize: fontsize),),
                     Text(AppLocalizations.of(context)!.daily_purchases,style:TextStyle(fontSize: fontsize)),
                     Text(AppLocalizations.of(context)!.daily_expenses,style:TextStyle(fontSize: fontsize)),
                    ],
                  ),
                  SizedBox(width: 30,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("${"100"}"),
                      Text("${"100"}"),
                      Text("${"1000"}"),
                    ],
                  ),
                  SizedBox(width: 50,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppLocalizations.of(context)!.number_of_patients,style:TextStyle(fontSize: fontsize)),
                      Text(AppLocalizations.of(context)!.doctor_accounts,style:TextStyle(fontSize: fontsize)),
                      Text(AppLocalizations.of(context)!.cash_inventory,style:TextStyle(fontSize: fontsize)),
                    ],
                  ),
                  SizedBox(width: 50,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("${"1000"}"),
                      Text("${"1000"}"),
                      Text("${"1000"}"),
                    ],
                  ),
                  SizedBox(width: 100,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Row(
                      children: [
                        Text("زبان",style: TextStyle(fontSize: 20),),
                          Consumer<LanguageChange>(builder: (context, provider, child) {
                            return PopupMenuButton(
                              icon: Icon(Icons.language,),
                              onSelected: (Language item) {
                                if (Language.English.name == item.name) {
                                  provider.changeLanguage(Locale("en"));
                                } else if (Language.Farsi.name == item.name) {
                                  provider.changeLanguage(Locale("fa"));
                                } else if (Language.Pashto.name == item.name) {
                                  provider.changeLanguage(Locale("ps"));
                                }
                              },
                              itemBuilder: (context) => <PopupMenuEntry<Language>>[
                                const PopupMenuItem(
                                  value: Language.Farsi,
                                  child: Row(
                                    children: [
                                      Text("فارسی"),
                                      SizedBox(width: 10,),
                                      Text("🇦🇫"),
                                    ],
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: Language.English,
                                  child: Row(
                                    children: [
                                      Text("English"),
                                      SizedBox(width: 10,),
                                      Text("🇺🇸"),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }),
                      ],
                    ),
                    ],
                  ),
                  SizedBox(width: 80,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.light_mode,color: Colors.yellow,),
                          Switch(
                              activeColor: Colors.white,
                              inactiveThumbColor: Colors.black,
                              activeThumbImage: AssetImage("image/d.jpg"),
                              inactiveThumbImage: AssetImage("image/l.jpg"),
                              value: themprovider.themeMode == ThemeMode.dark,
                              onChanged: (value) {
                                themprovider.toggleTheme(value);
                              }),
                          Icon(Icons.dark_mode),
                        ],
                      )
                    ],
                  ),
                  SizedBox(width: 80,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.lightGreenAccent,
                              borderRadius: BorderRadius.circular(100)
                          ),
                          width: 60,
                          height: 60,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(onPressed:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Prescription_page(),));
                              }, icon: Icon(Icons.add))
                            ],
                          ),
                        ),
                      ),
                      Text(AppLocalizations.of(context)!.sale)
                    ],
                  ),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.lightGreenAccent,
                              borderRadius: BorderRadius.circular(100)
                          ),
                          width: 60,
                          height: 60,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(onPressed:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Visit_regis_page(),));
                              }, icon: Icon(Icons.add))
                            ],
                          ),
                        ),
                      ),
                      Text(AppLocalizations.of(context)!.visit)
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(color: Colors.black,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    int crossAxisCount = constraints.maxWidth > 600 ? 7 : 2;
                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 30,
                        crossAxisCount: crossAxisCount,
                      ),
                      itemCount: pagesList.length,
                      itemBuilder: (context, index) {
                        double screenWidth = MediaQuery.of(context).size.width;
                        double buttonSize = screenWidth / 11;
                        double iconSize = screenWidth / 15;
                        double fontsize = screenWidth / 70;
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              NeumorphicButton(
                                width: buttonSize,
                                height: buttonSize,
                                borderRadius: 12,
                                borderWidth: 1,
                                backgroundColor: Colors.white10,
                                topLeftShadowColor: Colors.white10,
                                bottomRightShadowColor: Colors.white10,
                                bottomRightOffset: const Offset(-1, -1),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => pagesList[index]["navigate"]),
                                  );
                                },
                                child: Center(
                                  child: Icon(
                                    pagesList[index]["icon"].icon,size: iconSize,color: iconcolora,
                                    ),
                                ),
                              ),
                              Text(pagesList[index]["name"],style: TextStyle(fontSize: fontsize),),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

