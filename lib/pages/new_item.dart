import 'package:flutter/material.dart';
import 'package:itemmanager/components/app_colors.dart';
import 'package:itemmanager/components/app_text.dart';
import 'package:itemmanager/components/app_formfields.dart';
import '../components/app_appbars.dart';

class NewItem extends StatefulWidget {
  const NewItem({super.key});

  @override
  State<NewItem> createState() => _NewItemState();
}

// Pagina de novo registro de emprestimo de equipamento
class _NewItemState extends State<NewItem> {
  TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbaritem('Novo Empréstimo'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AppFormfield(
                    titleLabel: 'Descrição do Item',
                    icon: null,
                  )),
              const SizedBox(height: 10),
              const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AppFormfield(
                    titleLabel: 'Destinatário Responsável',
                    icon: null,
                  )),
              const SizedBox(height: 10),
              const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AppFormfield(
                    titleLabel: 'Funcionário Responsável',
                    icon: null,
                  )),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _dateController,
                  decoration: InputDecoration(
                      labelText: 'Data de Retirada',
                      labelStyle:
                          TextStyle(fontSize: 18, color: AppColors.mainColor),
                      prefixIcon: Icon(
                        Icons.calendar_today,
                        color: AppColors.appbar,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: AppColors.mainColor)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.focusColor, width: 1.5))),
                  onTap: () {
                    _selectDate();
                  },
                ),
              ),
              Row(
                children: [],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));

    if (_picked != null) {
      setState(() {
        _dateController.text = _picked.toString().split(" ")[0];
      });
    }
  }
}
