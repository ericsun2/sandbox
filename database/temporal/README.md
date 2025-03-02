Customize and enhance the vanilla https://github.com/temporalio/temporal/blob/main/schema with `Hash Partition`

# Postgres
curl -O https://raw.githubusercontent.com/temporalio/temporal/refs/heads/main/schema/postgresql/v12/temporal/schema.sql

The OSS schema.sql has no partition defined, yet practically the biggest tables
must be partitioned for the scalability. Based on stats collected from a heavy
Temporal instance, we need to at least partition `executions` and `history_node`
to reduce index maintenance overhead and improve write throughput and query latency.

`diff schema.sql schema.partitioned.sql > diff.txt`

----

Because OSS Temporal does not provide optimized DDL, this directory offers the minimal changes to scale Postgres deployment.

`POSTGRES_SEEDS` must be in env already to run `auto-setup.sh`:
```
    temporal-sql-tool --plugin postgres12 --ep "${POSTGRES_SEEDS}" -u "${POSTGRES_USER}" -p "${DB_PORT}" --db "${DBNAME}" setup-schema -v 0.0
    temporal-sql-tool --plugin postgres12 --ep "${POSTGRES_SEEDS}" -u "${POSTGRES_USER}" -p "${DB_PORT}" --db "${DBNAME}" update-schema -d "${SCHEMA_DIR}"
```

We need to slide in the **partitioned** DDL into the `/temporal/schema` directory or manually migrate an existing Postgres database.

For example:
```
% cd v1.26
% ln -f ../schema/postgresql/v12/temporal/schema.partitioned.sql postgresql.schema.partitioned.sql
% ls -l
total 80
-rw-r--r--     2344 Feb 11 10:10 Dockerfile
-rw-r--r--    10868 Feb 11 11:00 auto-setup.sh
-rw-r--r--     1987 Feb 11 11:00 entrypoint.sh
-rw-r--r--    12576 Feb 15 11:33 postgresql.schema.partitioned.sql  ## hardlink
-rw-r--r--      549 Feb 11 10:10 start-temporal.sh
% docker build -t temporal-v1.26 -f Dockerfile .
```

# MySql
`curl -O https://raw.githubusercontent.com/temporalio/temporal/refs/heads/main/schema/mysql/v8/temporal/schema.sql`

Because `run_id` is **BINARY**, we can't use HASH() here, so we use the traditional KEY() instead.

`PARTITION BY KEY()`
