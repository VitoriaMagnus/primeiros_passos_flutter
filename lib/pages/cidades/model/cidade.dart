import 'dart:convert';

class Cidade {
  final String cidade;
  final String estado;

  Cidade(
    this.cidade,
    this.estado,
  );

  Map<String, dynamic> toMap() {
    return {
      'cidade': cidade,
      'estado': estado,
    };
  }

  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      map['cidade'] ?? '',
      map['estado'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Cidade.fromJson(String source) => Cidade.fromMap(json.decode(source));

  @override
  String toString() => 'Cidade(cidade: $cidade, estado: $estado)';
}
