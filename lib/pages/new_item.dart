import 'package:flutter/material.dart';
import 'package:itemmanager/components/app_buttons.dart';
import 'package:itemmanager/components/app_colors.dart';
import 'package:itemmanager/components/app_formfields.dart';
import '../components/app_appbars.dart';

class NewItem extends StatefulWidget {
  const NewItem({super.key});

  @override
  State<NewItem> createState() => _NewItemState();
}

// Pagina de novo registro de emprestimo de equipamento
class _NewItemState extends State<NewItem> {
  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbaritem('Novo Empréstimo'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
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
                              color: AppColors.darkerColor, width: 1.5))),
                  onTap: () {
                    _selectDate();
                  },
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  SizedBox(
                    height: 45,
                    width: MediaQuery.of(context).size.width * .9,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: AppButtons.menuButtonStyle,
                      child: const Text('Salvar'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 45,
                width: MediaQuery.of(context).size.width * .5,
                child: TextButton(
                  onPressed: () {},
                  style: AppButtons.cleanButtonStyle,
                  child: const Text('Limpar'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Função para abrir o calendario, retorna a datat selecionada
  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      locale: const Locale("pt", "BR"),
      builder: (context, child) => Theme(
        data: ThemeData().copyWith(
          colorScheme: ColorScheme.light(
            primary: AppColors.appbar,
            onPrimary: AppColors.whitecolor,
          ),
        ),
        child: child!,
      ),
    );

    if (picked != null) {
      setState(() {
        _dateController.text = picked.toString().split(" ")[0];
      });
    }
  }
}
