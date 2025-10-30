Excellent Badr 👌
Voici la **liste complète et claire** de **toutes les annotations et mots-clés importants** utilisés en **JUnit 5** et **Mockito**, avec leur **signification** et leur **utilisation typique**.
C’est une **fiche de référence complète**, utile pour les entretiens et la pratique professionnelle.

---

# 🧩 **JUnit 5 – Toutes les annotations et mots-clés**

| Annotation / Mot-clé                   | Description                                                                     |
| -------------------------------------- | ------------------------------------------------------------------------------- |
| `@Test`                                | Indique qu’une méthode est un test unitaire.                                    |
| `@BeforeEach`                          | Méthode exécutée **avant chaque test**. Sert à initialiser les données.         |
| `@AfterEach`                           | Méthode exécutée **après chaque test**. Sert à nettoyer les ressources.         |
| `@BeforeAll`                           | Exécutée **une seule fois avant tous les tests** (méthode statique par défaut). |
| `@AfterAll`                            | Exécutée **une seule fois après tous les tests**.                               |
| `@DisplayName("Nom du test")`          | Donne un nom lisible au test.                                                   |
| `@Disabled`                            | Désactive temporairement un test (ignoré à l’exécution).                        |
| `@Tag("nom")`                          | Permet de **catégoriser** les tests (ex. `@Tag("integration")`).                |
| `@RepeatedTest(n)`                     | Exécute le test **n fois**.                                                     |
| `@Timeout(value)`                      | Échoue si le test dépasse une durée limite.                                     |
| `@Nested`                              | Définit des **classes de test imbriquées** pour mieux organiser les tests.      |
| `@Order(n)`                            | Définit **l’ordre d’exécution** des tests.                                      |
| `@TestInstance(Lifecycle.PER_CLASS)`   | Permet d’utiliser des méthodes non statiques avec `@BeforeAll` et `@AfterAll`.  |
| `@ParameterizedTest`                   | Permet d’exécuter un test avec **plusieurs jeux de données**.                   |
| `@ValueSource`                         | Fournit une **liste de valeurs simples** à un test paramétré.                   |
| `@CsvSource`                           | Fournit **plusieurs lignes de données** sous forme CSV pour un test.            |
| `@CsvFileSource(resources="file.csv")` | Charge les données depuis un fichier CSV.                                       |
| `@EnumSource(Enum.class)`              | Fournit les valeurs d’une énumération.                                          |
| `@MethodSource("nomMethode")`          | Utilise une méthode qui fournit un `Stream` de paramètres.                      |
| `@TempDir`                             | Crée un dossier temporaire pour les tests.                                      |
| `@ExtendWith(...)`                     | Étend JUnit avec des fonctionnalités externes (comme Mockito).                  |

---

## 🔹 **Mots-clés (JUnit 5 Assertions)**

| Mot-clé                                            | Utilité                                                |
| -------------------------------------------------- | ------------------------------------------------------ |
| `assertEquals(expected, actual)`                   | Vérifie l’égalité.                                     |
| `assertNotEquals(a, b)`                            | Vérifie la différence.                                 |
| `assertTrue(condition)`                            | Vérifie que la condition est vraie.                    |
| `assertFalse(condition)`                           | Vérifie que la condition est fausse.                   |
| `assertNull(obj)`                                  | Vérifie que la valeur est nulle.                       |
| `assertNotNull(obj)`                               | Vérifie que la valeur n’est pas nulle.                 |
| `assertSame(obj1, obj2)`                           | Vérifie que deux objets sont **les mêmes références**. |
| `assertNotSame(obj1, obj2)`                        | Vérifie qu’ils ne sont **pas les mêmes références**.   |
| `assertThrows(Exception.class, () -> code)`        | Vérifie qu’une exception est levée.                    |
| `assertDoesNotThrow(() -> code)`                   | Vérifie qu’aucune exception n’est levée.               |
| `assertTimeout(Duration.ofSeconds(n), () -> code)` | Vérifie que le code s’exécute avant un temps donné.    |
| `assertAll("titre", ...)`                          | Groupe plusieurs assertions.                           |
| `fail("message")`                                  | Force un échec manuel du test.                         |

---

# 🧰 **Mockito – Toutes les annotations et mots-clés**

Mockito est utilisé pour **simuler** (mock) des dépendances externes (services, DAO, API...) dans les tests.

---

## 🧩 **Annotations Mockito**

| Annotation                            | Description                                                               |
| ------------------------------------- | ------------------------------------------------------------------------- |
| `@Mock`                               | Crée un **faux objet simulé** (mock).                                     |
| `@InjectMocks`                        | Injecte automatiquement les mocks dans la classe à tester.                |
| `@Spy`                                | Crée un **espion**, c’est-à-dire un objet réel mais partiellement simulé. |
| `@Captor`                             | Capture les arguments passés à une méthode.                               |
| `@ExtendWith(MockitoExtension.class)` | Active les annotations Mockito dans JUnit 5.                              |
| `@MockBean`                           | (Spécifique à Spring Boot) — simule un bean du contexte Spring.           |

---

## 🧠 **Mots-clés Mockito importants**

| Mot-clé                                         | Rôle                                                                      |
| ----------------------------------------------- | ------------------------------------------------------------------------- |
| `Mockito.mock(Class.class)`                     | Crée un mock manuellement.                                                |
| `when(obj.method()).thenReturn(value)`          | Définit le comportement du mock.                                          |
| `when(obj.method()).thenThrow(Exception.class)` | Simule une exception.                                                     |
| `doReturn(value).when(obj).method()`            | Variante utilisée pour les `@Spy`.                                        |
| `doThrow(Exception.class).when(obj).method()`   | Simule une exception sur un spy.                                          |
| `doNothing().when(obj).method()`                | Simule une méthode vide (souvent pour `void`).                            |
| `verify(mock).method()`                         | Vérifie qu’une méthode a été appelée.                                     |
| `verify(mock, times(n)).method()`               | Vérifie qu’une méthode a été appelée **n fois**.                          |
| `verify(mock, never()).method()`                | Vérifie qu’une méthode **n’a jamais été appelée**.                        |
| `verify(mock, atLeastOnce())`                   | Vérifie qu’elle a été appelée au moins une fois.                          |
| `verifyNoInteractions(mock)`                    | Vérifie qu’aucune interaction n’a eu lieu avec le mock.                   |
| `verifyNoMoreInteractions(mock)`                | Vérifie qu’il n’y a **aucune autre interaction** après les vérifications. |
| `ArgumentCaptor<T>`                             | Capture l’argument passé à une méthode pour vérification.                 |
| `reset(mock)`                                   | Réinitialise un mock (toutes les interactions sont effacées).             |
| `any()`, `anyInt()`, `anyString()`              | Correspondants génériques pour les arguments.                             |
| `eq(value)`                                     | Vérifie qu’un argument correspond exactement à une valeur.                |
| `isNull()` / `notNull()`                        | Vérifie les arguments nuls ou non nuls.                                   |

---

## 🧮 **Exemple combiné JUnit + Mockito**

```java
@ExtendWith(MockitoExtension.class)
class UserServiceTest {

    @Mock
    private UserRepository repository;

    @InjectMocks
    private UserService service;

    @Test
    void shouldReturnUser_whenIdIsValid() {
        // Définir comportement
        when(repository.findById(1L)).thenReturn(Optional.of(new User("Badr")));

        // Appeler méthode
        User user = service.getUser(1L);

        // Vérifier résultats
        assertNotNull(user);
        assertEquals("Badr", user.getName());

        // Vérifier interaction
        verify(repository, times(1)).findById(1L);
    }
}
```

---

# 🧠 **Résumé pratique**

### 🔸 Annotations JUnit principales :

`@Test`, `@BeforeEach`, `@AfterEach`, `@BeforeAll`, `@AfterAll`, `@DisplayName`, `@Disabled`, `@ParameterizedTest`, `@ValueSource`

### 🔸 Assertions clés :

`assertEquals`, `assertTrue`, `assertThrows`, `assertAll`, `fail`

### 🔸 Annotations Mockito :

`@Mock`, `@InjectMocks`, `@Spy`, `@Captor`, `@ExtendWith(MockitoExtension.class)`

### 🔸 Méthodes Mockito essentielles :

`when()`, `thenReturn()`, `verify()`, `any()`, `eq()`, `doReturn()`, `doThrow()`

---

Souhaites-tu que je te fasse ensuite une **fiche pratique PDF** avec **toutes ces annotations + exemples de chaque cas (JUnit et Mockito)** pour révision rapide avant un entretien ?
