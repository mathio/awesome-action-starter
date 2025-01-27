# Hello World TypeScript Action

A cross-platform TypeScript action that can be run on GitHub Actions, GitLab CI, or Bitbucket Pipelines.

## Usage

### GitHub Actions

```yaml
name: Run Hello World
on: [push]

jobs:
  hello:
    runs-on: ubuntu-latest
    steps:
      - uses: mathio/hello-world-action@main
```

### GitLab CI

```yaml
hello:
  image: ghcr.io/mathio/hello-world-action:latest
  script:
    - echo "Done"
  rules:
    - if: $CI_PIPELINE_SOURCE == "push" && $CI_COMMIT_BRANCH == "main"
```

### Bitbucket Pipelines

```yaml
pipelines:
  branches:
    main:
      - step:
          image: ghcr.io/mathio/hello-world-action:latest
          script:
            - echo "Done"
```

## Development

1. Install pnpm (if not already installed):

   ```bash
   npm install -g pnpm
   ```

2. Install dependencies:

   ```bash
   pnpm install
   ```

3. Build the TypeScript code:

   ```bash
   pnpm build
   ```

4. Run locally:
   ```bash
   node build/index.js
   ```
