import 'package:flutter/material.dart';

List<dynamic> classificacao = [
  {
    "classificacao": "Magreza",
    "min": 0,
    "max": 18.5,
    "obesidade": "0",
    "mensagem": """Cuidado! Está abaixo do peso ideal. Priorize uma dieta balanceada e exercícios regulares.
É importante buscar orientação médica para garantir uma alimentação saudável e o ganho de peso adequado.
Lembre-se de focar em alimentos nutritivos e incluir fontes de proteína e gorduras saudáveis na sua dieta.""",
    "color": Colors.purple,
    "icon": Icons.sentiment_dissatisfied
  },
  {
    "classificacao": "Normal",
    "min": 18.5,
    "max": 24.9,
    "obesidade": "0",
    "mensagem": """Parabéns! Seu peso está dentro da faixa considerada saudável para sua altura.
Continue mantendo hábitos saudáveis, como uma dieta equilibrada e atividades físicas regulares.
Lembre-se de monitorar periodicamente seu IMC e ajustar seu estilo de vida conforme necessário.""",
    "color": Colors.green,
    "icon": Icons.sentiment_satisfied
  },
  {
    "classificacao": "Sobrepeso",
    "min": 24.9,
    "max": 29.9,
    "obesidade": "1",
    "mensagem": """Atenção! Você está acima do peso ideal, o que pode aumentar o risco de problemas de saúde.
Considere fazer ajustes na sua alimentação e aumentar a atividade física para alcançar um peso saudável.
Pequenas mudanças, como reduzir o consumo de alimentos processados e praticar exercícios regularmente, podem fazer uma grande diferença.""",
    "color": Colors.yellow,
    "icon": Icons.sentiment_neutral
  },
  {
    "classificacao": "Obesivdade",
    "min": 29.9,
    "max": 39.9,
    "obesidade": "2",
    "mensagem": """É importante buscar apoio médico para gerenciar sua condição de obesidade.
Adotar hábitos alimentares mais saudáveis e um estilo de vida ativo pode ajudar a melhorar sua saúde.
Considere consultar um nutricionista ou um profissional de saúde para criar um plano personalizado de perda de peso.""",
    "color": Colors.orange,
    "icon": Icons.sentiment_dissatisfied
  },
  {
    "classificacao": "Obesidade Grave",
    "min": 39.9,
    "max": 100.0,
    "obesidade": "3",
    "mensagem": """Atenção urgente! Sua obesidade está em um nível que requer intervenção médica imediata.
É essencial procurar ajuda profissional para desenvolver um plano de tratamento abrangente.
Priorize medidas para reduzir o peso, como dieta supervisionada, exercícios físicos regulares e possivelmente intervenções médicas adicionais.""",
    "color": Colors.red,
    "icon": Icons.sentiment_very_dissatisfied_rounded
  },
];

class Imc {
  dynamic classificar(double imc) {
    for (var i = 0; i < classificacao.length; i++) {
      if (classificacao[i]["min"] <= imc && classificacao[i]["max"] >= imc) {
        return classificacao[i];
      }
    }
  }

  double calcular(double altura, double peso) {
    return (peso / (altura * altura)).roundToDouble();
  }
}
