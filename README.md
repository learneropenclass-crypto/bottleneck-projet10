# Projet 10 — BottleNeck
## Automatisation de la chaîne de traitement des données vins

Pipeline de données automatisé : nettoyage, fusion, calcul CA, détection vins premium.

**Stack technique :** Kestra · DuckDB · Python · Z-score · Docker

## Structure du projet
bottleneck/

├── docker-compose.yml          # Infrastructure Docker (Kestra + Postgres)

├── Dockerfile                  # Image Kestra personnalisée avec dépendances Python

├── bottleneck_workflow.yaml    # Workflow Kestra complet (6 tâches + 6 tests)

├── data/

│   ├── inputs/                 # Fichiers sources mensuels (erp, liaison, web)

│   └── outputs/                # Rapports générés automatiquement

└── exports_exemple/            # Exemple de fichiers générés

├── rapport_ca.xlsx

├── vins_premium.csv

└── vins_ordinaires.csv## Lancer le pipeline

```powershell
cd "$HOME\bottleneck"
docker compose up -d
```

Puis dans Kestra (http://localhost:8080) → Flows → bottleneck_pipeline → Execute.

## Résultats

- CA total : 70 318 €
- 712 produits réconciliés
- 30 vins premium (z-score > 2)
- 682 vins ordinaires
