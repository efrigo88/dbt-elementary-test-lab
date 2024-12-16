# dbt+spark simple pipeline

This is a practice dbt+spark pipeline with delta and elementary observability. 
Meant for learning purposes.

Steps to execute.

1. Set up postgreSQL
```
docker compose up -d
```

2. Install libraries
```
poetry install
```

3. Install dbt deps
```
cd dbt_pipeline
poetry run dbt deps
```

4. Seed files and run models
```
poetry run dbt seed && poetry run dbt run
```

5. Run dbt tests
```
poetry run dbt test
```

6. Execute elementary report
```
poetry run edr report
```
