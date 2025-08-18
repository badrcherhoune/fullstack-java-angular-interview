# 🚀 Nouveautés de Java 8

## 1. Expressions Lambda
- Permettent d’écrire du code plus concis pour les fonctions anonymes.
- Syntaxe fonctionnelle : `(paramètres) -> expression`
- Utilisées beaucoup avec les **Streams** et les **interfaces fonctionnelles**.

---

## 2. Interfaces fonctionnelles & @FunctionalInterface
- Une interface avec **une seule méthode abstraite** (ex: `Runnable`, `Comparator`).
- Java 8 introduit l’annotation `@FunctionalInterface`.
- Sert de base pour les **lambdas** et les **références de méthode**.

---

## 3. Method References
- Une manière plus courte de référencer une méthode existante.
- Exemple : `System.out::println` au lieu de `(x) -> System.out.println(x)`

---

## 4. API Stream
- Une des plus grandes nouveautés de Java 8.
- Permet de traiter des collections de manière **fonctionnelle** (map, filter, reduce).
- Support du **parallel processing** avec `parallelStream()`.

---

## 5. Default & Static Methods dans les interfaces
- Les interfaces peuvent contenir des **méthodes par défaut** avec une implémentation (`default`).
- Peuvent aussi contenir des **méthodes statiques**.
- Utile pour ajouter des fonctionnalités sans casser la rétrocompatibilité.

---

## 6. Optional<T>
- Nouvelle classe pour éviter les `NullPointerException`.
- Permet de représenter une valeur présente ou absente.
- Méthodes clés : `isPresent()`, `orElse()`, `ifPresent()`.

---

## 7. Nouvelle API Date et Time (java.time)
- Basée sur Joda-Time, beaucoup plus puissante que l’ancienne `Date` et `Calendar`.
- Classes principales :
  - `LocalDate`, `LocalTime`, `LocalDateTime`
  - `ZonedDateTime` (gestion des fuseaux horaires)
  - `Duration`, `Period` (calculs temporels)

---

## 8. Nashorn JavaScript Engine (deprecated après Java 11)
- Moteur JavaScript intégré pour exécuter du code JS depuis Java.
- Plus utilisé aujourd’hui, mais important à savoir pour l’histoire.

---

## 9. CompletableFuture et API Concurrency améliorée
- Permet la programmation asynchrone et réactive.
- `CompletableFuture` introduit pour remplacer `Future` classique avec plus de fonctionnalités.

---

## 10. Améliorations de la Collection API
- Nouvelles méthodes par défaut dans `List`, `Map`, `Set` (`forEach`, `removeIf`, `replaceAll`, etc.).

---

👉 En résumé : **Lambdas, Streams, Optional, API Date/Time, Default Methods, CompletableFuture** sont les **plus demandés en entretien**.
