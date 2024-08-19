/*
 Copyright 2024 Google LLC

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 https://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */
-- name: collection-postgres-replication-roles
with src as (
  SELECT rolreplication FROM pg_catalog.pg_roles WHERE rolname=%s;
)
select :PKEY as pkey,
  :DMA_SOURCE_ID as dma_source_id,
  :DMA_MANUAL_ID as dma_manual_id,
  src.rolreplication,
  current_database() as database_name
from src;

-- name: collection-postgres-rds-replication-roles
with src as (
  SELECT FROM pg_catalog.pg_has_role('rds_replication','member') as has_rds_pg_role
  from pg_extension;
)
select :PKEY as pkey,
  :DMA_SOURCE_ID as dma_source_id,
  :DMA_MANUAL_ID as dma_manual_id,
  src.has_rds_pg_role,
  current_database() as database_name
from src;
