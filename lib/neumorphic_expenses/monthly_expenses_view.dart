import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pie_chart_view.dart';
import 'categories_row.dart';
void main() => runApp(MonthlyExpensesView());
class MonthlyExpensesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        title: const Text('Pie Chart', style: TextStyle(
            color: Colors.black
        )),
        backgroundColor: Colors.white,
      ),
      //backgroundColor: Color.fromRGBO(193, 214, 233, 1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: <Widget>[

            SizedBox(
                height: height * 0.43,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: height * 0.065,
                      ),
                      Text(
                        'Monthly Expenses',
                        style: GoogleFonts.rubik(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                      Expanded(
                          child: Row(
                        children: <Widget>[
                          CategoriesRow(),
                          PieChartView(),
                        ],
                      )),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
