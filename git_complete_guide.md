# Cours Complet Git

## 1. Introduction à Git
Git est un **système de contrôle de version distribué**. Il permet de gérer les versions de fichiers, suivre l’historique des modifications et collaborer sur des projets.

### Avantages de Git :
- Historique complet des modifications.
- Possibilité de revenir à une version précédente.
- Collaboration facile avec plusieurs développeurs.
- Branching puissant pour expérimenter sans affecter la version principale.

---

## 2. Concepts Clés
- **Repository (repo)** : dossier contenant tous les fichiers du projet et l’historique Git.
- **Commit** : snapshot des modifications du projet.
- **Branch (branche)** : version parallèle du projet.
- **Merge** : fusion de branches.
- **Remote** : dépôt distant (ex: GitHub, GitLab).
- **Clone** : copier un repo distant localement.
- **Staging Area (index)** : zone intermédiaire avant le commit.
- **HEAD** : référence à la branche ou au commit actuel.

---

## 3. Installation et Configuration
```bash
# Vérifier si Git est installé
git --version

# Configurer le nom et l'email
git config --global user.name "Votre Nom"
git config --global user.email "email@example.com"

# Configurer l'éditeur par défaut
git config --global core.editor "code --wait" # VSCode
```

---

## 4. Initialiser un Repository
```bash
# Initialiser un repo Git local
git init

# Vérifier l'état des fichiers
git status
```

---

## 5. Travailler avec les Fichiers
```bash
# Ajouter un fichier au staging area
git add fichier.txt
git add . # ajouter tous les fichiers modifiés

# Créer un commit
git commit -m "Message décrivant les modifications"

# Voir l'historique des commits
git log
git log --oneline # version courte
```

---

## 6. Branches et Fusion
```bash
# Créer une branche
git branch ma-branche

# Changer de branche
git checkout ma-branche

# Créer et basculer directement
git checkout -b nouvelle-branche

# Fusionner une branche dans la branche actuelle
git merge ma-branche

# Supprimer une branche locale
git branch -d ma-branche
```

---

## 7. Travailler avec un Dépôt Distant
```bash
# Cloner un repo distant
git clone https://github.com/utilisateur/projet.git

# Ajouter un remote
git remote add origin https://github.com/utilisateur/projet.git

# Pousser les commits locaux
git push origin main

# Récupérer les commits distants
git pull origin main

# Voir les remotes
git remote -v
```

---

## 8. Gestion des Modifications
```bash
# Annuler les modifications dans un fichier
git checkout -- fichier.txt

# Supprimer un fichier du repo
git rm fichier.txt
git commit -m "Supprimer fichier"

# Déplacer/renommer un fichier
git mv ancien.txt nouveau.txt
git commit -m "Renommer fichier"
```

---

## 9. Stashing
```bash
# Sauvegarder les modifications
git stash

# Lister les stashes
git stash list

# Appliquer le dernier stash
git stash apply

# Appliquer et supprimer le stash
git stash pop
```

---

## 10. Rebase
```bash
# Rejouer les commits d'une branche sur une autre
git rebase main

# Annuler un rebase
git rebase --abort
```

---

## 11. Résolution de Conflits
1. Git marque les fichiers en conflit.
2. Modifier manuellement les conflits.
3. Ajouter les fichiers résolus :
```bash
git add fichier_conflit.txt
git commit
```

---

## 12. Historique et Réécriture
```bash
# Voir les différences
git diff
git diff HEAD fichier.txt

# Annuler un commit local (non pushé)
git reset --soft HEAD~1 # garder modifications
git reset --hard HEAD~1 # supprimer modifications

# Revenir à un commit précédent
git checkout <commit-hash>

# Revert : créer un commit annulant un précédent
git revert <commit-hash>
```

---

## 13. Tags
```bash
# Créer un tag
git tag v1.0

# Voir les tags
git tag

# Pousser un tag
git push origin v1.0
```

---

## 14. Gitignore
Créer un fichier `.gitignore` pour exclure certains fichiers :
```
# Ignorer les fichiers temporaires
*.log
*.tmp
node_modules/
dist/
```

---

## 15. Commandes Avancées
```bash
# Afficher le graphique des branches
git log --graph --oneline --all

# Supprimer un fichier du repo mais le garder localement
git rm --cached fichier.txt

# Vérifier la configuration
git config --list

# Blame : voir qui a modifié une ligne
git blame fichier.txt

# Cherry-pick : appliquer un commit spécifique d'une autre branche
git cherry-pick <commit-hash>
```

---

## 16. Bonnes Pratiques
- Commits petits et fréquents.
- Messages de commit clairs.
- Utiliser des branches pour chaque fonctionnalité.
- Toujours pull avant de push.
- Rebase plutôt que merge pour garder un historique linéaire (optionnel selon projet).
