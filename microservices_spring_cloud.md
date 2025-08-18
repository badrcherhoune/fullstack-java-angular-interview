
# Cours Complet : Microservices avec Spring Cloud

## 1. Introduction aux Microservices
### 1.1 Définition
- Les microservices sont une **architecture qui divise une application monolithique en plusieurs services indépendants**, chacun ayant sa propre logique métier et sa base de données.
- Chaque service est **autonome**, peut être déployé indépendamment, et communique généralement via **HTTP/REST** ou **messaging (Kafka, RabbitMQ)**.

### 1.2 Avantages
- Scalabilité : chaque service peut être mis à l’échelle indépendamment.
- Déploiement indépendant.
- Résilience : une défaillance dans un service n’affecte pas l’ensemble de l’application.
- Maintenance et compréhension simplifiées.

### 1.3 Inconvénients
- Complexité accrue de la communication inter-services.
- Gestion des transactions distribuées.
- Monitoring et traçage nécessaires.

## 2. Spring Cloud : Présentation
Spring Cloud fournit un ensemble d’outils pour développer des microservices **robustes et résilients**, en intégrant les patterns suivants :
- **Service Discovery** (Eureka, Consul)
- **Configuration centralisée** (Spring Cloud Config)
- **Circuit Breaker / Tolérance aux pannes** (Resilience4J)
- **API Gateway** (Spring Cloud Gateway)
- **Messaging / Event Driven** (Kafka, RabbitMQ)
- **Monitoring et traçage** (Spring Cloud Sleuth, Zipkin)

## 3. Architecture typique
1. **Microservices** : services indépendants (produit, commande, client…)
2. **Gateway** : point d’entrée unique pour tous les clients.
3. **Discovery Server** : registre pour découvrir les services.
4. **Config Server** : serveur centralisé pour gérer la configuration.
5. **Message Broker** : Kafka ou RabbitMQ pour la communication asynchrone.
6. **Monitoring** : logs, métriques, traçage distribué.

## 4. Composants Spring Cloud

### 4.1 Spring Cloud Config
- Permet la **gestion centralisée de la configuration** de tous les microservices.
- Les fichiers de configuration peuvent être stockés dans **Git**, **SVN**, ou un répertoire local.
- Exemple : `application.yml` pour chaque microservice, versionné et centralisé.

### 4.2 Eureka (Service Discovery)
- Eureka Server : registre où les services s’enregistrent.
- Eureka Client : chaque microservice s’inscrit et peut **découvrir les autres services**.
- Avantage : **load balancing automatique** via Spring Cloud LoadBalancer ou Ribbon.

### 4.3 Spring Cloud Gateway
- Point d’entrée pour tous les microservices.
- Supporte :
  - Routing dynamique
  - Filtrage des requêtes
  - Authentification et sécurité

### 4.4 Resilience4J (Tolérance aux pannes)
- Implémente les patterns :
  - **Circuit Breaker** : coupe la connexion en cas d’erreurs répétées.
  - **Retry** : réessayer automatiquement.
  - **Rate Limiter** : limiter le nombre de requêtes.
- Exemple d’usage :
```java
@CircuitBreaker(name = "serviceClient", fallbackMethod = "fallback")
public String getClientData() { … }
```

### 4.5 Messaging / Event Driven
- **Kafka** : streaming et messaging distribué.
- **RabbitMQ** : message broker léger.
- Permet la communication **asynchrone**, importante pour découpler les services.

### 4.6 Monitoring et traçage
- **Spring Boot Actuator** : expose des endpoints `/actuator/health`, `/metrics`.
- **Spring Cloud Sleuth** : ajoute un **traceId** pour suivre une requête sur plusieurs microservices.
- **Zipkin / Prometheus / Grafana** : visualisation et monitoring.

## 5. Communication entre microservices

### 5.1 REST / HTTP
- Via `RestTemplate` (obsolète) ou `WebClient` (réactif, recommandé)

### 5.2 Feign Client
- Simplifie la communication REST déclarative
```java
@FeignClient(name = "produit-service")
public interface ProduitClient {
    @GetMapping("/produits/{id}")
    Produit getProduit(@PathVariable Long id);
}
```

### 5.3 Messaging Asynchrone
- Producteur → Broker → Consommateur
- Exemple Kafka : un service émet des événements, un autre les consomme.

## 6. Sécurité
- **JWT** pour authentification stateless
- **OAuth2 / OpenID Connect** pour microservices sécurisés
- Gateways peuvent centraliser la sécurité avec des filtres globaux

## 7. Bonnes pratiques
1. Chaque microservice doit avoir **sa propre base de données**.
2. Éviter le couplage fort entre services.
3. Utiliser **configuration centralisée**.
4. Logger avec contexte distribué pour faciliter le debug.
5. Tests unitaires et d’intégration pour chaque microservice.
6. Automatisation CI/CD pour déploiement rapide.

## 8. Exemple d’architecture complète
```
Client Web / Mobile
       |
   API Gateway (Spring Cloud Gateway)
       |
---------------------------------
|         |          |          |
Service Client  Service Commande  Service Produit
       |           |            |
   Kafka Broker / RabbitMQ
       |
 Config Server (Git)
       |
  Eureka Server
```

## 9. Résumé
- Les microservices permettent de **scaler, maintenir et déployer indépendamment**.
- Spring Cloud fournit des outils pour **service discovery, configuration, tolérance aux pannes, sécurité et monitoring**.
- Communication : REST, Feign, messaging asynchrone.
- Sécurité : JWT, OAuth2.
- Monitoring : Actuator, Sleuth, Zipkin.
