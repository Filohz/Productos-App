import 'package:flutter/material.dart';
import 'package:productos_app/widgets/widgets.dart';
import 'package:productos_app/ui/inputs_decorations.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const ProductImage(),
                Positioned(
                  top: 60,
                  left: 20,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  right: 20,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            _CustomForm(),
            const SizedBox(height: 100)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save),
        onPressed: () => {},
      ),
    );
  }
}

class _CustomForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration: _customBoxDecoration(),
        child: Form(
          child: Column(
            children: [
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputsDecorations.authInputDecorations(
                  hintText: 'Nombre del producto',
                  labelText: 'Nombre',
                ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputsDecorations.authInputDecorations(
                  hintText: '\$1500',
                  labelText: 'Precio',
                ),
              ),
              const SizedBox(height: 30),
              SwitchListTile(
                value: true,
                title: const Text('Disponible'),
                activeColor: Colors.green,
                onChanged: (value) {},
              )
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _customBoxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          offset: const Offset(0, 5),
          blurRadius: 5,
        )
      ],
    );
  }
}
