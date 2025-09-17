# 🚀 Cours Docker

## 1. Introduction à Docker
Docker est un outil de conteneurisation qui permet d’exécuter des applications dans des environnements isolés appelés **conteneurs**.  
Il simplifie le déploiement, améliore la portabilité et optimise les ressources par rapport aux machines virtuelles.

### 1.1 Avantages
- Rapidité de déploiement
- Légèreté et efficacité
- Portabilité entre environnements (dev, test, prod)

### 1.2 Docker vs Machine Virtuelle
- VM : embarque un OS complet → plus lourd
- Conteneur : partage le kernel de l’hôte → plus léger et rapide

---

## 2. Installation et premiers pas
Docker peut être installé sur Linux, Windows et macOS.  
Une fois installé, on utilise la **CLI (Command Line Interface)** pour gérer images et conteneurs.  
Exemple : `docker run hello-world` vérifie l’installation.

---

## 3. Images Docker
Une **image** est un modèle en lecture seule qui contient tout ce dont une application a besoin pour tourner (code, librairies, dépendances).  
Elle est construite via un **Dockerfile**.  

---

## 4. Conteneurs Docker
Un **conteneur** est une instance en cours d’exécution d’une image.  
C’est un environnement isolé mais léger, qui démarre en quelques secondes et peut être lancé, arrêté ou supprimé facilement.

---

## 5. Volumes et persistance
Les **volumes** permettent de stocker les données générées par les conteneurs en dehors de leur cycle de vie.  
Cela garantit la persistance même si un conteneur est supprimé ou redémarré.

---

## 6. Réseaux Docker
Les conteneurs communiquent via des **réseaux virtuels** gérés par Docker.  
On peut créer des réseaux personnalisés pour relier plusieurs conteneurs (ex: une application et sa base de données).

---

## 7. Docker Compose
**Docker Compose** est un outil qui permet de gérer plusieurs conteneurs via un seul fichier `docker-compose.yml`.  
Idéal pour les environnements multi-services (ex: backend + frontend + base de données).

---

## 8. Sécurité dans Docker
Docker propose des mécanismes de sécurité comme la gestion des utilisateurs, la limitation des ressources (CPU/RAM), et le scan des images pour détecter des vulnérabilités.

---

## 9. Docker dans la CI/CD
Docker s’intègre parfaitement aux pipelines d’intégration continue et de déploiement continu (CI/CD).  
On peut construire des images, les pousser vers un **registry** (Docker Hub, GitLab, Nexus) et les déployer automatiquement.

---

## 10. Orchestration
L’orchestration gère plusieurs conteneurs à grande échelle.  
- **Docker Swarm** : orchestration native Docker (simple à utiliser).  
- **Kubernetes** : standard industriel, puissant et complet pour gérer des clusters de conteneurs.  

---

## 11. Cas pratiques
- Dockeriser une application **Spring Boot + MySQL**  
- Dockeriser une application **Angular + Nginx**  
- Créer un environnement complet avec **Docker Compose**  

---

## 12. Ressources et exercices
- [Documentation officielle Docker](https://docs.docker.com/)  
- Exercices pratiques :  
  - Créer un conteneur Nginx et afficher une page HTML custom  
  - Construire une image personnalisée avec Dockerfile  
  - Déployer une app multi-conteneurs avec Docker Compose  
