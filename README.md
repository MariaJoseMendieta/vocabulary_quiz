# Vocabulary Quiz App

Una aplicación móvil desarrollada con Flutter que permite practicar vocabulario básico en inglés mediante preguntas de verdadero o falso. Ideal para estudiantes principiantes que buscan reforzar su comprensión de palabras comunes en inglés.

---

## 📌 Descripción general

La aplicación presenta una serie de afirmaciones en inglés relacionadas con el significado de palabras comunes. El usuario debe responder si las afirmaciones son verdaderas o falsas. Al finalizar el cuestionario, se muestra una alerta indicando que se han respondido todas las preguntas, y se reinicia automáticamente para que pueda repetirse.

---

## ⚙️ Funcionalidades principales

- Interfaz interactiva con botones True/False.
- Visualización de íconos que indican si la respuesta fue correcta o incorrecta.
- Alerta emergente cuando se completan todas las preguntas.
- Reinicio automático del quiz al finalizar.
- Diseño adaptado con colores personalizados y fuente específica.

---

## 🧱 Requisitos del proyecto

- Flutter SDK
- Dart SDK
- Un entorno de desarrollo compatible (Android Studio, VS Code, etc.)

---

## 📦 Tecnologías utilizadas / Paquetes externos

- **Flutter**: framework para desarrollo móvil.
- **Dart**: lenguaje de programación principal.
- **[rflutter_alert](https://pub.dev/packages/rflutter_alert)**: paquete externo usado para mostrar una alerta cuando finaliza el quiz.

---

## 🗂️ Estructura del proyecto
```
vocabulary_quiz/
├── lib/
│ ├── main.dart # Interfaz principal y lógica de flujo del quiz
│ ├── quiz_brain.dart # Clase que gestiona la lógica del cuestionario
│ └── question.dart # Clase que define el modelo de una pregunta
├── pubspec.yaml # Archivo de configuración del proyecto (fuentes, paquetes)
```
---

## 👤 Autor

Desarrollado por **María José Mendieta Ortiz**   
🌐 https://github.com/MariaJoseMendieta