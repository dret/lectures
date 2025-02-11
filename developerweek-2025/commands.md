# Commands for the Spectral Workshop

spectral lint petstore.oas.yaml

cat ruleset-builtin.yaml

spectral lint petstore.oas.yaml --ruleset ruleset-builtin.yaml --verbose

cat ruleset-tweaking-rules.yaml

spectral lint petstore.oas.yaml --ruleset ruleset-tweaking-rules.yaml --verbose

spectral lint petstore.oas.yaml --ruleset ruleset-info-contact.yaml --verbose

vi petstore.oas.yaml

git add petstore.oas.yaml

git diff --cached

git commit -m "testing hook"

rm .git/hooks/pre-commit

GitHub app: Create and publish new branch

vi petstore.oas.yaml

GitHub app: Commit file and create pull request

GitHub web: Inspect progress on the PR's page
