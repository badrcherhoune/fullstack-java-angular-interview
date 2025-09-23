# Threads et Programmation Concurrente en Java

Ce document couvre les concepts clés des threads et de la programmation concurrente en Java, depuis les notions de base jusqu’aux concepts avancés pour développeurs seniors.

---

## 1. Concepts de base

### Qu’est-ce qu’un thread en Java ?
Un thread est une unité d’exécution indépendante dans un programme Java, permettant l’exécution parallèle ou concurrente de tâches.

### Différence entre processus et thread
- **Processus** : exécution isolée avec sa propre mémoire.
- **Thread** : exécution dans un processus existant, partageant la mémoire du processus.

### Comment créer un thread en Java
- **Via Thread** : étendre la classe `Thread` et redéfinir `run()`.
- **Via Runnable** : implémenter l’interface `Runnable` et passer l’instance à un thread.

### Différence entre Runnable et Callable
- **Runnable** : ne retourne rien et ne peut lancer que des exceptions non vérifiées.
- **Callable** : retourne un résultat et peut lancer des exceptions vérifiées.

### Méthodes start() et run()
- `start()` : démarre un nouveau thread et appelle `run()` en arrière-plan.
- `run()` : exécute le code dans le thread actuel, sans créer de nouveau thread.

### Thread user vs daemon
- **User thread** : bloque la JVM jusqu’à sa fin.
- **Daemon thread** : ne bloque pas la JVM ; disparaît lorsque tous les threads user terminent.

---

## 2. Cycle de vie des threads

### États d’un thread
- **NEW** : thread créé mais pas démarré.
- **RUNNABLE** : prêt à s’exécuter, mais pas encore choisi par le scheduler.
- **BLOCKED** : en attente d’un verrou.
- **WAITING** : en attente d’une notification sans limite de temps.
- **TIMED_WAITING** : en attente d’une notification ou d’un timeout.
- **TERMINATED** : thread terminé.

### Méthodes utiles
- `Thread.sleep(ms)` : met le thread en pause. Si interrompu, `InterruptedException`.
- `Thread.yield()` : suggère au scheduler de céder le CPU à d’autres threads.

---

## 3. Synchronisation et sécurité des threads

### Pourquoi synchroniser ?
Pour éviter les accès concurrentiels qui pourraient corrompre l’état partagé.

### Mot-clé `synchronized`
- **Méthode synchronisée** : verrou sur l’instance (ou la classe si static).
- **Bloc synchronisé** : verrou sur un objet spécifique pour réduire la portée du lock.

### Locks explicites
- **ReentrantLock** : plus flexible que `synchronized`.
- Avantages : `tryLock()`, interruptions et conditions multiples.

### Condition variables
Permettent un contrôle plus fin sur l’attente et la notification des threads avec `await()` et `signal()`.

### Classes atomiques
- Ex : `AtomicInteger`, `AtomicReference`.
- Permettent des opérations thread-safe sans synchronisation explicite.

### Mot-clé `volatile`
- Garantit la visibilité des changements de variable entre threads.
- Différence avec `synchronized` : `volatile` ne garantit pas l’atomicité des opérations complexes.

---

## 4. Communication entre threads

### wait(), notify(), notifyAll()
- `wait()` : met le thread en attente sur l’objet monitor.
- `notify()` / `notifyAll()` : réveillent un ou tous les threads en attente.

### wait() vs sleep()
- `wait()` : libère le verrou, doit être dans un bloc synchronisé.
- `sleep()` : ne libère pas le verrou, juste une pause.

### Blocking queue
Permet une communication sécurisée entre threads producteurs et consommateurs.

### Producer-consumer problem
- Producteur ajoute des éléments dans une queue.
- Consommateur retire des éléments.
- Solution : utiliser `BlockingQueue` pour éviter les conflits et les blocages.

---

## 5. Frameworks et utilitaires de concurrence

### java.util.concurrent
Classes importantes : `ExecutorService`, `ScheduledExecutorService`, `BlockingQueue`, `ConcurrentHashMap`, `ForkJoinPool`.

### Thread pools
- **Fixed thread pool** : nombre fixe de threads.
- **Cached thread pool** : threads créés à la demande, supprimés après inactivité.
- **Single thread executor** : un seul thread pour exécuter les tâches.

### Future et CompletableFuture
- `Future` : permet d’obtenir un résultat asynchrone et gérer les exceptions.
- `CompletableFuture` : supporte la programmation asynchrone avec callbacks et combinaisons de tâches.

### ForkJoinPool
- Conçu pour les tâches récursives divisibles (divide-and-conquer).
- Optimisé pour le parallélisme massif.

---

## 6. Problèmes classiques de concurrence

### Deadlock
- Survient quand plusieurs threads attendent mutuellement des ressources.
- Prévention : acquisition ordonnée des locks, timeout.

### Livelock et starvation
- **Livelock** : threads actifs mais incapables de progresser.
- **Starvation** : un thread n’obtient jamais les ressources nécessaires.

### Race condition
- Accès concurrent à des données partagées sans synchronisation.
- Prévention : synchronisation, classes atomiques, immutabilité.

### Happens-before
- Contrat du Java Memory Model qui garantit l’ordre des actions visibles entre threads.

### Strong vs eventual consistency
- **Strong** : toutes les lectures voient les écritures précédentes.
- **Eventual** : la cohérence se fait après un certain temps.

---

## 7. Avancé / senior

### Thread-safe singleton
- Implémenter avec `enum`, `volatile + double-check` ou `synchronized`.

### Lock vs synchronized vs Atomic
- **Atomic** : performant pour opérations simples.
- **Synchronized** : simple mais peut bloquer.
- **Lock** : flexible, interruption possible.

### Tâches longues et interruption
- Vérifier `Thread.isInterrupted()` régulièrement.
- Utiliser `Future.cancel(true)` pour annuler des threads.

### Performance et bottlenecks
- Analyser avec `ThreadMXBean`, profiler et monitorer l’utilisation CPU/mémoire.

### Parallel streams vs ForkJoinPool
- Parallel streams utilisent un ForkJoinPool commun.
- ForkJoinPool permet plus de contrôle pour des tâches complexes.

### Immutable objects
- Objets immuables : thread-safe, pas besoin de synchronisation pour lecture.
- Utile pour partager des données entre threads sans risques.

---

