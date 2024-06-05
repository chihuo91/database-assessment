--
-- Copyright 2024 Google LLC
--
-- Licensed under the Apache License, Version 2.0 (the "License").
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     https://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--
-- This file intentionally left empty
spool &outputdir/opdb__cpucoresusage__&v_tag
prompt PKEY|DT|CPU_COUNT|CPU_CORE_COUNT|CPU_SOCKET_COUNT|DMA_SOURCE_ID|DMA_MANUAL_ID
spool off
