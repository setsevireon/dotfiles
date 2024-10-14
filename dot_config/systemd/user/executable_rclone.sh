#!/bin/bash

declare -ra DIRS_TO_SYNC=(
  "organize"
  "writing"
  "resume"
  "templates"
)

for DIR in "${DIRS_TO_SYNC[@]}"; do
  rclone bisync proton:"${DIR}" "${HOME}/${DIR}" \
    --verbose \
    --metadata \
    --backup-dir1 proton:deleted \
    --backup-dir2 "${HOME}/deleted" \
    --create-empty-src-dirs \
    --compare size,modtime,checksum \
    --conflict-resolve newer \
    --conflict-loser pathname \
    --conflict-suffix conflict-{DateOnly}-proton,conflict-{DateOnly}-wizardtower \
    --resilient \
    --recover \
    --no-slow-hash \
    --resync
done
