#!/bin/bash
originalfile="env.js"
tmpfile=$(mktemp)
cp --attributes-only --preserve $originalfile $tmpfile
cat $originalfile | tee $tmpfile && mv $tmpfile $originalfile
exec "$@"
