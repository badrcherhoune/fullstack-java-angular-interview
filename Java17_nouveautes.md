# 🧩 Nouveautés de Java 17

## 1. Sealed Classes and Interfaces (Classes scellées)

➡️ Permettent de restreindre quelles classes peuvent hériter d’une classe ou implémenter une interface.

### Exemple :

```java
public sealed class Shape permits Circle, Rectangle {}

final class Circle extends Shape {}
final class Rectangle extends Shape {}
```
👉 Ici, seules Circle et Rectangle peuvent hériter de Shape.
Si tu essayes d’ajouter une autre classe (ex : Triangle), tu auras une erreur de compilation.

## 2. Pattern Matching for instanceof (Java 16 → finalisé dans 17)

➡️ Simplifie la vérification du type et le cast automatique.

Exemple :
```java
Object obj = "Hello Java 17";

if (obj instanceof String s) {
    System.out.println(s.toUpperCase()); // plus besoin de cast explicite
}
```

👉 Avant : if (obj instanceof String) { String s = (String) obj; ... }

## 3. Records (finalisé dans Java 16 mais inclus dans 17 LTS)

➡️ Une syntaxe simple pour créer des classes immuables destinées à transporter des données.

Exemple :
```java
public record Person(String name, int age) {}

class Test {
    public static void main(String[] args) {
        Person p = new Person("Badr", 30);
        System.out.println(p.name()); // "Badr"
        System.out.println(p);        // "Person[name=Badr, age=30]"
    }
}
```

👉 Équivaut à une classe avec :

un constructeur,
des getters,
equals(), hashCode(), et toString() auto-générés.

## 4. New Pseudo-Random Number Generators (PRNG)

➡️ Nouvelle API pour des générateurs de nombres aléatoires plus flexibles.

Exemple :
```java
import java.util.random.RandomGenerator;
import java.util.random.RandomGeneratorFactory;

public class RandomExample {
    public static void main(String[] args) {
        RandomGenerator generator = RandomGeneratorFactory.of("L64X128MixRandom").create();
        System.out.println(generator.nextInt(100));
    }
}
```

👉 Permet de choisir différents algorithmes (LXM, Xoroshiro, etc.).

## 5. New macOS Rendering Pipeline (JEP 382)

➡️ Nouveau pipeline basé sur Metal pour améliorer les performances graphiques sur macOS (remplace OpenGL).
(Pas visible dans le code, mais amélioration interne du JDK.)

## 6. Deprecation and Removal

Certaines anciennes fonctionnalités ont été supprimées :
Applet API (obsolète)
RMI Activation System
Experimental AOT and JIT compiler removed

. Text Blocks (introduit en Java 15, présent en 17 LTS)

➡️ Facilite l’écriture de chaînes multilignes lisibles.

Exemple :
String json = """
    {
        "name": "Badr",
        "role": "Developer"
    }
    """;
System.out.println(json);


👉 Meilleure lisibilité que les chaînes avec \n partout.

## 8. Switch Expressions (Java 14, stabilisé dans 17 LTS)

➡️ Permet de retourner une valeur directement à partir d’un switch.

Exemple :
```java
String day = "MONDAY";
int num = switch (day) {
    case "MONDAY", "TUESDAY" -> 1;
    case "WEDNESDAY" -> 2;
    default -> 0;
};
System.out.println(num); // 1
```

## 9. Foreign Function & Memory API (Incubating)

➡️ Nouvelle API pour interagir avec le code natif sans JNI (encore en phase expérimentale dans Java 17).

Exemple (simplifié) :
```java
// Exemple conceptuel
try (var session = MemorySession.openConfined()) {
    var segment = MemorySegment.allocateNative(100, session);
    // interaction mémoire native
}
```
