# Projet d'Archivage de Rapports d'Exécution

Bienvenue dans le projet d'archivage de rapports d'exécution. Ce manuel d'utilisation vous guidera pour configurer et utiliser le projet en fonction de vos besoins.

## Table des matières
1. [Introduction](#introduction)
2. [Pré-requis](#pré-requis)
3. [Configuration des fichiers](#configuration-des-fichiers)
    - [Fichier dataset.csv](#fichier-datasetcsv)
    - [Fichier properties](#fichier-properties)
4. [Choix de la source de données et de l'outil d'archivage](#choix-de-la-source-de-données-et-de-loutil-darchivage)
    - [Matrice des choix](#matrice-des-choix)
5. [Configuration](#configuration)
6. [Utilisation](#utilisation)
7. [Configuration du workflow GitHub](#configuration-du-workflow-github)
8. [Support](#support)
9. [Licence](#licence)

## Introduction
Ce projet permet d'archiver les rapports d'exécution générés à partir de différentes sources de données comme GitHub, Artifactory, ou Jira. Vous pouvez également choisir où archiver ces rapports: sur GitHub, Artifactory, ou Jira.

## Pré-requis
- Python 3.8 ou supérieur
- Accès aux API des outils sélectionnés (GitHub, Artifactory, Jira)
- Clés d'API ou tokens d'authentification pour les outils choisis

## Configuration des fichiers

### Fichier dataset.csv
L'utilisateur doit lister les assets à scanner dans un fichier nommé `dataset.csv`. Chaque ligne de ce fichier représente un asset à scanner.

### Fichier properties
L'utilisateur doit configurer les sources de données dans un fichier `properties`. Ce fichier doit inclure les informations nécessaires pour se connecter aux sources de données choisies.

## Choix de la source de données et de l'outil d'archivage

### Matrice des choix

| Source de données | Outil d'archivage | Lien vers la section |
|-------------------|-------------------|----------------------|
| GitHub            | GitHub            | [GitHub vers GitHub](#github-vers-github) |
| GitHub            | Artifactory       | [GitHub vers Artifactory](#github-vers-artifactory) |
| GitHub            | Jira              | [GitHub vers Jira](#github-vers-jira) |
| Artifactory       | GitHub            | [Artifactory vers GitHub](#artifactory-vers-github) |
| Artifactory       | Artifactory       | [Artifactory vers Artifactory](#artifactory-vers-artifactory) |
| Artifactory       | Jira              | [Artifactory vers Jira](#artifactory-vers-jira) |
| Jira              | GitHub            | [Jira vers GitHub](#jira-vers-github) |
| Jira              | Artifactory       | [Jira vers Artifactory](#jira-vers-artifactory) |
| Jira              | Jira              | [Jira vers Jira](#jira-vers-jira) |

### GitHub vers GitHub
Pour utiliser GitHub comme source de données et GitHub comme outil d'archivage, suivez les étapes ci-dessous :

1. Obtenez un token d'authentification GitHub.
2. Configurez les paramètres de connexion dans le fichier `config.yaml`.
3. Configurez votre dépôt GitHub où les rapports seront archivés.
4. Mettez à jour le fichier `config.yaml` avec les détails du dépôt.

### GitHub vers Artifactory
Pour utiliser GitHub comme source de données et Artifactory comme outil d'archivage, suivez les étapes ci-dessous :

1. Obtenez un token d'authentification GitHub.
2. Configurez les paramètres de connexion dans le fichier `config.yaml`.
3. Configurez votre instance Artifactory.
4. Mettez à jour le fichier `config.yaml` avec les informations de connexion.

### GitHub vers Jira
Pour utiliser GitHub comme source de données et Jira comme outil d'archivage, suivez les étapes ci-dessous :

1. Obtenez un token d'authentification GitHub.
2. Configurez les paramètres de connexion dans le fichier `config.yaml`.
3. Configurez votre projet Jira pour recevoir les rapports.
4. Mettez à jour le fichier `config.yaml` avec les détails du projet.

### Artifactory vers GitHub
Pour utiliser Artifactory comme source de données et GitHub comme outil d'archivage, suivez les étapes ci-dessous :

1. Obtenez les informations d'authentification Artifactory.
2. Configurez les paramètres de connexion dans le fichier `config.yaml`.
3. Configurez votre dépôt GitHub où les rapports seront archivés.
4. Mettez à jour le fichier `config.yaml` avec les détails du dépôt.

### Artifactory vers Artifactory
Pour utiliser Artifactory comme source de données et Artifactory comme outil d'archivage, suivez les étapes ci-dessous :

1. Obtenez les informations d'authentification Artifactory.
2. Configurez les paramètres de connexion dans le fichier `config.yaml`.
3. Configurez votre instance Artifactory.
4. Mettez à jour le fichier `config.yaml` avec les informations de connexion.

### Artifactory vers Jira
Pour utiliser Artifactory comme source de données et Jira comme outil d'archivage, suivez les étapes ci-dessous :

1. Obtenez les informations d'authentification Artifactory.
2. Configurez les paramètres de connexion dans le fichier `config.yaml`.
3. Configurez votre projet Jira pour recevoir les rapports.
4. Mettez à jour le fichier `config.yaml` avec les détails du projet.

### Jira vers GitHub
Pour utiliser Jira comme source de données et GitHub comme outil d'archivage, suivez les étapes ci-dessous :

1. Obtenez un token d'authentification Jira.
2. Configurez les paramètres de connexion dans le fichier `config.yaml`.
3. Configurez votre dépôt GitHub où les rapports seront archivés.
4. Mettez à jour le fichier `config.yaml` avec les détails du dépôt.

### Jira vers Artifactory
Pour utiliser Jira comme source de données et Artifactory comme outil d'archivage, suivez les étapes ci-dessous :

1. Obtenez un token d'authentification Jira.
2. Configurez les paramètres de connexion dans le fichier `config.yaml`.
3. Configurez votre instance Artifactory.
4. Mettez à jour le fichier `config.yaml` avec les informations de connexion.

### Jira vers Jira
Pour utiliser Jira comme source de données et Jira comme outil d'archivage, suivez les étapes ci-dessous :

1. Obtenez un token d'authentification Jira.
2. Configurez les paramètres de connexion dans le fichier `config.yaml`.
3. Configurez votre projet Jira pour recevoir les rapports.
4. Mettez à jour le fichier `config.yaml` avec les détails du projet.

## Configuration
Après avoir choisi la source de données et l'outil d'archivage, configurez les paramètres dans le fichier `config.yaml` comme suit :

```yaml
data_source:
  type: github/artifactory/jira
  token: "your_token_here"
  other_parameters: "specific_to_the_tool"

archive_tool:
  type: github/artifactory/jira
  repository: "your_repository_here"
  other_parameters: "specific_to_the_tool"
