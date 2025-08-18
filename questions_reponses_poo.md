
# ❓ Questions / Réponses POO (Programmation Orientée Objet)

## 🔹 Concepts de base
1. **Qu’est-ce que la POO ?**  
   → C’est une façon de programmer en utilisant des **objets** qui regroupent des données (attributs) et des comportements (méthodes).

2. **Principes fondamentaux ?**  
   - **Encapsulation** → protéger les données.  
   - **Héritage** → réutiliser du code.  
   - **Polymorphisme** → un même code peut se comporter différemment.  
   - **Abstraction** → cacher les détails, montrer l’essentiel.

3. **Classe vs Objet ?**  
   → Classe = modèle (plan).  
   → Objet = instance (réalité du plan).

4. **Instance d’une classe ?**  
   → C’est un **objet créé à partir de la classe**.

5. **Méthode statique vs méthode d’instance ?**  
   - Statique → liée à la **classe** (appelée sans objet).  
   - Instance → liée à un **objet**.

6. **Attribut statique vs attribut d’instance ?**  
   - Statique → partagé par tous les objets.  
   - Instance → propre à chaque objet.

7. **Qu’est-ce qu’un constructeur ?**  
   → Méthode spéciale qui initialise un objet lors de sa création.

8. **Surcharge (overloading) vs redéfinition (overriding) ?**  
   - **Overloading** → plusieurs méthodes avec le même nom mais **différents paramètres**.  
   - **Overriding** → une sous-classe redéfinit une méthode d’une classe parente.

---

## 🔹 Encapsulation
9. **Qu’est-ce que l’encapsulation ?**  
   → Cacher les détails internes d’un objet et contrôler l’accès via des méthodes (getters/setters).

10. **Modificateurs d’accès ?**  
   - `private` → accessible uniquement dans la classe.  
   - `protected` → accessible dans la classe et les sous-classes.  
   - `public` → accessible partout.  
   - (default en Java) → accessible dans le même package.

11. **Getter/Setter vs accès direct ?**  
   → Getter/Setter permet de **contrôler et protéger** l’accès aux variables.

---

## 🔹 Héritage
12. **Qu’est-ce que l’héritage ?**  
   → Une classe peut hériter des attributs et méthodes d’une autre.

13. **Héritage simple vs multiple ?**  
   - Simple → hérite d’une seule classe.  
   - Multiple → hérite de plusieurs (souvent interdit pour éviter les conflits).

14. **Pourquoi Java interdit l’héritage multiple de classes ?**  
   → Pour éviter les ambiguïtés (exemple : deux classes parents avec la même méthode).

15. **Mot-clé `super` ?**  
   → Permet d’appeler le constructeur ou les méthodes de la classe parente.

16. **Peut-on hériter d’un constructeur ?**  
   → Non, mais on peut appeler le constructeur parent avec `super()`.

---

## 🔹 Polymorphisme
17. **Qu’est-ce que le polymorphisme ?**  
   → Capacité d’un objet à prendre **plusieurs formes** (même méthode mais comportements différents).

18. **Polymorphisme statique vs dynamique ?**  
   - Statique → surcharge (au moment de la compilation).  
   - Dynamique → redéfinition (au moment de l’exécution).

19. **Exemple concret ?**  
   - Classe `Animal` avec une méthode `parler()`.  
   - `Chien.parler()` → “Wouf”  
   - `Chat.parler()` → “Miaou”.

---

## 🔹 Abstraction
20. **Classe abstraite vs interface ?**  
   - Classe abstraite → peut contenir du code + méthodes abstraites.  
   - Interface → uniquement la définition (contrat).  

21. **Peut-on instancier une classe abstraite ?**  
   → Non.

22. **Quand utiliser une interface ?**  
   → Quand plusieurs classes différentes doivent partager le **même contrat**.

23. **Méthode par défaut dans une interface (Java) ?**  
   → Oui, depuis Java 8.

---

## 🔹 Concepts avancés
24. **Qu’est-ce qu’un design pattern ?**  
   → Solution réutilisable à un problème courant (ex. Singleton, Factory, Observer).

25. **Principe SOLID ?**  
   - **S** → Single Responsibility (une classe = une responsabilité).  
   - **O** → Open/Closed (ouverte à l’extension, fermée à la modification).  
   - **L** → Liskov Substitution (une sous-classe doit pouvoir remplacer sa super-classe).  
   - **I** → Interface Segregation (pas d’interfaces trop grosses).  
   - **D** → Dependency Inversion (dépendre d’abstractions, pas d’implémentations).

26. **Composition vs Héritage ?**  
   - Héritage → “est un” (Un chien **est un** animal).  
   - Composition → “a un” (Une voiture **a un** moteur).

27. **Couplage vs Cohésion ?**  
   - Couplage faible = bonne pratique (peu de dépendances).  
   - Cohésion forte = bonne pratique (classe bien spécialisée).

28. **Dépendance inversée ?**  
   → Le code doit dépendre des **interfaces** et non des implémentations concrètes.

29. **Polymorphisme paramétrique ?**  
   → Utilisation des **génériques** (ex. `List<String>`).

30. **Association vs Agrégation vs Composition ?**  
   - Association → relation simple entre deux classes.  
   - Agrégation → relation “a un” mais chaque objet peut exister seul.  
   - Composition → relation forte, un objet ne peut pas exister sans l’autre.

---

## 🔹 Questions pratiques
31. **Classe Voiture simple :**
   ```java
   class Voiture {
       String marque;
       int vitesse;

       void accelerer() {
           vitesse += 10;
       }
   }
   ```

32. **Polymorphisme avec Animal :**
   ```java
   class Animal { void parler() {} }
   class Chien extends Animal { void parler() { System.out.println("Wouf"); } }
   class Chat extends Animal { void parler() { System.out.println("Miaou"); } }
   ```

33. **Interface vs classe abstraite ?**  
   - Interface pour définir un **contrat** (ex. `Voler`).  
   - Classe abstraite pour partager du **code commun**.

34. **Classe non héritée ?**  
   → Utiliser `final` (Java) ou `sealed` (C#).

35. **POO vs programmation fonctionnelle ?**  
   - POO → basée sur les **objets**.  
   - Fonctionnelle → basée sur les **fonctions pures** (sans état).
