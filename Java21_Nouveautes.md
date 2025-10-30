# 🚀 Nouveautés de Java 21 (LTS)

Java publie une nouvelle version **tous les 6 mois** et une version **LTS (Long-Term Support)** tous les 2 ans.  
Les versions **Java 17 (2021)** et **Java 21 (2023)** sont les deux plus récentes LTS.

## 1. Record Patterns (finalisés)

➡️ Permettent de déstructurer facilement des objets records dans des conditions if ou des switch.

Exemple :
```java
record Point(int x, int y) {}

static void print(Object obj) {
    if (obj instanceof Point(int x, int y)) {
        System.out.println("x = " + x + ", y = " + y);
    }
}
```


👉 Ici, x et y sont directement extraits du record sans avoir à appeler point.x() ou point.y().

## 2. Pattern Matching for switch (finalisé)

➡️ Tu peux utiliser le pattern matching directement dans les switch, rendant le code plus expressif.

Exemple :
```java
static String format(Object obj) {
    return switch (obj) {
        case Integer i -> "Int: " + i;
        case String s  -> "String: " + s.toUpperCase();
        case null      -> "Null value";
        default        -> "Unknown type";
    };
}
```

👉 Plus besoin de instanceof et de cast manuel, tout est géré par le compilateur.

## 3. Sequenced Collections (nouvelle API)

➡️ Nouvelle interface commune (SequencedCollection) pour les collections avec un ordre défini (comme List, LinkedHashSet, TreeMap, etc.)

Exemple :
```java
SequencedSet<String> names = new LinkedHashSet<>();
names.add("Badr");
names.add("Cherhoune");
System.out.println(names.getFirst()); // Badr
System.out.println(names.getLast());  // Cherhoune
```

👉 Cela simplifie la manipulation des collections ordonnées.

## 4. Virtual Threads (Project Loom) – Finalisé

➡️ Révolutionnaire ! Permet de créer des milliers de threads légers sans saturer la JVM.
Très utile pour les serveurs web et les traitements concurrents.

Exemple :
```java
Thread.startVirtualThread(() -> {
    System.out.println("Exécution dans un thread virtuel !");
});
```

👉 Beaucoup plus efficace que les threads classiques — idéals pour les applications web ou microservices.

## 5. Scoped Values (incubation)

➡️ Alternative moderne aux ThreadLocal, pour partager des données de manière immuable et sûre entre threads.

Exemple :
```java
import java.lang.ScopedValue;

static final ScopedValue<String> USER = ScopedValue.newInstance();

ScopedValue.where(USER, "Badr").run(() -> {
    System.out.println("Utilisateur : " + USER.get());
});
```

👉 Plus performant et sécurisé que ThreadLocal.

## 6. Unnamed Classes & Instance Main Methods (preview)

➡️ Simplifie l’écriture de programmes Java simples (utile pour l’apprentissage, scripts, etc.)

Exemple :
```java
void main() {
    System.out.println("Hello, Java 21!");
}
```

👉 Plus besoin de public class Main ou public static void main(String[] args).

## 7. Key Encapsulation Mechanism (KEM API)

➡️ Nouvelle API pour gérer le chiffrement post-quantique, ajoutée dans java.security pour préparer l’avenir de la cryptographie.

## 8. String Templates (preview)

➡️ Permettent d’insérer des variables directement dans les chaînes de manière sécurisée.

Exemple :
```java
String name = "Badr";
String message = STR."Hello, \{name}!";
System.out.println(message); // Hello, Badr!
```

👉 Plus simple et lisible que la concaténation classique.

## 9. Foreign Function & Memory API (finalisée)

➡️ Permet d’interagir avec du code natif (C/C++) sans JNI, plus rapide et plus sûr.

Exemple :
```java
import java.lang.foreign.*;

try (Arena arena = Arena.openConfined()) {
    MemorySegment segment = arena.allocate(100);
    // Manipulation mémoire sûre et rapide
}
```

## 10. Deprecations et suppressions notables

Suppression de certaines méthodes obsolètes de SecurityManager

Avancée vers la disparition de Finalization (remplacée par Cleaner)
