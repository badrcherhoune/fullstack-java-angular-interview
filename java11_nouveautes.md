# 🚀 Nouveautés de Java 11

## 1. Nouvelles méthodes sur les Strings
- `isBlank()` : vérifie si une chaîne est vide ou ne contient que des espaces.
- `lines()` : retourne un Stream des lignes.
- `strip()`, `stripLeading()`, `stripTrailing()` : gestion avancée des espaces.
- `repeat(n)` : répète une chaîne n fois.

---

## 2. Nouvelle API HTTP Client (standardisée)
- Introduite en incubateur en Java 9/10, stabilisée en Java 11.
- Permet de gérer HTTP/1.1 et HTTP/2 de façon asynchrone ou synchrone.
- Classes principales : `HttpClient`, `HttpRequest`, `HttpResponse`.

---

## 3. L'exécution directe des fichiers `.java`
- Plus besoin de compiler explicitement avec `javac`.
- Exemple : `java Hello.java` exécute directement le code.

---

## 4. Flight Recorder
- Outil de monitoring et de profiling intégré.
- Faible impact sur les performances, utile en production.

---

## 5. Z Garbage Collector (ZGC)
- Nouveau garbage collector ultra performant.
- Conçu pour des applications nécessitant de faibles temps de pause (latence).

---

## 6. Suppression de Java EE et CORBA
- Modules Java EE (JAXB, JAX-WS, etc.) et CORBA ont été supprimés du JDK.
- Désormais, ils doivent être ajoutés via des dépendances externes (Maven/Gradle).

---

## 7. Améliorations de la sécurité et TLS 1.3
- Support complet de TLS 1.3.
- Amélioration de la sécurité et de la performance des connexions sécurisées.

---

## 8. `var` dans les paramètres de lambda
- Introduit dans Java 11.
- Permet d’utiliser `var` pour déclarer des variables dans les expressions lambda.

---

## 9. Nouvelles API de fichiers (File Methods)
- `Files.writeString()` et `Files.readString()` facilitent la lecture/écriture de fichiers.

---

## 10. Dépréciations et suppressions notables
- Java Web Start supprimé.
- Pack200 supprimé.
- Certains outils et API obsolètes retirés.

---

👉 En résumé : **String API, HTTP Client, exécution directe .java, ZGC, Flight Recorder, TLS 1.3, var en lambda** sont les points essentiels pour les entretiens.
