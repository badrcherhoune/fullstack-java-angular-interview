# Questions d’Entretien Angular (avec Réponses)

## 1. Qu’est-ce qu’Angular et pourquoi l’utiliser ?
**Réponse :**  
Angular est un **framework front-end open-source** basé sur TypeScript développé par Google. Il permet de créer des applications web **dynamiques et modulaires** avec :
- Data binding bidirectionnel
- Composants réutilisables
- Gestion de l’état et du routing
- Architecture MVC/MVVM pour séparer logique et vue

---

## 2. Quelle est la différence entre Angular et AngularJS ?
**Réponse :**  
- AngularJS (v1.x) : basé sur JavaScript, utilise des **scopes** et le **two-way binding** via `ng-*` directives.  
- Angular (v2+) : basé sur **TypeScript**, utilise **composants**, **modules**, **services**, et un moteur de rendu plus performant.

---

## 3. Qu’est-ce qu’un Composant dans Angular ?
**Réponse :**  
Un **Composant** est une unité fonctionnelle qui combine :
- **Template HTML** (vue)
- **Classe TypeScript** (logique)
- **Styles CSS**  
Les composants sont **réutilisables** et sont déclarés dans un module Angular.

---

## 4. Qu’est-ce qu’un Module dans Angular ?
**Réponse :**  
Un **Module** (`NgModule`) est un conteneur qui regroupe des composants, services, directives et pipes. Il permet de :
- Organiser l’application en parties logiques
- Gérer les dépendances
- Importer/exporter des fonctionnalités entre modules

---

## 5. Qu’est-ce qu’un Service et Dependency Injection ?
**Réponse :**  
- Un **Service** contient la **logique métier réutilisable** (ex : appels HTTP, gestion de données).  
- **Dependency Injection (DI)** permet de fournir automatiquement les services aux composants, évitant la création manuelle d’instances.

---

## 6. Qu’est-ce que le Routing dans Angular ?
**Réponse :**  
Le **Routing** permet de naviguer entre différentes vues de l’application via **routes** définies dans le module de routing.  
- `RouterModule` gère la navigation
- `RouterOutlet` affiche le composant correspondant à la route
- Supporte les **lazy loading**, guards et paramètres de route

---

## 7. Qu’est-ce que le Two-Way Data Binding ?
**Réponse :**  
C’est la synchronisation automatique entre **le modèle (TypeScript)** et **la vue (HTML)**.  
- Utilise la syntaxe `[(ngModel)]`
- Tout changement dans la vue met à jour le modèle et vice versa

---

## 8. Quelle est la différence entre Observable et Promise dans Angular ?
**Réponse :**  
- **Promise** : exécute **une seule fois** et retourne une valeur future.  
- **Observable** : peut émettre **plusieurs valeurs** dans le temps, supporte le **streaming**, et est **annulable**.  
Angular utilise les **Observables** pour les appels HTTP (`HttpClient`).

---

## 9. Qu’est-ce que RxJS et comment est-il utilisé dans Angular ?
**Réponse :**  
- **RxJS** (Reactive Extensions for JavaScript) permet de **gérer des flux de données asynchrones** via des observables et des opérateurs (`map`, `filter`, `switchMap`, etc.).  
- Angular l’utilise pour : HTTP, formulaires réactifs, événements utilisateur.

---

## 10. Qu’est-ce que le Lazy Loading ?
**Réponse :**  
Le **Lazy Loading** permet de charger des modules **à la demande** au lieu de charger toute l’application au démarrage, améliorant la performance.  
- Utilise `loadChildren` dans les routes
- Réduit le temps de chargement initial de l’application

---

## 11. Qu’est-ce qu’un Pipe dans Angular ?
**Réponse :**  
Un **Pipe** transforme les données avant de les afficher dans le template (ex : format de date, monnaie, filtre).  
- Angular propose des pipes intégrés (`DatePipe`, `CurrencyPipe`)  
- Possibilité de créer des **custom pipes**

---

## 12. Quelle est la différence entre Template-driven et Reactive Forms ?
**Réponse :**  
- **Template-driven Forms** : définition dans le template HTML, simple mais moins flexible.  
- **Reactive Forms** : définition dans TypeScript, offre **plus de contrôle**, validation réactive, et testabilité élevée.

---

## 13. Comment sécuriser une application Angular ?
**Réponse :**  
- Utiliser **guards** pour protéger les routes (`CanActivate`, `CanLoad`)  
- Authentification avec **JWT**  
- Validation côté client et côté serveur  
- Utiliser `HttpInterceptor` pour ajouter des tokens aux requêtes

---

## 14. Qu’est-ce qu’un HttpInterceptor ?
**Réponse :**  
Un **HttpInterceptor** intercepte toutes les requêtes et réponses HTTP pour :
- Ajouter un **token d’authentification**
- Gérer les erreurs globalement
- Logger ou modifier les requêtes/réponses

---

## 15. Quelles sont les meilleures pratiques Angular ?
**Réponse :**  
- Séparer composants, services et modules  
- Utiliser **lazy loading** pour les modules volumineux  
- Utiliser des **Observables** pour les flux asynchrones  
- Écrire des tests unitaires (`Jasmine`, `Karma`) et d’intégration  
- Optimiser la taille du bundle (`Tree Shaking`, AOT Compilation)

---

## 16. Questions Avancées pour Profil Confirmé
- Comment optimiser la performance d’une application Angular ?  
- Explique la **détection de changements (Change Detection)** et `OnPush`.  
- Qu’est-ce que l’**Angular CLI** et comment l’utiliser pour générer des modules et composants ?  
- Comment gérer l’état global avec **NgRx** ou **BehaviorSubject** ?  
- Comment implémenter la **communication entre composants** (Input, Output, Services partagés) ?