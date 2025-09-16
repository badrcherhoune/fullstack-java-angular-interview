
# 🚀 Cours complet Kafka avec Spring Boot

---

## 1️⃣ Introduction à Kafka
- **Apache Kafka** est une plateforme distribuée orientée événements.  
- Utilisé pour :  
  - La **messagerie asynchrone** (pub-sub).  
  - Le **streaming temps réel** (logs, IoT, analytics).  
  - L’**intégration entre microservices**.  
- Caractéristiques :
  - **Scalabilité** : topics divisés en **partitions**.  
  - **Tolérance aux pannes** : réplication des partitions.  
  - **Performance** : capable de traiter des millions d’événements/seconde.  
  - **Persistance** : stockage sur disque configurable (par défaut 7 jours).  

---

## 2️⃣ Concepts clés de Kafka
- **Topic** : catégorie de messages (ex: `orders`, `payments`).  
- **Partition** : sous-division d’un topic (pour le parallélisme).  
- **Offset** : identifiant du message dans une partition.  
- **Producer** : envoie des messages vers un topic.  
- **Consumer** : lit les messages d’un topic.  
- **Consumer Group** : groupe de consumers qui se partagent les partitions.  
- **Broker** : serveur Kafka qui stocke et distribue les messages.  
- **Zookeeper / KRaft** : coordination du cluster (Zookeeper historique, remplacé par KRaft depuis Kafka 3.x).  

---

## 3️⃣ Installation & Setup
1. Télécharger [Apache Kafka](https://kafka.apache.org/).  
2. Lancer Zookeeper (si version < 3.x avec KRaft).  
   ```bash
   bin/zookeeper-server-start.sh config/zookeeper.properties
   ```
3. Lancer Kafka broker :  
   ```bash
   bin/kafka-server-start.sh config/server.properties
   ```
4. Créer un topic :  
   ```bash
   bin/kafka-topics.sh --create --topic orders --bootstrap-server localhost:9092 --partitions 3 --replication-factor 1
   ```
5. Tester avec un producer/consumer CLI.  

---

## 4️⃣ Intégration Kafka avec Spring Boot

### a) Dépendances Maven
```xml
<dependency>
    <groupId>org.springframework.kafka</groupId>
    <artifactId>spring-kafka</artifactId>
</dependency>
```

---

### b) Configuration Spring Boot (`application.yml`)
```yaml
spring:
  kafka:
    bootstrap-servers: localhost:9092
    producer:
      key-serializer: org.apache.kafka.common.serialization.StringSerializer
      value-serializer: org.apache.kafka.common.serialization.StringSerializer
    consumer:
      group-id: my-group
      key-deserializer: org.apache.kafka.common.serialization.StringDeserializer
      value-deserializer: org.apache.kafka.common.serialization.StringDeserializer
```

---

### c) Producer (envoyer un message)
```java
@Service
public class OrderProducer {
    private final KafkaTemplate<String, String> kafkaTemplate;

    public OrderProducer(KafkaTemplate<String, String> kafkaTemplate) {
        this.kafkaTemplate = kafkaTemplate;
    }

    public void sendOrder(String order) {
        kafkaTemplate.send("orders", order);
    }
}
```

---

### d) Consumer (écouter un message)
```java
@Service
public class OrderConsumer {
    @KafkaListener(topics = "orders", groupId = "my-group")
    public void consume(String message) {
        System.out.println("📥 Received order: " + message);
    }
}
```

---

### e) Test rapide
```java
@RestController
@RequestMapping("/orders")
public class OrderController {
    private final OrderProducer producer;

    public OrderController(OrderProducer producer) {
        this.producer = producer;
    }

    @PostMapping
    public void sendOrder(@RequestBody String order) {
        producer.sendOrder(order);
    }
}
```

➡️ Envoie une requête HTTP :  
```bash
curl -X POST http://localhost:8080/orders -H "Content-Type: application/json" -d '"Order #123"'
```
Ton consumer doit recevoir le message.  

---

## 5️⃣ Gestion avancée

### a) Sérialisation / Désérialisation JSON
- Ajouter Jackson :  
```yaml
spring:
  kafka:
    producer:
      value-serializer: org.springframework.kafka.support.serializer.JsonSerializer
    consumer:
      value-deserializer: org.springframework.kafka.support.serializer.JsonDeserializer
```

- Exemple d’entité :  
```java
public class Order {
    private String id;
    private double price;
    // getters & setters
}
```

- Producer envoie un `Order`.  
- Consumer reçoit un `Order`.  

---

### b) Retry & Error Handling
Spring Kafka permet de gérer :  
- **Retry automatique** en cas d’erreur.  
- **Dead Letter Queue (DLQ)** pour stocker les messages non consommés.  

```java
@KafkaListener(topics = "orders", errorHandler = "myErrorHandler")
public void consume(Order order) {
    if(order.getPrice() < 0) throw new RuntimeException("Invalid price");
    System.out.println("📥 Received order: " + order);
}
```

---

### c) Kafka Streams
Pour du **traitement temps réel** directement dans Kafka :  
- Transformation des flux (map, filter, join).  
- Exemple : calcul du nombre de commandes par client.  

---

### d) Sécurité
- **Authentification** : SASL/SSL.  
- **Autorisation** : ACLs par topic.  
- **Spring Boot** supporte la config TLS/SASL dans `application.yml`.  

---

## 6️⃣ Bonnes pratiques
- Créer un topic par **événement métier** (ex: `order-created`, `payment-processed`).  
- Utiliser des **Consumer Groups** pour le parallélisme.  
- Définir des **politiques de rétention** adaptées (`delete`, `compact`).  
- Surveiller avec **Prometheus + Grafana**.  
- Toujours gérer les **erreurs & retries**.  

---

## 7️⃣ Cas d’usage réels
- **E-commerce** : communication entre services (commande, paiement, livraison).  
- **IoT** : ingestion massive de données capteurs.  
- **Banque** : monitoring transactions en temps réel.  
- **Transport** : suivi des véhicules/vols en live.  
