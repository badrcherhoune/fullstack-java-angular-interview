# Réponses aux Questions POO Java

## 1. Concepts de base POO en Java

### POO vs Procédural
La Programmation Orientée Objet (POO) organise le code autour d'objets qui combinent **données (attributs)** et **comportements (méthodes)**.  
Contrairement au procédural qui sépare **données** et **fonctions**, la POO offre plusieurs avantages :  
- **Réutilisabilité du code**  
- **Maintenance facilitée**  
- **Meilleure modélisation du monde réel**

### Les 4 piliers de la POO

1. **Encapsulation** : regroupe données et méthodes, contrôle l'accès via `private` et `getters/setters`.  
2. **Héritage** : permet à une classe d'hériter des caractéristiques d'une autre.  
3. **Polymorphisme** : une même interface peut avoir plusieurs implémentations.  
4. **Abstraction** : masque la complexité en exposant seulement les éléments essentiels.

### Classe abstraite vs Interface
| Concept        | Classe Abstraite                     | Interface                        |
|----------------|------------------------------------|---------------------------------|
| Contenu        | Code partiel (méthodes concrètes et abstraites) | Contrat uniquement (Java 8+ peut avoir `default` et `static`) |
| Héritage       | Simple héritage                     | Héritage multiple possible       |
| Usage          | Hiérarchie de classes               | Définir des comportements       |

### Encapsulation en Java
- Déclarer les attributs `private`  
- Fournir des `getters` et `setters` pour accéder/modifier les valeurs  

### Surcharge vs Redéfinition
- **Surcharge (Overloading)** : même nom de méthode, **paramètres différents**, dans **la même classe**  
- **Redéfinition (Overriding)** : même signature, **classe différente (héritage)**  

### Classe `final`
- Une classe `final` **ne peut pas être héritée**  
- Utile pour la **sécurité** et certaines **conceptions immuables**  

### Composition vs Héritage
- **Composition** : une classe **contient** un objet d'une autre classe  
- **Héritage** : une classe **est un type de** l'autre classe  
- Recommandation : privilégier la **composition** pour plus de flexibilité  
# Polymorphisme et Héritage en Java

## 1. Polymorphisme dynamique

Le polymorphisme dynamique en Java se résout à l'exécution. Cela signifie que le type réel de l'objet détermine quelle méthode est appelée, même si la variable de référence est de type parent.



# 3. Classes, Objets et Conception

## Classe statique vs Classe interne

- **Classe statique** :  
  - Ne peut pas accéder aux membres d’instance de la classe externe.  
  - Utilisée pour regrouper des utilitaires ou des constantes.  

- **Classe interne (non statique)** :  
  - Peut accéder aux membres d’instance de la classe externe.  
  - Utile pour représenter un objet fortement lié à sa classe englobante.  

---

## Classe immuable

- Une classe dont l’état reste constant après sa création.  
- Caractéristiques :  
  - Classe déclarée `final`.  
  - Tous les champs sont `final`.  
  - Pas de setters.  
- **Utilité** :  
  - Sécurité, simplifie le multi-threading (thread-safe).  

---

## Interface Java 8+

- Les interfaces peuvent contenir :  
  - **Méthodes abstraites** : à implémenter dans les classes concrètes.  
  - **Méthodes `default`** : fournissent une implémentation par défaut.  
- Permet de faire évoluer les interfaces sans casser les classes existantes.  

---

## Record Java 14+

- Une forme simplifiée de classe immuable.  
- Caractéristiques :  
  - Tous les champs sont `final` automatiquement.  
  - Génère automatiquement `equals()`, `hashCode()`, `toString()`.  
- **Avantages** : concision et simplicité pour les classes DTO.  
- **Inconvénients** : moins flexible qu’une classe classique.  

---

## Singleton

- Une classe qui ne peut avoir qu’une seule instance.  
- Implémentation classique :  

```java
public class Singleton {
    private static final Singleton INSTANCE = new Singleton();

    private Singleton() {}

    public static Singleton getInstance() {
        return INSTANCE;
    }
}

# Java - Gestion de mémoire & Modélisation

## 4. Gestion de mémoire & Objet

### Garbage Collector
Le Garbage Collector (GC) supprime automatiquement les objets non référencés, libérant ainsi la mémoire utilisée par ces objets.

### Reachability
Un objet est considéré comme **accessible** s'il peut être atteint via une chaîne de références depuis les **racines GC (GC Roots)**, comme les variables locales sur la stack, les variables statiques, ou les références actives dans les threads.

### Stack vs Heap
- **Stack** : stocke les variables locales et primitives. Allocation et libération rapide.
- **Heap** : stocke tous les objets créés avec `new`. Libération gérée par le Garbage Collector.

### Pass-by-value
Java passe toujours une **copie de la valeur** :
- Pour les types primitifs : copie de la valeur.
- Pour les objets : copie de la référence, pas de l’objet lui-même.

### `==` vs `.equals()`
- `==` : compare les **références** (identité des objets).
- `.equals()` : compare le **contenu** des objets (à redéfinir si nécessaire avec `hashCode()`).

### Memory leaks
Éviter les fuites mémoire :
- Supprimer ou mettre `null` les références inutiles.
- Utiliser `WeakReference` pour les objets temporaires.
- Toujours fermer les ressources (`InputStream`, `Connection`, etc.).

---

## 5. Modélisation et SOLID

### SOLID
- **S** (Single Responsibility Principle) : une classe doit avoir une seule responsabilité.
- **O** (Open/Closed Principle) : les entités doivent être ouvertes à l’extension mais fermées à la modification.
- **L** (Liskov Substitution Principle) : les sous-classes doivent pouvoir remplacer leurs super-classes sans casser le programme.
- **I** (Interface Segregation Principle) : préférer plusieurs interfaces spécifiques qu’une seule interface générale.
- **D** (Dependency Inversion Principle) : dépendre d’abstractions, pas de classes concrètes.

### Couplage et Cohésion
- **Couplage faible** : classes indépendantes, changements locaux sans impacter le reste.
- **Cohésion forte** : chaque classe fait une seule chose de manière claire et complète.

### Héritage mal utilisé
Exemple classique :
```java
class Rectangle { ... }
class Carre extends Rectangle { ... } // Violation LSP si Carre ne se comporte pas comme Rectangle


# Java - Patterns, POO Avancée et Cas Pratiques

## 6. Patterns et Bonnes Pratiques

### Design Patterns courants
- **Singleton** : garantit qu'une classe n'a qu'une seule instance et fournit un point d'accès global.
- **Factory** : crée des objets sans exposer la logique de création.
- **Builder** : simplifie la construction d'objets complexes avec de nombreux paramètres.
- **Strategy** : encapsule des algorithmes interchangeables.
- **Observer** : définit une relation de dépendance un-à-plusieurs entre objets pour notifier automatiquement des changements.

### Factory Method vs Abstract Factory
- **Factory Method** : une seule méthode pour créer un objet.
- **Abstract Factory** : fabrique une famille d'objets liés sans spécifier leurs classes concrètes.

### Builder
- Utilisé quand un objet a de nombreux paramètres optionnels.
- Améliore la lisibilité et la maintenance du code.

### Observer
- Exemple : systèmes d'événements, écouteurs GUI.
- Permet de notifier plusieurs objets lorsqu'un état change.

### DAO / Repository
- Sépare la logique de persistance de la logique métier.
- Facilite le test et la maintenance.

### Adapter
- Permet d'adapter une interface à une autre.
- Exemple : adaptateurs pour bibliothèques externes.

---

## 7. POO Avancée en Java

### Classe Anonyme
- Classe sans nom, instanciée immédiatement.
- Utile pour des callbacks ou listeners courts.

### Polymorphisme + Generics
- Limité par l'effacement de type à l'exécution (type erasure).

### Interface Fonctionnelle
- Contient une seule méthode abstraite.
- Peut avoir plusieurs méthodes `default`.

### POO et Stream API
- Les streams utilisent les lambdas (programmation fonctionnelle).
- Manipulent des objets POO pour traitement de collections.

### Comparable vs Comparator
- **Comparable** : définit l'ordre naturel des objets.
- **Comparator** : définit des ordres alternatifs ou multiples.

### Covariance / Contravariance
- `? extends T` : lecture uniquement (covariant).
- `? super T` : écriture uniquement (contravariant).

---

## 8. Cas Pratiques & Architecture

### Système Bancaire
```java
class Compte { /* solde, operations */ }
class Client { /* liste de comptes */ }
class Transaction { /* montant, date, type */ }


