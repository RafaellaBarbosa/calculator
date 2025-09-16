# 📱 Calculadora em Flutter

Uma calculadora simples desenvolvida em **Flutter**, com interface customizada e lógica própria para operações matemáticas.  
Projeto criado para estudo e prática de **Widgets customizados**, **gerenciamento de estado** e **integração entre UI e lógica**.

---

## ⚙️ Funcionalidades

- Operações básicas: **adição, subtração, multiplicação, divisão e porcentagem**  
- Botões customizados (`Button`, `ButtonRow`, `Keyboard`)  
- Exibição responsiva de valores no `Display` com `AutoSizeText`  
- Suporte ao botão **AC (All Clear)**  
- Tratamento de múltiplas operações em sequência  
- Bloqueio de múltiplos pontos decimais  

---

## 🛠️ Tecnologias

- [Flutter](https://flutter.dev/) >= 3.25.1  
- [Dart](https://dart.dev/)  
- [auto_size_text](https://pub.dev/packages/auto_size_text)  

---

## 📂 Estrutura do Projeto

```
lib/
 ├── components/
 │    ├── button.dart
 │    ├── button_row.dart
 │    ├── display.dart
 │    └── keyboard.dart
 ├── models/
 │    └── memory.dart
 └── calculator.dart
```

---

## ▶️ Como rodar o projeto

1. Clone este repositório:
   ```bash
   git clone https://github.com/Rafaellabarbosa/calculadora-flutter.git
   ```
2. Entre na pasta do projeto:
   ```bash
   cd calculadora-flutter
   ```
3. Instale as dependências:
   ```bash
   flutter pub get
   ```
4. Rode o app:
   ```bash
   flutter run
   ```

---

## 📌 Próximos Passos

- [ ] Implementar histórico de operações  
- [ ] Suporte ao modo científico  
- [ ] Melhorar a responsividade para tablets  

---

## 👩‍💻 Autora

Desenvolvido por **Rafaella Barbosa Costa** 💙  
🔗 [LinkedIn](https://www.linkedin.com/in/rafaellabarbosacosta)