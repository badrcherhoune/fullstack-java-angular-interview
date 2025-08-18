# ❓ Questions / Réponses Spring Boot 3

## 🔹 Bases
1. **Qu’est-ce que Spring Boot 3 ?**  
   → Dernière version majeure de Spring Boot, basée sur Spring Framework 6, supporte uniquement Java 17+.

2. **Différences majeures entre Spring Boot 2 et 3 ?**  
   - Support minimum Java 17.  
   - Basé sur Spring Framework 6.  
   - Utilisation de **Jakarta EE 9+** (changement de `javax.*` → `jakarta.*`).  
   - Meilleure intégration avec **GraalVM / AOT**.  
   - Améliorations de performance et support cloud natif.

3. **Pourquoi le passage de javax.* à jakarta.* ?**  
   → Parce que Jakarta EE (géré par Eclipse Foundation) a remplacé Java EE, donc les packages changent.

---

## 🔹 Configuration
4. **Spring Boot 3 nécessite quelle version de Java ?**  
   → Java 17 minimum.

5. **Qu’est-ce que AOT (Ahead-of-Time compilation) ?**  
   → Permet de compiler à l’avance pour créer des exécutables natifs (optimisé pour GraalVM).

6. **Quels serveurs embarqués supporte Spring Boot 3 ?**  
   → Tomcat 10, Jetty 11, Undertow 2.  

---

## 🔹 Développement
7. **Changements sur les dépendances Spring Boot 3 ?**  
   - `javax.persistence.*` devient `jakarta.persistence.*`.  
   - `javax.servlet.*` devient `jakarta.servlet.*`.  
   - `javax.validation.*` devient `jakarta.validation.*`.

8. **Exemple d’entité JPA avec Spring Boot 3 ?**  
   ```java
   import jakarta.persistence.Entity;
   import jakarta.persistence.Id;

   @Entity
   public class User {
       @Id
       private Long id;
       private String name;
   }
   ```

9. **Annotation principale pour démarrer une app Spring Boot 3 ?**  
   → `@SpringBootApplication` (inchangé).

10. **Spring Boot 3 supporte-t-il Kotlin ?**  
    → Oui, Kotlin est supporté nativement.

---

## 🔹 Sécurité
11. **Changements dans Spring Security avec Spring Boot 3 ?**  
    - API mise à jour.  
    - DSL plus lisible avec lambdas.  
    - Exemple :
      ```java
      @Bean
      SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
          http
              .authorizeHttpRequests(auth -> auth
                  .anyRequest().authenticated()
              )
              .oauth2Login(Customizer.withDefaults());
          return http.build();
      }
      ```

12. **PasswordEncoder fonctionne-t-il toujours pareil ?**  
    → Oui, `BCryptPasswordEncoder` reste la pratique recommandée.

---

## 🔹 Observabilité & Monitoring
13. **Quelles améliorations d’Actuator dans Spring Boot 3 ?**  
    - Support **Micrometer 2.0**.  
    - Intégration avec **OpenTelemetry** pour les traces et métriques.

14. **Exemple d’utilisation Actuator avec OpenTelemetry ?**  
    → Configurer `management.tracing.enabled=true` et exporter vers un outil (Jaeger, Zipkin, Prometheus…).

---

## 🔹 Tests
15. **Tests avec Spring Boot 3, changent-ils ?**  
    - Pas de grands changements.  
    - Toujours `@SpringBootTest`, `@WebMvcTest`, etc.  
    - Migration vers `jakarta.*` si utilisation de JPA/Validation.

16. **Support du Testcontainers dans Spring Boot 3 ?**  
    → Oui, meilleur support intégré pour les bases de données en container (Postgres, MySQL…).

---

## 🔹 Cloud & Native
17. **Spring Boot 3 et GraalVM ?**  
    → Génération d’exécutables natifs possible via AOT.  
    - Avantages : démarrage ultra rapide, faible consommation mémoire.  

18. **Spring Boot 3 est-il plus adapté au Cloud ?**  
    → Oui, meilleure intégration avec Kubernetes, observabilité, images Docker natives.

---

## 🔹 Divers
19. **Quels modules sont mis à jour avec Spring Boot 3 ?**  
    - Spring Data 3.  
    - Spring Security 6.  
    - Hibernate 6.  
    - Micrometer 2.  
    - Tomcat 10.

20. **Pourquoi migrer vers Spring Boot 3 ?**  
    - Performance.  
    - Support long terme.  
    - Nouvelles fonctionnalités (AOT, GraalVM, observabilité).  
    - Compatibilité avec Jakarta EE.
