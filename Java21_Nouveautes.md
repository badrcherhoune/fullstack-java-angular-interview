# 🚀 Nouveautés de Java (LTS)

Java publie une nouvelle version **tous les 6 mois** et une version **LTS (Long-Term Support)** tous les 2 ans.  
Les versions **Java 17 (2021)** et **Java 21 (2023)** sont les deux plus récentes LTS.

---

## 🟢 Java 17 (LTS – 21 septembre 2021)

### 🔑 Principales nouveautés
1. **Pattern Matching for Switch (Preview)** – switch plus expressif et flexible.
2. **Sealed Classes** – contrôle des classes qui peuvent hériter.
3. **Always-Strict Floating-Point Semantics** – cohérence des calculs flottants.
4. **Enhanced Random Number Generators** – nouveaux PRNG modernes.
5. **Strong Encapsulation of JDK Internals** – sécurité accrue.
6. **Foreign Function & Memory API (Incubator)** – accès simplifié au code natif.
7. **Vector API (Incubator)** – calculs vectoriels optimisés.
8. **Context-Specific Deserialization Filters** – sécurité renforcée.
9. **Rendu Metal sur macOS** – remplace OpenGL.
10. **Support macOS/AArch64 (Apple Silicon)** – optimisation ARM 64 bits.

### 🧹 Nettoyage
- Suppression de **Applet API**, **RMI Activation**, **AOT/JIT expérimental**.
- **Security Manager** marqué pour suppression.

---

## 🔵 Java 21 (LTS – 19 septembre 2023)

### 🔑 Principales nouveautés
1. **Record Patterns**  
   - Déstructuration d’objets avec `record` dans les `switch` et `instanceof`.

2. **Pattern Matching for Switch (Final)**  
   - Finalisation de la fonctionnalité introduite en preview dans Java 17.

3. **Virtual Threads (Project Loom)**  
   - Des **milliers de threads légers** avec une consommation mémoire minimale.  
   - Simplifie la gestion de la concurrence.

4. **Sequenced Collections**  
   - Nouvelle API garantissant l’ordre (listes, sets, maps séquencés).

5. **String Templates (Preview)**  
   - Nouvelle syntaxe pour interpoler des variables dans une chaîne :  
     ```java
     String name = "Badr";
     String msg = STR."Bonjour, \{name}!";
     ```

6. **Unnamed Classes and Instance Main Methods (Preview)**  
   - Permet d’écrire un programme **sans classe explicite** (plus simple pour débutants).  
     ```java
     void main() {
         System.out.println("Hello World!");
     }
     ```

7. **Foreign Function & Memory API (Final)**  
   - Version stable de l’API incubée en Java 17.

8. **Vector API (Incubator - 6e itération)**  
   - Optimisations supplémentaires pour calculs vectoriels.

### 🧹 Nettoyage
- Suppression définitive du **Security Manager**.
- Suppression de certaines API obsolètes.

---

## 📌 Pourquoi ces versions sont importantes ?

- **Java 17 (LTS)** : Base stable et sécurisée (support long terme jusqu’en 2029+).
- **Java 21 (LTS)** : Nouvelle référence pour les projets modernes.  
  - Virtual Threads = révolution pour la programmation concurrente.  
  - Simplification du langage pour les débutants.  
  - Améliorations de performance et sécurité.

---

✍️ Basé sur les [JEPs officiels Java 17](https://openjdk.org/projects/jdk/17/) et [JEPs Java 21](https://openjdk.org/projects/jdk/21/).
