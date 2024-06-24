import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:pod_plus/core/shared/presentation/config/color_call.dart'; // Assuming color_call.dart defines color getters

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime selectedDate = DateTime.now();
  final DateTime minDate = DateTime(2000, 1, 1);
  final DateTime maxDate = DateTime(2035, 12, 31);
  late ScrollController _scrollController;
  
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToSelectedDate();
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: minDate,
      lastDate: maxDate,
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked.isBefore(minDate)
            ? minDate
            : picked.isAfter(maxDate)
                ? maxDate
                : picked;
      });
      _scrollToSelectedDate();
    }
  }

  void _scrollToSelectedDate() {
    final int index = selectedDate.day - 1;
    final double offset = index * 108.0; 
    _scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  int calculateDaysInMonth(int year, int month) {
    return DateTime(year, month + 1, 0).day;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.primaryColor,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () => _selectDate(context),
                icon: SvgPicture.asset(
                  "assets/svg/calendar.svg",
                  colorFilter: ColorFilter.mode(
                    context.secondaryColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                itemCount: calculateDaysInMonth(selectedDate.year, selectedDate.month),
                itemBuilder: (context, index) {
                  final date = DateTime(selectedDate.year, selectedDate.month, index + 1);
                  final isSelected = date.day == selectedDate.day;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedDate = date;
                      });
                      _scrollToSelectedDate();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        width: 100.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: isSelected ? context.secondaryColor : context.onsecondaryColor,
                        ),
                        child: Text(
                          DateFormat('EEE dd MMM yyyy').format(date),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            color: isSelected ? Colors.white : context.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

}
