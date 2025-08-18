# ❓ Questions / Réponses Spring Boot 2

## 🔹 Bases
1. **Qu’est-ce que Spring Boot ?**  
   → Framework basé sur Spring qui permet de créer des applications Java rapidement avec moins de configuration.

2. **Différence entre Spring et Spring Boot ?**  
   - Spring = framework complet, nécessite beaucoup de configuration manuelle.  
   - Spring Boot = auto-configuration + serveur embarqué + starters.

3. **Qu’est-ce qu’un starter Spring Boot ?**  
   → Dépendance qui regroupe plusieurs librairies utiles pour une fonctionnalité (`spring-boot-starter-web`, `spring-boot-starter-data-jpa`, etc.).

4. **Qu’est-ce que l’auto-configuration ?**  
   → Spring Boot configure automatiquement les beans en fonction des dépendances présentes dans le projet.

5. **Quel serveur embarqué utilise Spring Boot par défaut ?**  
   → **Tomcat** (mais on peut le remplacer par Jetty, Undertow, etc.).

---

## 🔹 Configuration
6. **Fichiers de configuration Spring Boot ?**  
   → `application.properties` ou `application.yml`.

7. **Différence entre application.properties et application.yml ?**  
   - `properties` → format clé=valeur.  
   - `yml` → format hiérarchique (plus lisible).

8. **Comment définir différents profils (dev, test, prod) ?**  
   → Avec `application-dev.properties`, `application-prod.yml` et annotation `@Profile`.

9. **Comment externaliser la configuration sensible (ex: mot de passe DB) ?**  
   → Variables d’environnement, fichiers externes, ou gestionnaire secret (Vault, AWS Secret Manager…).

---

## 🔹 Développement
10. **Qu’est-ce qu’un Bean dans Spring Boot ?**  
    → Objet géré par le conteneur Spring (créé, injecté, détruit par Spring).

11. **Quelles annotations principales ?**  
    - `@SpringBootApplication` → démarre l’app.  
    - `@RestController` → expose des endpoints REST.  
    - `@Service` → logique métier.  
    - `@Repository` → accès DB.  
    - `@Autowired` → injection de dépendances.

12. **Différence entre `@Component`, `@Service`, `@Repository` ?**  
    → Fonctionnellement identiques (tous des composants Spring).  
    - `@Service` = logique métier.  
    - `@Repository` = accès DB.  
    - `@Component` = générique.

13. **Qu’est-ce que Spring Data JPA ?**  
    → Module qui simplifie l’accès à la base avec des interfaces (`JpaRepository`, `CrudRepository`).

14. **Différence entre `CrudRepository` et `JpaRepository` ?**  
    - `CrudRepository` → opérations CRUD basiques.  
    - `JpaRepository` → plus complet (pagination, batch, etc.).

15. **Comment créer une API REST simple ?**  
    ```java
    @RestController
    @RequestMapping("/hello")
    public class HelloController {
        @GetMapping
        public String sayHello() {
            return "Hello Spring Boot 2";
        }
    }
    ```

---

## 🔹 Sécurité
16. **Comment sécuriser une API Spring Boot ?**  
    → Avec **Spring Security** (JWT, OAuth2, Basic Auth…).

17. **Qu’est-ce que le PasswordEncoder ?**  
    → Classe qui permet de chiffrer les mots de passe (ex: `BCryptPasswordEncoder`).

18. **Différence entre `@PreAuthorize` et `@Secured` ?**  
    - `@PreAuthorize` → SpEL (plus flexible).  
    - `@Secured` → plus simple, juste des rôles.

---

## 🔹 Actuator & Monitoring
19. **Qu’est-ce que Spring Boot Actuator ?**  
    → Module qui expose des endpoints pour la santé, métriques, logs de l’application.

20. **Exemple d’endpoints Actuator utiles ?**  
    - `/actuator/health` → état de l’app.  
    - `/actuator/metrics` → métriques JVM.  
    - `/actuator/info` → infos build/app.

---

## 🔹 Tests
21. **Comment tester une application Spring Boot ?**  
    → Avec JUnit + Spring Test.  
    - `@SpringBootTest` → démarre le contexte complet.  
    - `@WebMvcTest` → test des contrôleurs REST.  

22. **Comment mocker un bean dans un test Spring Boot ?**  
    → Avec `@MockBean`.

---

## 🔹 Divers
23. **Qu’est-ce que le DevTools ?**  
    → Module qui permet **redémarrage automatique** et rechargement à chaud pendant le développement.

24. **Comment déployer une app Spring Boot ?**  
    - `java -jar app.jar`  
    - Docker (image avec JDK + jar).  
    - Cloud (Heroku, AWS, etc.).

25. **Avantages de Spring Boot 2 par rapport à Spring classique ?**  
    - Moins de configuration XML.  
    - Serveur embarqué.  
    - Auto-configuration.  
    - Démarrage rapide.
