

### 🟢 1) **Comment interdire l’héritage d’une classe ?**

➡️ En mettant le mot-clé **`final`** devant la classe.

```java
final class MaClasse { }
```

👉 Aucune autre classe ne peut faire `extends MaClasse`.

---

### 🟢 2) **Quels sont les scopes d’un bean ?**

➡️ Les principaux scopes Spring sont :

* **singleton** → une seule instance pour toute l’application.
* **prototype** → une nouvelle instance à chaque fois.
* **request** → une instance par requête HTTP (Web).
* **session** → une instance par session utilisateur (Web).

### 🔹 Cycle de vie d’un bean Spring

1. **Instantiation (Création)**

   * Spring crée une **instance du bean** à partir de sa classe.

2. **Populate Properties (Injection de dépendances)**

   * Spring **injecte les dépendances** (autowired, valeurs de configuration…).

3. **BeanNameAware / BeanFactoryAware / ApplicationContextAware**

   * Spring **informe le bean de son nom**, de la factory ou du contexte si le bean implémente ces interfaces.

4. **PostConstruct (Initialisation)**

   * Spring appelle **les méthodes annotées `@PostConstruct`** ou la méthode définie dans `init-method`.

5. **Ready to use (Prêt à l’emploi)**

   * Le bean est maintenant **prêt à être utilisé** par l’application.

6. **Destruction (Fin de vie)**

   * Lorsque le contexte Spring est fermé, Spring **appelle `@PreDestroy` ou `destroy-method`** pour nettoyer les ressources.
---

### 🟢 3) **C’est quoi `@Component` ?**

➡️ C’est une **annotation Spring** qui indique que la classe est un **bean géré automatiquement** par le conteneur Spring.
Spring crée et gère son cycle de vie.

```java
@Component
public class MonService { }
```

---

### 🟢 4) **C’est quoi Singleton et Factory ?**

* **Singleton** 👉 un **design pattern** où **une seule instance** d’une classe existe dans toute l’application.
* **Factory** 👉 un **design pattern** qui sert à **créer des objets** sans exposer la logique de création directement.

---

### 🟢 5) **Commande pour déboguer avec Maven**

➡️ Utilise l’option **`-X`** pour voir les détails du débogage :

```bash
mvn clean install -X
```

ou simplement pour lancer en mode debug :

```bash
mvn debug
mvn spring-boot:run -Dspring-boot.run.fork=false
```


