import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //para manejar los estados y valores del formulario
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name'  : 'Ricardo',
      'last_name'   : 'Lagos',
      'email'       : 'rlagosg@unah.hn',
      'password'    : '1234',
      'role'        : 'Admin',
    };
    return Scaffold(
        appBar: AppBar(title: const Text('Inputs y Forms')),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'nombre de usuario',
                  counterText: 'ggg',
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Apellido de usuario',
                  counterText: 'ggg',
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                  labelText: 'Email',
                  hintText: 'Email de usuario',
                  counterText: 'ggg',
                  keyboardType: TextInputType.emailAddress,                  
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Contraseña de usuario',
                  counterText: 'contra',
                  obscureText: true,                  
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),

                //dropdown
                DropdownButtonFormField<String>(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin'),),
                    DropdownMenuItem(value: 'Cliente', child: Text('Cliente'),),
                    DropdownMenuItem(value: 'Empleado', child: Text('Empleado'),),
                    DropdownMenuItem(value: 'Conductor', child: Text('Conductor'),),
                  ], onChanged: (String? value) { 
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                   },
                ),

                ElevatedButton(
                    onPressed: () {
                      //deshabilitar el teclado
                      FocusScope.of(context).requestFocus(FocusNode());
                      if(!myFormKey.currentState!.validate()){
                        print('Formulario no valido!');
                        return;
                      }
                      
                      print(formValues);
                    },
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar'))))
              ],
            ),
          ),
        )));
  }
}
