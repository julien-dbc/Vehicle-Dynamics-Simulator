# 🏎️ Vehicle Dynamics Simulator

<div align="center">
  <img src="https://img.shields.io/badge/MATLAB-e2000f?style=for-the-badge&logo=mathworks&logoColor=white" alt="MATLAB" />
  <img src="https://img.shields.io/badge/App_Designer-0076A8?style=for-the-badge&logo=mathworks&logoColor=white" alt="App Designer" />
  <img src="https://img.shields.io/badge/Vehicle_Dynamics-4B0082?style=for-the-badge&logo=model-s&logoColor=white" alt="Vehicle Dynamics" />
  <img src="https://img.shields.io/badge/Physics_Simulation-FF8C00?style=for-the-badge&logo=physics&logoColor=white" alt="Physics" />
</div>

---

## 🇬🇧 English Version

### 📖 Overview
* 🎯 **Challenge:** Develop an analytical tool to predict and visualize the complex physical behavior of different vehicle types under varying driving and environmental conditions.
* 🛠️ **Solution:** Designed a custom graphical simulation application using MATLAB App Designer. The core engine implements mathematical physics models (bicycle model) to calculate trajectory, lateral acceleration, yaw rate, and slip angles.
* 📈 **Impact:** Delivered a scalable UI that allows users to seamlessly simulate handling characteristics and evaluate rollover risks for city cars, SUVs, and hovercrafts across multiple scenarios (dry, wet, snow, ice).

### 🧠 Simulation Engine & Physics Model
The simulator's core relies on a mathematical representation of vehicle dynamics, solving state equations numerically using the Euler integration method over time steps (`dt`).

* **Vehicle Modeling:** The application allows selection between different vehicle profiles ("Voiture Legere" / City Car, "SUV", "Aéroglisseur" / Hovercraft). Each profile loads specific mechanical parameters (`get_parametres_vehicule.m`):
  * Mass ($m$) and Yaw Inertia ($I_z$).
  * Center of gravity position (distances to front $L_f$ and rear $L_r$ axles, and height $h$).
  * Front and rear tire cornering stiffness ($C_f$, $C_r$).
* **Tire-Road Interaction:** The friction coefficient ($\mu$) is dynamically loaded based on the selected road surface (Dry, Wet, Snow, Ice) via `get_mu_sol.m`.
* **Contact Models:** The user can switch between two tire behavior models:
  * **Linear:** Assumes lateral forces are strictly proportional to slip angles (valid only for small angles).
  * **Linear with Saturation:** A more realistic model that limits lateral forces based on the maximum available friction ($F_{max} = \mu \cdot F_z$), introducing slip and drift behaviors at high speeds or tight steering angles.
* **Outputs Calculated:**
  * Global XY Trajectory.
  * Lateral Acceleration at the Center of Gravity (with safety thresholds for rollover risk).
  * Real vs. Theoretical Yaw Rate.
  * Front and Rear Slip Angles ($\delta_f$, $\delta_r$).

### 💻 Application Structure & Usage
The project is structured around the App Designer UI and modular MATLAB scripts.

1. **Prerequisites:** MATLAB (with App Designer support).
2. **Launch:** Run `app2.mlapp` to open the graphical interface.
3. **Configuration:**
   * Select a vehicle type.
   * Set the initial speed using the dial.
   * Choose a scenario (e.g., Simple Turn, Emergency Avoidance/Braking).
   * Select one or more road conditions to compare them simultaneously.
   * Define the steering wheel angle and total simulation time.
   * Toggle the tire contact model (Linear vs. Saturation).
4. **Execution:** Click "Lancer Simulation". The `simulateur_dynamique.m` engine will process the parameters and plot the resulting dynamics on the six dashboard graphs.

### 📂 Documentation & Media
* **Media:** See `simulateur.mp4` for a walkthrough of the UI and simulation results.
* **Technical Report:** A comprehensive PDF report (`Dynamique du véhicule.pdf`) details the mathematical derivations, the bicycle model theory, and an analysis of understeer/oversteer characteristics.

### ⚖️ Copyright & License
This project was developed as part of the engineering curriculum at SeaTech. All rights reserved. The documentation, source code, and reports are subject to copyright and intended for educational display only.

---
---

## 🇫🇷 Version Française

### 📖 Vue d'ensemble
* 🎯 **Défi :** Développer un outil d'analyse pour prédire et visualiser le comportement physique complexe de différents types de véhicules sous diverses conditions de conduite et d'environnement.
* 🛠️ **Solution :** Conception d'une application de simulation graphique personnalisée via MATLAB App Designer. Le moteur de calcul implémente des modèles physiques mathématiques (modèle bicyclette) pour calculer la trajectoire, l'accélération latérale, la vitesse de lacet et les angles de dérive.
* 📈 **Impact :** Livraison d'une interface évolutive permettant de simuler la tenue de route et d'évaluer les risques de retournement pour des citadines, des SUV et des aéroglisseurs selon plusieurs scénarios (sec, mouillé, neige, verglas).

### 🧠 Moteur de Simulation & Modèle Physique
Le cœur du simulateur repose sur la modélisation dynamique du véhicule, résolvant numériquement les équations d'état via la méthode d'intégration d'Euler sur un pas de temps (`dt`).

* **Modélisation des Véhicules :** L'application permet de choisir entre plusieurs profils (Voiture Légère, SUV, Aéroglisseur). Chaque profil charge des paramètres mécaniques spécifiques (`get_parametres_vehicule.m`) :
  * Masse ($m$) et Inertie de lacet ($I_z$).
  * Position du centre de gravité (distances essieux $L_f$, $L_r$ et hauteur $h$).
  * Rigidité de dérive des pneumatiques avant et arrière ($C_f$, $C_r$).
* **Interaction Pneu-Route :** Le coefficient d'adhérence ($\mu$) est défini dynamiquement selon le type de sol sélectionné (Sec, Mouillé, Neige, Verglas) via `get_mu_sol.m`.
* **Modèles de Contact :** L'utilisateur peut basculer entre deux comportements de pneumatiques :
  * **Linéaire :** Suppose que les forces latérales sont strictement proportionnelles aux angles de dérive (valide uniquement pour de petits angles).
  * **Linéaire avec Saturation :** Modèle plus réaliste qui plafonne les forces latérales en fonction de l'adhérence maximale disponible ($F_{max} = \mu \cdot F_z$), introduisant des comportements de glissement à haute vitesse.
* **Données Calculées :**
  * Trajectoire globale XY.
  * Accélération latérale au Centre de Gravité (avec seuils de risque de retournement).
  * Vitesse de lacet réelle vs théorique.
  * Angles de dérives avant et arrière ($\delta_f$, $\delta_r$).

### 💻 Structure de l'Application & Utilisation
Le projet s'articule autour de l'interface App Designer et de scripts MATLAB modulaires.

1. **Prérequis :** MATLAB.
2. **Lancement :** Exécuter `app2.mlapp` pour ouvrir l'interface graphique.
3. **Configuration :**
   * Sélectionner un type de véhicule.
   * Définir la vitesse initiale via le cadran.
   * Choisir un scénario (ex: Virage, Évitement d'urgence).
   * Sélectionner un ou plusieurs états de la route pour les comparer.
   * Définir l'angle du volant et la durée de la simulation.
   * Choisir le modèle de contact du pneu (Linéaire ou Saturation).
4. **Exécution :** Cliquer sur "Lancer Simulation". Le moteur `simulateur_dynamique.m` traitera les paramètres et affichera les résultats sur les six graphiques du tableau de bord.

### 📂 Documentation & Médias
* **Médias :** Voir `simulateur.mp4` pour une démonstration de l'interface et des résultats de simulation.
* **Rapport Technique :** Un rapport PDF complet (`Dynamique du véhicule.pdf`) détaille les dérivations mathématiques, la théorie du modèle bicyclette et l'analyse des comportements sous-vireur et sur-vireur.

### ⚖️ Droits d'auteur & Licence
Ce projet a été réalisé dans le cadre du cursus ingénieur à SeaTech. Tous droits réservés. Le code, les médias et le rapport sont protégés par le droit d'auteur.
