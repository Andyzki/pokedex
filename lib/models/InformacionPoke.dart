import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokedex/models/Pokemon.dart';

class pokeInfo extends StatefulWidget {
  final String nombre;
  final String imagen;
  final int id;
  const pokeInfo({Key? key, this.nombre = "", this.imagen = "", this.id = 0})
      : super(key: key);

  @override
  State<pokeInfo> createState() => informacionPokemon();
}

class informacionPokemon extends State<pokeInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nombre),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 184, 114, 224),
                ),
                width: double.maxFinite,
                height: 300,
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(widget.imagen),
                      ],
                    )),
              ),
              //
              SizedBox(height: 15),
              //
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 53, 160, 155),
                ),
                width: double.maxFinite,
                height: 300,
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Versiones Normal & Shiny",
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey[400])),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.network(
                                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${widget.id}.png"),
                            Image.network(
                                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/${widget.id}.png")
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.network(
                                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/${widget.id}.png"),
                            Image.network(
                                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/${widget.id}.png")
                          ],
                        ),
                      ],
                    )),
              ),
            ],
          )),
    );
  }
}
