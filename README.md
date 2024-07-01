# Projet d'Archivage de Rapports d'Exécution

Bienvenue dans le projet d'archivage de rapports d'exécution. Ce manuel d'utilisation vous guidera pour configurer et utiliser le projet en fonction de vos besoins.

## Table des matières
1. [Introduction](#introduction)
2. [Pré-requis](#pré-requis)
3. [Choix de la source de données](#choix-de-la-source-de-données)
    - [GitHub](#github)
    - [Artifactory](#artifactory)
    - [Jira](#jira)
4. [Choix de l'outil d'archivage des rapports](#choix-de-loutil-darchivage-des-rapports)
    - [Archivage dans GitHub](#archivage-dans-github)
    - [Archivage dans Artifactory](#archivage-dans-artifactory)
    - [Archivage dans Jira](#archivage-dans-jira)
5. [Configuration](#configuration)
6. [Utilisation](#utilisation)
7. [Support](#support)
8. [Licence](#licence)

## Introduction
Ce projet permet d'archiver les rapports d'exécution générés à partir de différentes sources de données comme GitHub, Artifactory, ou Jira. Vous pouvez également choisir où archiver ces rapports: sur GitHub, Artifactory, ou Jira.

## Pré-requis
- Python 3.8 ou supérieur
- Accès aux API des outils sélectionnés (GitHub, Artifactory, Jira)
- Clés d'API ou tokens d'authentification pour les outils choisis

## Choix de la source de données

### GitHub
Pour utiliser GitHub comme source de données, suivez les étapes ci-dessous :

1. Obtenez un token d'authentification GitHub.
2. Configurez les paramètres de connexion dans le fichier `config.yaml`.

### Artifactory
Pour utiliser Artifactory comme source de données, suivez les étapes suivantes :

1. Obtenez les informations d'authentification Artifactory.
2. Configurez les paramètres de connexion dans le fichier `config.yaml`.

### Jira
Pour utiliser Jira comme source de données, procédez comme suit :

1. Obtenez un token d'authentification Jira.
2. Configurez les paramètres de connexion dans le fichier `config.yaml`.

## Choix de l'outil d'archivage des rapports

### Archivage dans GitHub
Pour archiver les rapports d'exécution dans GitHub, suivez ces instructions :

1. Configurez votre dépôt GitHub où les rapports seront archivés.
2. Mettez à jour le fichier `config.yaml` avec les détails du dépôt.

### Archivage dans Artifactory
Pour archiver les rapports dans Artifactory, procédez comme suit :

1. Configurez votre instance Artifactory.
2. Mettez à jour le fichier `config.yaml` avec les informations de connexion.

### Archivage dans Jira
Pour archiver les rapports dans Jira, suivez ces étapes :

1. Configurez votre projet Jira pour recevoir les rapports.
2. Mettez à jour le fichier `config.yaml` avec les détails du projet.

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
