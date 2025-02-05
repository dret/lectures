#!/bin/bash

# Find all staged .oas.yaml and .oas.json files
FILES=$(git diff --cached --name-only --diff-filter=ACM | grep -E '\.oas\.(yaml|json)$')

# If no OpenAPI files are found, exit successfully
if [[ -z "$FILES" ]]; then
  echo "✅ No OpenAPI files staged for commit. Skipping Spectral lint."
  exit 0
fi

# Run Spectral Lint on each staged file
echo "🔍 Running Spectral lint..."
ERRORS=0

for FILE in $FILES; do
  npx spectral lint "$FILE" --ruleset .spectral.yaml
  if [[ $? -ne 0 ]]; then
    ERRORS=1
  fi
done

# If errors were found, block the commit
if [[ $ERRORS -ne 0 ]]; then
  echo "❌ Spectral linting failed. Fix issues before committing."
  exit 1
fi

echo "✅ Spectral lint passed! Proceeding with commit."
exit 0

