# 🚀 Nouveautés de Java 17 (LTS)

Java 17 est une **version LTS (Long-Term Support)** publiée le **21 septembre 2021**.  
Elle apporte des améliorations majeures au niveau du langage, de la sécurité et des performances.

---

## 🔑 Principales nouveautés

### 1. Pattern Matching for Switch (Preview)
- Permet d’utiliser des motifs (`pattern matching`) dans les instructions `switch`.
- Plus expressif et plus flexible avec **guarded patterns** et **patterns parenthésés**.

### 2. Sealed Classes
- Limite quelles classes peuvent hériter ou implémenter une classe/interface.
- Améliore la **sécurité** et la **lisibilité** des hiérarchies de classes.

### 3. Always-Strict Floating-Point Semantics
- Les opérations en **virgule flottante** sont toujours strictes.
- Garantit une cohérence entre plateformes.

### 4. Enhanced Pseudo-Random Number Generators
- Nouveaux algorithmes pour générer des nombres aléatoires.
- Support natif pour les **streams** de nombres aléatoires.

### 5. Strongly Encapsulated JDK Internals
- Les API internes du JDK sont fortement encapsulées.
- Améliore la **sécurité** et la **modularité**.

### 6. Foreign Function & Memory API (Incubator)
- Nouvelle API pour interagir avec du **code natif** (remplaçant JNI).
- Simplifie l'accès à la mémoire hors JVM.

### 7. Vector API (Second Incubator)
- Optimise les calculs vectoriels avec instructions CPU.
- Utile pour **traitement numérique** et **machine learning**.

### 8. Context-Specific Deserialization Filters
- Ajout de filtres de **désérialisation contextuels**.
- Réduit les risques de failles de sécurité.

### 9. Nouveaux pipelines de rendu (macOS)
- Utilisation de **Metal** au lieu de **OpenGL** pour Java 2D.
- Optimisé pour macOS.

### 10. Portage macOS/AArch64
- Support natif pour **Apple Silicon (M1, M2)**.
- Meilleures performances sur Mac ARM 64 bits.

---

## 🧹 Nettoyage et suppressions

- **Applet API** → obsolète et supprimée.
- **RMI Activation** → supprimé.
- **Experimental AOT/JIT Compiler** → retirés.
- **Security Manager** → marqué pour suppression.

---

## 📌 Pourquoi Java 17 est important ?

- Version **LTS** (support long terme).
- Améliorations en **sécurité**, **performance** et **productivité**.
- Base solide pour les applications modernes.

---

✍️ Inspiré des [JEPs officiels](https://openjdk.org/projects/jdk/17/) et de la documentation Java.
