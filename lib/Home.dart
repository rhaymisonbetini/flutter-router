import 'package:flutter/material.dart';
import 'package:flutter_consultoria/Cliente.dart';
import 'package:flutter_consultoria/Contato.dart';
import 'package:flutter_consultoria/Empresa.dart';
import 'package:flutter_consultoria/Servico.dart';

class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Home> {
  void _abrirEmpresa() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Empresa()));
  }

  void _telaServico() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Servico()));
  }

  void _telaCliente() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Cliente()));
  }

  void _telaContato() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Contato()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('Cristian consultoria'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("imagens/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: Image.asset("imagens/menu_empresa.png"),
                  ),
                  GestureDetector(
                    onTap: _telaServico,
                    child: Image.asset("imagens/menu_servico.png"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _telaCliente,
                    child: Image.asset("imagens/menu_cliente.png"),
                  ),
                  GestureDetector(
                    onTap: _telaContato,
                    child: Image.asset("imagens/menu_contato.png"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
