# Commands for the Spectral Workshop

## Simple Example Using Built-in Rules

spectral lint petstore.oas.yaml

cat ruleset-builtin.yaml

spectral lint petstore.oas.yaml --ruleset ruleset-builtin.yaml --verbose


## Tweaking Rules

cat ruleset-tweaking-rules.yaml

spectral lint petstore.oas.yaml --ruleset ruleset-tweaking-rules.yaml --verbose


## Custom Rules

spectral lint petstore.oas.yaml --ruleset ruleset-info-contact.yaml --verbose


## Custom Functions

spectral lint petstore-content-on-204.oas.yaml --ruleset ruleset-no-content-on-204.yaml --verbose

spectral lint petstore-content-on-204.oas.yaml --ruleset ruleset-no-content-on-204-function.yaml --verbose


## Git Hooks

vi petstore.oas.yaml

git add petstore.oas.yaml

git diff --cached

git commit -m "testing hook"

rm .git/hooks/pre-commit


## GitHub Actions

GitHub app: Create and publish new branch

vi petstore.oas.yaml

GitHub app: Commit file and create pull request

GitHub web: Inspect progress on the PR's page
